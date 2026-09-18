	.file	"f_string.c"
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
	.string	"0"
.LC1:
	.string	"\\\n"
	.text
	.globl	i2a_ASN1_STRING
	.type	i2a_ASN1_STRING, @function
i2a_ASN1_STRING:
.LFB160:
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
	movl	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L17
.L6:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L8
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L18
	movl	$1, -8(%rbp)
	jmp	.L11
.L8:
	movl	$0, -4(%rbp)
	jmp	.L12
.L16:
	cmpl	$0, -4(%rbp)
	je	.L13
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-368140053, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$35, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	testl	%edx, %edx
	jne	.L13
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	jne	.L19
	addl	$2, -8(%rbp)
.L13:
	movq	h.1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	andl	$15, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movq	h.1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	leaq	-10(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	jne	.L20
	addl	$2, -8(%rbp)
	addl	$1, -4(%rbp)
.L12:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L16
.L11:
	movl	-8(%rbp), %eax
	jmp	.L17
.L18:
	nop
	jmp	.L10
.L19:
	nop
	jmp	.L10
.L20:
	nop
.L10:
	movl	$-1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	i2a_ASN1_STRING, .-i2a_ASN1_STRING
	.section	.rodata
.LC2:
	.string	"../crypto/asn1/f_string.c"
	.text
	.globl	a2i_ASN1_STRING
	.type	a2i_ASN1_STRING, @function
a2i_ASN1_STRING:
.LFB161:
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
	movl	%ecx, -108(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -20(%rbp)
.L46:
	cmpl	$0, -20(%rbp)
	jg	.L22
	cmpl	$0, -44(%rbp)
	je	.L47
	jmp	.L24
.L22:
	movl	$0, -44(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L26
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L26:
	cmpl	$0, -4(%rbp)
	je	.L48
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L28
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L28:
	cmpl	$0, -4(%rbp)
	je	.L49
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L30
.L33:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L31
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L32
.L31:
	subl	$1, -8(%rbp)
.L30:
	cmpl	$0, -8(%rbp)
	jg	.L33
.L32:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$1, -4(%rbp)
	jle	.L50
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -12(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$95, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -40(%rbp)
	jge	.L37
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$100, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L38
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$102, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L36
.L38:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
.L37:
	movl	$0, -8(%rbp)
	jmp	.L39
.L43:
	movl	$0, -16(%rbp)
	jmp	.L40
.L42:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L36
.L41:
	movl	-36(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-36(%rbp), %ecx
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	sall	$4, %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-36(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -16(%rbp)
.L40:
	cmpl	$1, -16(%rbp)
	jle	.L42
	addl	$1, -8(%rbp)
	addl	$2, -12(%rbp)
.L39:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L43
	movl	-4(%rbp), %eax
	addl	%eax, -36(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L51
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -20(%rbp)
	jmp	.L46
.L51:
	nop
.L24:
	movq	-96(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L36
.L47:
	nop
	jmp	.L25
.L48:
	nop
	jmp	.L25
.L49:
	nop
	jmp	.L25
.L50:
	nop
.L25:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$132, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	a2i_ASN1_STRING, .-a2i_ASN1_STRING
	.section	.rodata
.LC3:
	.string	"0123456789ABCDEF"
	.section	.data.rel.local,"aw"
	.align 8
	.type	h.1, @object
	.size	h.1, 8
h.1:
	.quad	.LC3
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"a2i_ASN1_STRING"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

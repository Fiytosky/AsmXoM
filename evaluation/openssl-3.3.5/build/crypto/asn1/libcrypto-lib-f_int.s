	.file	"f_int.c"
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
	.string	"-"
.LC1:
	.string	"00"
.LC2:
	.string	"\\\n"
	.text
	.globl	i2a_ASN1_INTEGER
	.type	i2a_ASN1_INTEGER, @function
i2a_ASN1_INTEGER:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L19
.L6:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L8
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L20
	movl	$1, -8(%rbp)
.L8:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L11
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	jne	.L21
	addl	$2, -8(%rbp)
	jmp	.L13
.L11:
	movl	$0, -4(%rbp)
	jmp	.L14
.L18:
	cmpl	$0, -4(%rbp)
	je	.L15
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
	jne	.L15
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	jne	.L22
	addl	$2, -8(%rbp)
.L15:
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
	jne	.L23
	addl	$2, -8(%rbp)
	addl	$1, -4(%rbp)
.L14:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L18
.L13:
	movl	-8(%rbp), %eax
	jmp	.L19
.L20:
	nop
	jmp	.L10
.L21:
	nop
	jmp	.L10
.L22:
	nop
	jmp	.L10
.L23:
	nop
.L10:
	movl	$-1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	i2a_ASN1_INTEGER, .-i2a_ASN1_INTEGER
	.section	.rodata
.LC3:
	.string	"../crypto/asn1/f_int.c"
	.text
	.globl	a2i_ASN1_INTEGER
	.type	a2i_ASN1_INTEGER, @function
a2i_ASN1_INTEGER:
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
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-96(%rbp), %rax
	movl	$2, 4(%rax)
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -20(%rbp)
.L49:
	cmpl	$0, -20(%rbp)
	jle	.L50
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L27
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L27:
	cmpl	$0, -4(%rbp)
	je	.L51
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L29
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L29:
	cmpl	$0, -4(%rbp)
	je	.L52
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L31
.L34:
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
	jne	.L32
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L33
.L32:
	addl	$1, -8(%rbp)
.L31:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L34
.L33:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$1, -4(%rbp)
	jle	.L53
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L36
	movl	$0, -52(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L36
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L36
	addq	$2, -40(%rbp)
	subl	$2, -4(%rbp)
.L36:
	movl	$0, -12(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L38
.L37:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -48(%rbp)
	jge	.L39
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$109, %r8d
	movq	%rax, %rdi
	call	CRYPTO_clear_realloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L40
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L38
.L40:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
.L39:
	movl	$0, -8(%rbp)
	jmp	.L41
.L45:
	movl	$0, -16(%rbp)
	jmp	.L42
.L44:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L26
.L43:
	movl	-44(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %ecx
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	sall	$4, %edx
	movb	%dl, (%rax)
	movl	-44(%rbp), %edx
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
	movl	-44(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -16(%rbp)
.L42:
	cmpl	$1, -16(%rbp)
	jle	.L44
	addl	$1, -8(%rbp)
	addl	$2, -12(%rbp)
.L41:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L45
	movl	-4(%rbp), %eax
	addl	%eax, -44(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L54
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -20(%rbp)
	jmp	.L49
.L54:
	nop
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L38
.L50:
	nop
	jmp	.L26
.L51:
	nop
	jmp	.L26
.L52:
	nop
	jmp	.L26
.L53:
	nop
.L26:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$139, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	a2i_ASN1_INTEGER, .-a2i_ASN1_INTEGER
	.globl	i2a_ASN1_ENUMERATED
	.type	i2a_ASN1_ENUMERATED, @function
i2a_ASN1_ENUMERATED:
.LFB162:
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
	call	i2a_ASN1_INTEGER@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	i2a_ASN1_ENUMERATED, .-i2a_ASN1_ENUMERATED
	.globl	a2i_ASN1_ENUMERATED
	.type	a2i_ASN1_ENUMERATED, @function
a2i_ASN1_ENUMERATED:
.LFB163:
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
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	a2i_ASN1_INTEGER@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L58
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
.L58:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	a2i_ASN1_ENUMERATED, .-a2i_ASN1_ENUMERATED
	.section	.rodata
.LC4:
	.string	"0123456789ABCDEF"
	.section	.data.rel.local,"aw"
	.align 8
	.type	h.1, @object
	.size	h.1, 8
h.1:
	.quad	.LC4
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"a2i_ASN1_INTEGER"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

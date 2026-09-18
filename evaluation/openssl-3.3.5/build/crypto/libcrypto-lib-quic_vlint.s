	.file	"quic_vlint.c"
	.text
	.type	ossl_quic_vlint_encode_len, @function
ossl_quic_vlint_encode_len:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$63, -8(%rbp)
	ja	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	cmpq	$16383, -8(%rbp)
	ja	.L4
	movl	$2, %eax
	jmp	.L3
.L4:
	cmpq	$1073741823, -8(%rbp)
	ja	.L5
	movl	$4, %eax
	jmp	.L3
.L5:
	movabsq	$4611686018427387903, %rax
	cmpq	-8(%rbp), %rax
	jb	.L6
	movl	$8, %eax
	jmp	.L3
.L6:
	movl	$0, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ossl_quic_vlint_encode_len, .-ossl_quic_vlint_encode_len
	.type	ossl_quic_vlint_decode_len, @function
ossl_quic_vlint_decode_len:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ossl_quic_vlint_decode_len, .-ossl_quic_vlint_decode_len
	.globl	ossl_quic_vlint_encode_n
	.type	ossl_quic_vlint_encode_n, @function
ossl_quic_vlint_encode_n:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L10
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L14
.L10:
	cmpl	$2, -20(%rbp)
	jne	.L12
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	andl	$63, %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	jmp	.L14
.L12:
	cmpl	$4, -20(%rbp)
	jne	.L13
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	andl	$63, %eax
	orl	$-128, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	jmp	.L14
.L13:
	movq	-16(%rbp), %rax
	shrq	$56, %rax
	orl	$-64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
.L14:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ossl_quic_vlint_encode_n, .-ossl_quic_vlint_encode_n
	.globl	ossl_quic_vlint_encode
	.type	ossl_quic_vlint_encode, @function
ossl_quic_vlint_encode:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_n@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ossl_quic_vlint_encode, .-ossl_quic_vlint_encode
	.globl	ossl_quic_vlint_decode_unchecked
	.type	ossl_quic_vlint_decode_unchecked, @function
ossl_quic_vlint_decode_unchecked:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_vlint_decode_len
	movq	%rax, -16(%rbp)
	cmpq	$1, -16(%rbp)
	jne	.L17
	movzbl	-1(%rbp), %eax
	andl	$63, %eax
	jmp	.L18
.L17:
	cmpq	$2, -16(%rbp)
	jne	.L19
	movzbl	-1(%rbp), %eax
	salq	$8, %rax
	andl	$16128, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	jmp	.L18
.L19:
	cmpq	$4, -16(%rbp)
	jne	.L20
	movzbl	-1(%rbp), %eax
	salq	$24, %rax
	andl	$1056964608, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	jmp	.L18
.L20:
	movzbl	-1(%rbp), %eax
	salq	$56, %rax
	movq	%rax, %rdx
	movabsq	$4539628424389459968, %rax
	andq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ossl_quic_vlint_decode_unchecked, .-ossl_quic_vlint_decode_unchecked
	.globl	ossl_quic_vlint_decode
	.type	ossl_quic_vlint_decode, @function
ossl_quic_vlint_decode:
.LFB35:
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
	cmpq	$0, -32(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_vlint_decode_len
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L24
	movl	$0, %eax
	jmp	.L23
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_decode_unchecked@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ossl_quic_vlint_decode, .-ossl_quic_vlint_decode
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

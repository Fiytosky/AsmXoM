	.file	"bio_ndef.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/bio_ndef.c"
	.text
	.globl	BIO_new_NDEF
	.type	BIO_new_NDEF, @function
BIO_new_NDEF:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L2
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L3
.L2:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$202, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L3:
	leaq	.LC0(%rip), %rax
	movl	$70, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	call	BIO_f_asn1@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	cmpq	$0, -24(%rbp)
	je	.L13
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	ndef_prefix_free(%rip), %rdx
	leaq	ndef_prefix(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_asn1_set_prefix@PLT
	testl	%eax, %eax
	jle	.L15
	leaq	ndef_suffix_free(%rip), %rdx
	leaq	ndef_suffix(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_asn1_set_suffix@PLT
	testl	%eax, %eax
	jle	.L15
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$153, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L15
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %r8
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	*%r8
	testl	%eax, %eax
	jg	.L11
	movq	$0, -8(%rbp)
	jmp	.L7
.L11:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	jmp	.L12
.L13:
	nop
	jmp	.L7
.L14:
	nop
	jmp	.L7
.L15:
	nop
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	BIO_new_NDEF, .-BIO_new_NDEF
	.type	ndef_prefix, @function
ndef_prefix:
.LFB123:
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
	jne	.L17
	movl	$0, %eax
	jmp	.L22
.L17:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_ndef_i2d@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L19
	movl	$0, %eax
	jmp	.L22
.L19:
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$0, %eax
	jmp	.L22
.L20:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ndef_i2d@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	ndef_prefix, .-ndef_prefix
	.type	ndef_prefix_free, @function
ndef_prefix_free:
.LFB124:
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
	cmpq	$0, -48(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$171, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	ndef_prefix_free, .-ndef_prefix_free
	.type	ndef_suffix_free, @function
ndef_suffix_free:
.LFB125:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ndef_prefix_free
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$185, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	ndef_suffix_free, .-ndef_suffix_free
	.type	ndef_suffix, @function
ndef_suffix:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L37
.L31:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movl	$11, %edi
	call	*%r8
	testl	%eax, %eax
	jg	.L33
	movl	$0, %eax
	jmp	.L37
.L33:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_ndef_i2d@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L34
	movl	$0, %eax
	jmp	.L37
.L34:
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$0, %eax
	jmp	.L37
.L35:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ndef_i2d@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rcx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	ndef_suffix, .-ndef_suffix
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"BIO_new_NDEF"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

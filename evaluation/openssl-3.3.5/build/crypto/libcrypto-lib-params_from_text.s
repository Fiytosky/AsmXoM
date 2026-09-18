	.file	"params_from_text.c"
	.text
	.section	.rodata
.LC0:
	.string	"hex"
.LC1:
	.string	"../crypto/params_from_text.c"
	.text
	.type	prepare_from_text, @function
prepare_from_text:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L2
	addq	$3, -48(%rbp)
	movl	$1, %edx
	jmp	.L3
.L2:
	movl	$0, %edx
.L3:
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, 32(%rbp)
	je	.L4
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	cmpq	$0, -24(%rbp)
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L7
	cmpl	$5, %eax
	ja	.L8
	cmpl	$2, %eax
	ja	.L9
	testl	%eax, %eax
	jne	.L10
	jmp	.L8
.L9:
	cmpl	$4, %eax
	je	.L11
	jmp	.L8
.L10:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L12
	movq	-56(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	%eax, -12(%rbp)
	jmp	.L13
.L12:
	movq	-56(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	movl	%eax, -12(%rbp)
.L13:
	cmpl	$0, -12(%rbp)
	je	.L14
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L6
.L15:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L16
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L16
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L6
.L16:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L17
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L17
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L6
.L17:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L18
	movq	-8(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L18
	addq	$8, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	salq	$3, %rax
	cmpq	-8(%rbp), %rax
	jnb	.L20
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L6
.L20:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L25
.L11:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L6
.L21:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L8
.L7:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L22
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L23
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L6
.L23:
	movq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L8
.L22:
	movq	16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L8
.L25:
	nop
.L8:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	prepare_from_text, .-prepare_from_text
	.type	construct_from_text, @function
construct_from_text:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	cmpq	$0, 16(%rbp)
	je	.L29
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L30
	cmpl	$5, %eax
	ja	.L29
	cmpl	$2, %eax
	ja	.L31
	testl	%eax, %eax
	jne	.L32
	jmp	.L29
.L31:
	cmpl	$4, %eax
	je	.L33
	jmp	.L29
.L32:
	movq	16(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L40
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L40
	movq	16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L35:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	jne	.L36
	jmp	.L40
.L33:
	movq	16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	subq	$1, 16(%rbp)
	jmp	.L29
.L30:
	cmpl	$0, -84(%rbp)
	je	.L37
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	16(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$58, %r8d
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf_ex@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L28
.L37:
	movq	16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L41
.L40:
	nop
	jmp	.L29
.L41:
	nop
.L29:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	$-1, 32(%rax)
	movl	$1, %eax
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	construct_from_text, .-construct_from_text
	.globl	OSSL_PARAM_allocate_from_text
	.type	OSSL_PARAM_allocate_from_text, @function
OSSL_PARAM_allocate_from_text:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L43
	cmpq	$0, -64(%rbp)
	jne	.L44
.L43:
	movl	$0, %eax
	jmp	.L52
.L44:
	leaq	-28(%rbp), %r9
	leaq	-24(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	leaq	-40(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	prepare_from_text
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L48
	movq	-40(%rbp), %rax
	jmp	.L49
.L48:
	movl	$1, %eax
.L49:
	leaq	.LC1(%rip), %rcx
	movl	$219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %r10d
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %r9
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movl	%r10d, %r8d
	movq	%rax, %rdi
	call	construct_from_text
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L51
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$226, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L51:
	movl	-12(%rbp), %eax
	jmp	.L52
.L53:
	nop
	jmp	.L47
.L54:
	nop
.L47:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	OSSL_PARAM_allocate_from_text, .-OSSL_PARAM_allocate_from_text
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"prepare_from_text"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

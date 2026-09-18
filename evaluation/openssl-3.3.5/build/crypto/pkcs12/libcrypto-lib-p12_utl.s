	.file	"p12_utl.c"
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
	.string	"../crypto/pkcs12/p12_utl.c"
	.text
	.globl	OPENSSL_asc2uni
	.type	OPENSSL_asc2uni, @function
OPENSSL_asc2uni:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -28(%rbp)
.L6:
	cmpl	$0, -28(%rbp)
	jns	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$2, -4(%rbp)
.L10:
	movl	-8(%rbp), %eax
	subl	$2, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L11
	movl	-8(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L12
	movq	-48(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L12:
	cmpq	$0, -40(%rbp)
	je	.L13
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L13:
	movq	-16(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	OPENSSL_asc2uni, .-OPENSSL_asc2uni
	.globl	OPENSSL_uni2asc
	.type	OPENSSL_uni2asc, @function
OPENSSL_uni2asc:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	cmpl	$0, -28(%rbp)
	jns	.L17
	movl	$0, %eax
	jmp	.L16
.L17:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L18
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L19
.L18:
	addl	$1, -4(%rbp)
.L19:
	addq	$1, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L16
.L20:
	movl	$0, -8(%rbp)
	jmp	.L21
.L22:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-8(%rbp), %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$2, -8(%rbp)
.L21:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L22
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	OPENSSL_uni2asc, .-OPENSSL_uni2asc
	.globl	OPENSSL_utf82uni
	.type	OPENSSL_utf82uni, @function
OPENSSL_utf82uni:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	.L24
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -60(%rbp)
.L24:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L25
.L31:
	movl	-60(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rdx, %rcx
	leaq	-48(%rbp), %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	UTF8_getc@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L26
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_asc2uni@PLT
	jmp	.L39
.L26:
	movq	-48(%rbp), %rax
	cmpq	$1114111, %rax
	jbe	.L28
	movl	$0, %eax
	jmp	.L39
.L28:
	movq	-48(%rbp), %rax
	cmpq	$65535, %rax
	jbe	.L29
	addl	$4, -4(%rbp)
	jmp	.L30
.L29:
	addl	$2, -4(%rbp)
.L30:
	movl	-28(%rbp), %eax
	addl	%eax, -8(%rbp)
.L25:
	movl	-8(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L31
	addl	$2, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L39
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L33
.L36:
	movl	-60(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rdx, %rcx
	leaq	-48(%rbp), %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	UTF8_getc@PLT
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$65535, %rax
	jbe	.L34
	movq	-48(%rbp), %rax
	subq	$65536, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$10, %rax
	addl	$55296, %eax
	movl	%eax, -32(%rbp)
	movq	-48(%rbp), %rax
	andl	$1023, %eax
	addl	$56320, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-32(%rbp), %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-36(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L35
.L34:
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L35:
	movl	-28(%rbp), %eax
	addl	%eax, -8(%rbp)
.L33:
	movl	-8(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L36
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	cmpq	$0, -80(%rbp)
	je	.L37
	movq	-80(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L37:
	cmpq	$0, -72(%rbp)
	je	.L38
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L38:
	movq	-24(%rbp), %rax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	OPENSSL_utf82uni, .-OPENSSL_utf82uni
	.type	bmp_to_utf8, @function
bmp_to_utf8:
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
	cmpl	$0, -36(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	cmpl	$1, -36(%rbp)
	jg	.L43
	movl	$-1, %eax
	jmp	.L42
.L43:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$55295, -8(%rbp)
	jbe	.L44
	cmpq	$57343, -8(%rbp)
	ja	.L44
	cmpl	$3, -36(%rbp)
	jg	.L45
	movl	$-1, %eax
	jmp	.L42
.L45:
	subq	$55296, -8(%rbp)
	salq	$10, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$56319, -12(%rbp)
	jbe	.L46
	cmpl	$57343, -12(%rbp)
	jbe	.L47
.L46:
	movl	$-1, %eax
	jmp	.L42
.L47:
	movl	-12(%rbp), %eax
	subl	$56320, %eax
	movl	%eax, %eax
	orq	%rax, -8(%rbp)
	addq	$65536, -8(%rbp)
.L44:
	movl	-36(%rbp), %eax
	movl	$4, %edx
	cmpl	%edx, %eax
	movl	%edx, %ecx
	cmovle	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	UTF8_putc@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	bmp_to_utf8, .-bmp_to_utf8
	.globl	OPENSSL_uni2utf8
	.type	OPENSSL_uni2utf8, @function
OPENSSL_uni2utf8:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L51
.L55:
	movl	-44(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	bmp_to_utf8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L52
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_uni2asc@PLT
	jmp	.L50
.L52:
	cmpl	$4, -20(%rbp)
	jne	.L53
	addl	$4, -8(%rbp)
	jmp	.L54
.L53:
	addl	$2, -8(%rbp)
.L54:
	movl	-20(%rbp), %eax
	addl	%eax, -4(%rbp)
.L51:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L55
	cmpl	$0, -44(%rbp)
	je	.L56
	movl	-44(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L56
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L57
.L56:
	addl	$1, -4(%rbp)
.L57:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$203, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L50
.L58:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L59
.L62:
	movl	-44(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	bmp_to_utf8
	movl	%eax, -20(%rbp)
	cmpl	$4, -20(%rbp)
	jne	.L60
	addl	$4, -8(%rbp)
	jmp	.L61
.L60:
	addl	$2, -8(%rbp)
.L61:
	movl	-20(%rbp), %eax
	addl	%eax, -4(%rbp)
.L59:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L62
	cmpl	$0, -44(%rbp)
	je	.L63
	movl	-44(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L63
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L64
.L63:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L64:
	movq	-16(%rbp), %rax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	OPENSSL_uni2utf8, .-OPENSSL_uni2utf8
	.globl	i2d_PKCS12_bio
	.type	i2d_PKCS12_bio, @function
i2d_PKCS12_bio:
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
	call	PKCS12_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	i2d_PKCS12_bio, .-i2d_PKCS12_bio
	.globl	i2d_PKCS12_fp
	.type	i2d_PKCS12_fp, @function
i2d_PKCS12_fp:
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
	call	PKCS12_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	i2d_PKCS12_fp, .-i2d_PKCS12_fp
	.globl	d2i_PKCS12_bio
	.type	d2i_PKCS12_bio, @function
d2i_PKCS12_bio:
.LFB522:
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
	movq	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L70
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pkcs12_get0_pkcs7ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, -16(%rbp)
.L70:
	call	PKCS12_it@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_d2i_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	d2i_PKCS12_bio, .-d2i_PKCS12_bio
	.globl	d2i_PKCS12_fp
	.type	d2i_PKCS12_fp, @function
d2i_PKCS12_fp:
.LFB523:
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
	movq	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L73
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pkcs12_get0_pkcs7ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L73
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, -16(%rbp)
.L73:
	call	PKCS12_it@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_d2i_fp_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	d2i_PKCS12_fp, .-d2i_PKCS12_fp
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

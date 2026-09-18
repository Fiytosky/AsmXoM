	.file	"punycode.c"
	.text
	.section	.rodata
	.align 4
	.type	base, @object
	.size	base, 4
base:
	.long	36
	.align 4
	.type	tmin, @object
	.size	tmin, 4
tmin:
	.long	1
	.align 4
	.type	tmax, @object
	.size	tmax, 4
tmax:
	.long	26
	.align 4
	.type	skew, @object
	.size	skew, 4
skew:
	.long	38
	.align 4
	.type	damp, @object
	.size	damp, 4
damp:
	.long	700
	.align 4
	.type	initial_bias, @object
	.size	initial_bias, 4
initial_bias:
	.long	72
	.align 4
	.type	initial_n, @object
	.size	initial_n, 4
initial_n:
	.long	128
	.align 4
	.type	maxint, @object
	.size	maxint, 4
maxint:
	.long	-1
	.type	delimiter, @object
	.size	delimiter, 1
delimiter:
	.byte	45
	.text
	.type	adapt, @function
adapt:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L2
	movl	$700, %esi
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -20(%rbp)
	jmp	.L3
.L2:
	shrl	-20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	addl	%eax, -20(%rbp)
	jmp	.L4
.L5:
	movl	$36, %edx
	movl	$1, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	%edi
	movl	%eax, -20(%rbp)
	movl	$36, %eax
	addl	%eax, -4(%rbp)
.L4:
	movl	$36, %eax
	movl	$1, %edx
	subl	%edx, %eax
	movl	$26, %edx
	imull	%edx, %eax
	shrl	%eax
	cmpl	-20(%rbp), %eax
	jb	.L5
	movl	$36, %eax
	movl	$1, %edx
	subl	%edx, %eax
	addl	$1, %eax
	imull	-20(%rbp), %eax
	movl	$38, %ecx
	movl	-20(%rbp), %edx
	addl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	adapt, .-adapt
	.type	is_basic, @function
is_basic:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$127, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	is_basic, .-is_basic
	.type	digit_decoded, @function
digit_decoded:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$64, -4(%rbp)
	jbe	.L10
	cmpb	$90, -4(%rbp)
	ja	.L10
	movzbl	-4(%rbp), %eax
	subl	$65, %eax
	jmp	.L11
.L10:
	cmpb	$96, -4(%rbp)
	jbe	.L12
	cmpb	$122, -4(%rbp)
	ja	.L12
	movzbl	-4(%rbp), %eax
	subl	$97, %eax
	jmp	.L11
.L12:
	cmpb	$47, -4(%rbp)
	jbe	.L13
	cmpb	$57, -4(%rbp)
	ja	.L13
	movzbl	-4(%rbp), %eax
	subl	$22, %eax
	jmp	.L11
.L13:
	movl	$-1, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	digit_decoded, .-digit_decoded
	.globl	ossl_punycode_decode
	.type	ossl_punycode_decode, @function
ossl_punycode_decode:
.LFB75:
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
	movl	$128, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$72, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L15
.L17:
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	$45, %edx
	cmpb	%dl, %al
	jne	.L16
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.L16:
	addl	$1, -40(%rbp)
.L15:
	movl	-40(%rbp), %eax
	cmpq	-80(%rbp), %rax
	jb	.L17
	cmpl	$0, -36(%rbp)
	je	.L18
	movl	-36(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	jnb	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movl	$0, -40(%rbp)
	jmp	.L21
.L23:
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_basic
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L20
.L22:
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	-40(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movsbl	%al, %eax
	movl	%eax, (%rdx)
	addq	$1, -32(%rbp)
	addl	$1, -40(%rbp)
.L21:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L23
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
.L18:
	movq	-24(%rbp), %rax
	movl	%eax, -40(%rbp)
	jmp	.L24
.L37:
	movl	-8(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$1, -44(%rbp)
	movl	$36, -48(%rbp)
.L34:
	movl	-40(%rbp), %eax
	cmpq	-80(%rbp), %rax
	jb	.L25
	movl	$0, %eax
	jmp	.L20
.L25:
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	digit_decoded
	movl	%eax, -64(%rbp)
	addl	$1, -40(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L26
	movl	$0, %eax
	jmp	.L20
.L26:
	movl	$-1, %eax
	subl	-8(%rbp), %eax
	movl	$0, %edx
	divl	-44(%rbp)
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	cmpl	%eax, %edx
	jnb	.L27
	movl	$0, %eax
	jmp	.L20
.L27:
	movl	-64(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	%eax, -8(%rbp)
	movl	-48(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L28
	movl	$26, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -48(%rbp)
	jnb	.L29
	movl	-48(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L30
.L29:
	movl	$26, -52(%rbp)
	jmp	.L30
.L28:
	movl	$1, -52(%rbp)
.L30:
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jb	.L39
	movl	$-1, %eax
	movl	$36, %edx
	movl	%edx, %esi
	subl	-52(%rbp), %esi
	movl	$0, %edx
	divl	%esi
	cmpl	-44(%rbp), %eax
	jnb	.L33
	movl	$0, %eax
	jmp	.L20
.L33:
	movl	$36, %eax
	subl	-52(%rbp), %eax
	movl	-44(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	$36, %eax
	addl	%eax, -48(%rbp)
	jmp	.L34
.L39:
	nop
	cmpl	$0, -60(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	adapt
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rdi
	movl	$0, %edx
	divq	%rdi
	movl	$-1, %edx
	subl	-4(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rax, %rdx
	jnb	.L35
	movl	$0, %eax
	jmp	.L20
.L35:
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movl	$0, %edx
	divq	%rsi
	addl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rdi
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movl	%eax, -8(%rbp)
	movl	-56(%rbp), %eax
	cmpq	%rax, -32(%rbp)
	jb	.L36
	movl	$0, %eax
	jmp	.L20
.L36:
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	salq	$2, %rdx
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movl	-8(%rbp), %eax
	addq	$1, %rax
	leaq	0(,%rax,4), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
	addq	$1, -32(%rbp)
.L24:
	movl	-40(%rbp), %eax
	cmpq	-80(%rbp), %rax
	jb	.L37
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	ossl_punycode_decode, .-ossl_punycode_decode
	.type	codepoint2utf8, @function
codepoint2utf8:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$127, -16(%rbp)
	ja	.L41
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movl	$1, %eax
	jmp	.L42
.L41:
	cmpq	$2047, -16(%rbp)
	ja	.L43
	movq	-16(%rbp), %rax
	shrq	$6, %rax
	andl	$31, %eax
	orl	$-64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	movl	$2, %eax
	jmp	.L42
.L43:
	cmpq	$65535, -16(%rbp)
	ja	.L44
	movq	-16(%rbp), %rax
	shrq	$12, %rax
	andl	$15, %eax
	orl	$-32, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$6, %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movl	$3, %eax
	jmp	.L42
.L44:
	cmpq	$1114111, -16(%rbp)
	ja	.L45
	movq	-16(%rbp), %rax
	shrq	$18, %rax
	andl	$7, %eax
	orl	$-16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$12, %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$6, %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movb	$0, (%rax)
	movl	$4, %eax
	jmp	.L42
.L45:
	movq	-8(%rbp), %rax
	movb	$-17, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	$-65, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	$-67, (%rax)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movl	$0, %eax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	codepoint2utf8, .-codepoint2utf8
	.section	.rodata
.LC0:
	.string	"xn--"
	.text
	.globl	ossl_a2ulabel
	.type	ossl_a2ulabel, @function
ossl_a2ulabel:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2208, %rsp
	movq	%rdi, -2184(%rbp)
	movq	%rsi, -2192(%rbp)
	movq	%rdx, -2200(%rbp)
	movq	-2184(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	cmpq	$0, -2192(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L47
	movl	$-1, %eax
	jmp	.L64
.L47:
	movq	-2200(%rbp), %rdx
	movq	-2192(%rbp), %rsi
	leaq	-2160(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$-1, %eax
	jmp	.L64
.L49:
	movq	-8(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L50
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
.L51:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L52
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-2160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, -12(%rbp)
	jmp	.L53
.L52:
	movl	$512, -2164(%rbp)
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdi
	leaq	-2164(%rbp), %rdx
	leaq	-2096(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ossl_punycode_decode@PLT
	testl	%eax, %eax
	jg	.L54
	movl	$-1, -12(%rbp)
	jmp	.L60
.L54:
	movl	$0, -16(%rbp)
	jmp	.L56
.L59:
	movl	-16(%rbp), %eax
	movl	-2096(%rbp,%rax,4), %eax
	movl	%eax, %edx
	leaq	-2170(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	codepoint2utf8
	cltq
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L57
	movl	$-1, -12(%rbp)
	jmp	.L60
.L57:
	movq	-40(%rbp), %rdx
	leaq	-2170(%rbp), %rcx
	leaq	-2160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, -12(%rbp)
.L58:
	addl	$1, -16(%rbp)
.L56:
	movl	-2164(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jb	.L59
.L53:
	cmpq	$0, -32(%rbp)
	je	.L66
	leaq	-2160(%rbp), %rax
	movl	$1, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, -12(%rbp)
.L63:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L49
.L66:
	nop
	leaq	-2160(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, -12(%rbp)
	jmp	.L60
.L67:
	nop
.L60:
	leaq	-2160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	-12(%rbp), %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	ossl_a2ulabel, .-ossl_a2ulabel
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"a_strex.c"
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
	.align 32
	.type	char_type, @object
	.size	char_type, 256
char_type:
	.value	1026
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	120
	.value	0
	.value	1
	.value	40
	.value	0
	.value	0
	.value	0
	.value	16
	.value	1040
	.value	1040
	.value	-31744
	.value	25
	.value	25
	.value	16400
	.value	8208
	.value	16
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	16
	.value	9
	.value	9
	.value	16
	.value	9
	.value	16
	.value	0
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	0
	.value	1025
	.value	0
	.value	0
	.value	0
	.value	0
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	4112
	.value	0
	.value	0
	.value	0
	.value	0
	.value	2
	.text
	.type	send_bio_chars, @function
send_bio_chars:
.LFB534:
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
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -20(%rbp)
	je	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	send_bio_chars, .-send_bio_chars
	.type	send_fp_chars, @function
send_fp_chars:
.LFB535:
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
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	-20(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rdx, %rax
	je	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	send_fp_chars, .-send_fp_chars
	.section	.rodata
.LC0:
	.string	"\\W%08lX"
.LC1:
	.string	"\\U%04lX"
.LC2:
	.string	"\\"
.LC3:
	.string	"\\%02X"
.LC4:
	.string	"\\\\"
	.text
	.type	do_esc_char, @function
do_esc_char:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movw	%ax, -44(%rbp)
	movl	$4294967295, %eax
	cmpq	-40(%rbp), %rax
	jnb	.L14
	movl	$-1, %eax
	jmp	.L33
.L14:
	cmpq	$65535, -40(%rbp)
	jbe	.L16
	movq	-40(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L17
	movl	$-1, %eax
	jmp	.L33
.L17:
	movl	$10, %eax
	jmp	.L33
.L16:
	cmpq	$255, -40(%rbp)
	jbe	.L18
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L19
	movl	$-1, %eax
	jmp	.L33
.L19:
	movl	$6, %eax
	jmp	.L33
.L18:
	movq	-40(%rbp), %rax
	movb	%al, -3(%rbp)
	movzbl	-3(%rbp), %eax
	testb	%al, %al
	jns	.L20
	movzwl	-44(%rbp), %eax
	andl	$4, %eax
	movw	%ax, -2(%rbp)
	jmp	.L21
.L20:
	movzbl	-3(%rbp), %eax
	movzbl	%al, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	char_type(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	andw	-44(%rbp), %ax
	movw	%ax, -2(%rbp)
.L21:
	movzwl	-2(%rbp), %eax
	andl	$97, %eax
	testl	%eax, %eax
	je	.L22
	movzwl	-2(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L23
	cmpq	$0, -56(%rbp)
	je	.L24
	movq	-56(%rbp), %rax
	movb	$1, (%rax)
.L24:
	leaq	-3(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L25
	movl	$-1, %eax
	jmp	.L33
.L25:
	movl	$1, %eax
	jmp	.L33
.L23:
	leaq	.LC2(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L26
	movl	$-1, %eax
	jmp	.L33
.L26:
	leaq	-3(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L27
	movl	$-1, %eax
	jmp	.L33
.L27:
	movl	$2, %eax
	jmp	.L33
.L22:
	movzwl	-2(%rbp), %eax
	andl	$1030, %eax
	testl	%eax, %eax
	je	.L28
	movzbl	-3(%rbp), %eax
	movzbl	%al, %edx
	leaq	.LC3(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L29
	movl	$-1, %eax
	jmp	.L33
.L29:
	movl	$3, %eax
	jmp	.L33
.L28:
	movzbl	-3(%rbp), %eax
	cmpb	$92, %al
	jne	.L30
	movzwl	-44(%rbp), %eax
	andl	$1039, %eax
	testl	%eax, %eax
	je	.L30
	leaq	.LC4(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L31
	movl	$-1, %eax
	jmp	.L33
.L31:
	movl	$2, %eax
	jmp	.L33
.L30:
	leaq	-3(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L32
	movl	$-1, %eax
	jmp	.L33
.L32:
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	do_esc_char, .-do_esc_char
	.section	.rodata
.LC5:
	.string	"../crypto/asn1/a_strex.c"
	.text
	.type	do_buf, @function
do_buf:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	%ecx, %eax
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movw	%ax, -84(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	-80(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -36(%rbp)
	cmpl	$2, -36(%rbp)
	je	.L35
	cmpl	$4, -36(%rbp)
	jne	.L59
	movl	-76(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L60
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L58
.L35:
	movl	-76(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L61
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L58
.L59:
	nop
	jmp	.L41
.L60:
	nop
	jmp	.L41
.L61:
	nop
	jmp	.L41
.L57:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L42
	movzwl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L42
	movw	$32, -10(%rbp)
	jmp	.L43
.L42:
	movw	$0, -10(%rbp)
.L43:
	cmpl	$4, -36(%rbp)
	je	.L44
	cmpl	$4, -36(%rbp)
	jg	.L45
	cmpl	$2, -36(%rbp)
	je	.L46
	cmpl	$2, -36(%rbp)
	jg	.L45
	cmpl	$0, -36(%rbp)
	je	.L47
	cmpl	$1, -36(%rbp)
	je	.L48
	jmp	.L45
.L44:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L49
.L46:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -56(%rbp)
	jmp	.L49
.L47:
	leaq	-56(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	UTF8_getc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L50
	movl	$-1, %eax
	jmp	.L58
.L50:
	movl	-4(%rbp), %eax
	subl	%eax, -76(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	jmp	.L49
.L45:
	movl	$-1, %eax
	jmp	.L58
.L49:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L51
	movzwl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	movw	$64, -10(%rbp)
.L51:
	movl	-80(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L52
	movq	-56(%rbp), %rdx
	leaq	-62(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	UTF8_putc@PLT
	movl	%eax, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L53
.L55:
	movzwl	-84(%rbp), %eax
	orw	-10(%rbp), %ax
	movzwl	%ax, %esi
	movl	-4(%rbp), %eax
	cltq
	movzbl	-62(%rbp,%rax), %eax
	movzbl	%al, %eax
	movq	16(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_esc_char
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jns	.L54
	movl	$-1, %eax
	jmp	.L58
.L54:
	movl	-40(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L53:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L55
	jmp	.L41
.L52:
	movzwl	-84(%rbp), %eax
	orw	-10(%rbp), %ax
	movzwl	%ax, %esi
	movq	-56(%rbp), %rax
	movq	16(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_esc_char
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jns	.L56
	movl	$-1, %eax
	jmp	.L58
.L56:
	movl	-40(%rbp), %eax
	addl	%eax, -8(%rbp)
.L41:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L57
	movl	-8(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	do_buf, .-do_buf
	.type	do_hex_dump, @function
do_hex_dump:
.LFB538:
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
	movl	%ecx, -60(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L63
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L64
.L67:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	cltq
	leaq	hexdig.0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	cltq
	leaq	hexdig.0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -17(%rbp)
	leaq	-18(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %r8
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L65
	movl	$-1, %eax
	jmp	.L68
.L65:
	addq	$1, -8(%rbp)
.L64:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L67
.L63:
	movl	-60(%rbp), %eax
	addl	%eax, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	do_hex_dump, .-do_hex_dump
	.section	.rodata
.LC6:
	.string	"#"
	.text
	.type	do_dump, @function
do_dump:
.LFB539:
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
	leaq	.LC6(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L70
	movl	$-1, %eax
	jmp	.L77
.L70:
	movq	-72(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L72
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	do_hex_dump
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L73
	movl	$-1, %eax
	jmp	.L77
.L73:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	jmp	.L77
.L72:
	movq	-96(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L74
	movl	$-1, %eax
	jmp	.L77
.L74:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC5(%rip), %rcx
	movl	$286, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L75
	movl	$-1, %eax
	jmp	.L77
.L75:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	do_hex_dump
	movl	%eax, -20(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$291, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -20(%rbp)
	jns	.L76
	movl	$-1, %eax
	jmp	.L77
.L76:
	movl	-20(%rbp), %eax
	addl	$1, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	do_dump, .-do_dump
	.section	.rodata
	.align 16
	.type	tag2nbyte, @object
	.size	tag2nbyte, 31
tag2nbyte:
	.base64	"////////////////AP//////AQEB/wEBAf8B/wT/Ag=="
.LC7:
	.string	":"
.LC8:
	.string	"\""
	.text
	.type	do_print_ex, @function
do_print_ex:
.LFB540:
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
	movb	$0, -29(%rbp)
	movq	-56(%rbp), %rax
	andw	$1039, %ax
	movw	%ax, -10(%rbp)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L79
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_tag2str@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L80
	leaq	.LC7(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L81
.L80:
	movl	$-1, %eax
	jmp	.L100
.L81:
	addl	$1, -4(%rbp)
.L79:
	movq	-56(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L83
	movl	$-1, -8(%rbp)
	jmp	.L84
.L83:
	movq	-56(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L85
	movl	$1, -8(%rbp)
	jmp	.L84
.L85:
	cmpl	$0, -8(%rbp)
	jle	.L86
	cmpl	$30, -8(%rbp)
	jg	.L86
	movl	-8(%rbp), %eax
	cltq
	leaq	tag2nbyte(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	jmp	.L87
.L86:
	movl	$-1, -8(%rbp)
.L87:
	cmpl	$-1, -8(%rbp)
	jne	.L84
	movq	-56(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	jne	.L84
	movl	$1, -8(%rbp)
.L84:
	cmpl	$-1, -8(%rbp)
	jne	.L88
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	do_dump
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L89
	movl	$2147483647, %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L90
.L89:
	movl	$-1, %eax
	jmp	.L100
.L90:
	movl	-28(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	jmp	.L100
.L88:
	movq	-56(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L91
	cmpl	$0, -8(%rbp)
	jne	.L92
	movl	$1, -8(%rbp)
	jmp	.L91
.L92:
	orl	$8, -8(%rbp)
.L91:
	movzwl	-10(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %esi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %r8
	leaq	-29(%rbp), %rdi
	movl	-8(%rbp), %edx
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_buf
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L93
	movl	$2147483645, %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L94
.L93:
	movl	$-1, %eax
	jmp	.L100
.L94:
	movl	-28(%rbp), %eax
	addl	%eax, -4(%rbp)
	movzbl	-29(%rbp), %eax
	testb	%al, %al
	je	.L95
	addl	$2, -4(%rbp)
.L95:
	cmpq	$0, -48(%rbp)
	jne	.L96
	movl	-4(%rbp), %eax
	jmp	.L100
.L96:
	movzbl	-29(%rbp), %eax
	testb	%al, %al
	je	.L97
	leaq	.LC8(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L97
	movl	$-1, %eax
	jmp	.L100
.L97:
	movzwl	-10(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %esi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	-8(%rbp), %edx
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	do_buf
	addq	$16, %rsp
	testl	%eax, %eax
	jns	.L98
	movl	$-1, %eax
	jmp	.L100
.L98:
	movzbl	-29(%rbp), %eax
	testb	%al, %al
	je	.L99
	leaq	.LC8(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L99
	movl	$-1, %eax
	jmp	.L100
.L99:
	movl	-4(%rbp), %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	do_print_ex, .-do_print_ex
	.section	.rodata
.LC9:
	.string	" "
	.text
	.type	do_indent, @function
do_indent:
.LFB541:
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
	movl	$0, -4(%rbp)
	jmp	.L102
.L105:
	leaq	.LC9(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L104
.L103:
	addl	$1, -4(%rbp)
.L102:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L105
	movl	$1, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	do_indent, .-do_indent
	.section	.rodata
.LC10:
	.string	"\n"
.LC11:
	.string	" + "
.LC12:
	.string	","
.LC13:
	.string	"+"
.LC14:
	.string	", "
.LC15:
	.string	"; "
.LC16:
	.string	" = "
.LC17:
	.string	"="
.LC18:
	.string	""
	.text
	.type	do_name_ex, @function
do_name_ex:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movl	%ecx, -236(%rbp)
	movq	%r8, -248(%rbp)
	movl	$-1, -8(%rbp)
	cmpl	$0, -236(%rbp)
	jns	.L107
	movl	$0, -236(%rbp)
.L107:
	movl	-236(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-236(%rbp), %edx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_indent
	testl	%eax, %eax
	jne	.L108
	movl	$-1, %eax
	jmp	.L140
.L108:
	movq	-248(%rbp), %rax
	andl	$983040, %eax
	cmpq	$262144, %rax
	je	.L110
	cmpq	$262144, %rax
	ja	.L111
	cmpq	$196608, %rax
	je	.L112
	cmpq	$196608, %rax
	ja	.L111
	cmpq	$65536, %rax
	je	.L113
	cmpq	$131072, %rax
	je	.L114
	jmp	.L111
.L110:
	leaq	.LC10(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -68(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$3, -72(%rbp)
	jmp	.L115
.L113:
	leaq	.LC12(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -68(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -72(%rbp)
	movl	$0, -236(%rbp)
	jmp	.L115
.L114:
	leaq	.LC14(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$2, -68(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$3, -72(%rbp)
	movl	$0, -236(%rbp)
	jmp	.L115
.L112:
	leaq	.LC15(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$2, -68(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$3, -72(%rbp)
	movl	$0, -236(%rbp)
	jmp	.L115
.L111:
	movl	$-1, %eax
	jmp	.L140
.L115:
	movq	-248(%rbp), %rax
	andl	$8388608, %eax
	testq	%rax, %rax
	je	.L116
	leaq	.LC16(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$3, -76(%rbp)
	jmp	.L117
.L116:
	leaq	.LC17(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -76(%rbp)
.L117:
	movq	-248(%rbp), %rax
	andl	$6291456, %eax
	movl	%eax, -84(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	movl	%eax, -88(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L118
.L139:
	movq	-248(%rbp), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L119
	movl	-88(%rbp), %eax
	subl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-232(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -24(%rbp)
	jmp	.L120
.L119:
	movl	-4(%rbp), %edx
	movq	-232(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -24(%rbp)
.L120:
	cmpl	$-1, -8(%rbp)
	je	.L121
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_set@PLT
	cmpl	%eax, -8(%rbp)
	jne	.L122
	movl	-72(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L123
	movl	$-1, %eax
	jmp	.L140
.L123:
	movl	-72(%rbp), %eax
	addl	%eax, -36(%rbp)
	jmp	.L121
.L122:
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L124
	movl	$-1, %eax
	jmp	.L140
.L124:
	movl	-68(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	-236(%rbp), %edx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_indent
	testl	%eax, %eax
	jne	.L125
	movl	$-1, %eax
	jmp	.L140
.L125:
	movl	-236(%rbp), %eax
	addl	%eax, -36(%rbp)
.L121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_set@PLT
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_object@PLT
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -108(%rbp)
	cmpl	$6291456, -84(%rbp)
	je	.L126
	cmpl	$4194304, -84(%rbp)
	je	.L127
	cmpl	$0, -108(%rbp)
	jne	.L128
.L127:
	movq	-96(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$1, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	$0, -80(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L129
.L128:
	cmpl	$0, -84(%rbp)
	jne	.L130
	movl	$10, -80(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -32(%rbp)
	jmp	.L129
.L130:
	cmpl	$2097152, -84(%rbp)
	jne	.L131
	movl	$25, -80(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, -32(%rbp)
	jmp	.L129
.L131:
	movl	$0, -80(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -32(%rbp)
.L129:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L132
	movl	$-1, %eax
	jmp	.L140
.L132:
	movl	-112(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.L133
	movq	-248(%rbp), %rax
	andl	$33554432, %eax
	testq	%rax, %rax
	je	.L133
	movl	-80(%rbp), %eax
	subl	-112(%rbp), %eax
	movl	%eax, %edx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_indent
	testl	%eax, %eax
	jne	.L134
	movl	$-1, %eax
	jmp	.L140
.L134:
	movl	-80(%rbp), %eax
	subl	-112(%rbp), %eax
	addl	%eax, -36(%rbp)
.L133:
	movl	-76(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L135
	movl	$-1, %eax
	jmp	.L140
.L135:
	movl	-112(%rbp), %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
.L126:
	cmpl	$0, -108(%rbp)
	jne	.L136
	movq	-248(%rbp), %rax
	andl	$16777216, %eax
	testq	%rax, %rax
	je	.L136
	movl	$128, -12(%rbp)
	jmp	.L137
.L136:
	movl	$0, -12(%rbp)
.L137:
	movl	-12(%rbp), %eax
	cltq
	orq	-248(%rbp), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	do_print_ex
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jns	.L138
	movl	$-1, %eax
	jmp	.L140
.L138:
	movl	-116(%rbp), %eax
	addl	%eax, -36(%rbp)
	addl	$1, -4(%rbp)
.L118:
	movl	-4(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.L139
	movl	-36(%rbp), %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	do_name_ex, .-do_name_ex
	.globl	X509_NAME_print_ex
	.type	X509_NAME_print_ex, @function
X509_NAME_print_ex:
.LFB543:
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
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L142
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_print@PLT
	jmp	.L143
.L142:
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	send_bio_chars(%rip), %rdi
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	do_name_ex
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	X509_NAME_print_ex, .-X509_NAME_print_ex
	.globl	X509_NAME_print_ex_fp
	.type	X509_NAME_print_ex_fp, @function
X509_NAME_print_ex_fp:
.LFB544:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L145
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L146
	movl	$-1, %eax
	jmp	.L147
.L146:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	jmp	.L147
.L145:
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	send_fp_chars(%rip), %rdi
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	do_name_ex
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	X509_NAME_print_ex_fp, .-X509_NAME_print_ex_fp
	.globl	ASN1_STRING_print_ex
	.type	ASN1_STRING_print_ex, @function
ASN1_STRING_print_ex:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	send_bio_chars(%rip), %rdi
	movq	%rax, %rsi
	call	do_print_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	ASN1_STRING_print_ex, .-ASN1_STRING_print_ex
	.globl	ASN1_STRING_print_ex_fp
	.type	ASN1_STRING_print_ex_fp, @function
ASN1_STRING_print_ex_fp:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	send_fp_chars(%rip), %rdi
	movq	%rax, %rsi
	call	do_print_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	ASN1_STRING_print_ex_fp, .-ASN1_STRING_print_ex_fp
	.globl	ASN1_STRING_to_UTF8
	.type	ASN1_STRING_to_UTF8, @function
ASN1_STRING_to_UTF8:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L153
	movl	$-1, %eax
	jmp	.L159
.L153:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L155
	cmpl	$30, -4(%rbp)
	jle	.L156
.L155:
	movl	$-1, %eax
	jmp	.L159
.L156:
	movl	-4(%rbp), %eax
	cltq
	leaq	tag2nbyte(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.L157
	movl	$-1, %eax
	jmp	.L159
.L157:
	orl	$4096, -8(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-8(%rbp), %ecx
	leaq	-56(%rbp), %rax
	movl	$8192, %r8d
	movq	%rax, %rdi
	call	ASN1_mbstring_copy@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L158
	movl	-12(%rbp), %eax
	jmp	.L159
.L158:
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-48(%rbp), %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	ASN1_STRING_to_UTF8, .-ASN1_STRING_to_UTF8
	.section	.rodata
	.type	__func__.1, @object
	.size	__func__.1, 7
__func__.1:
	.string	"do_buf"
	.align 16
	.type	hexdig.0, @object
	.size	hexdig.0, 17
hexdig.0:
	.string	"0123456789ABCDEF"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

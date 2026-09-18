	.file	"a_mbstr.c"
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
	.type	is_unicode_surrogate, @function
is_unicode_surrogate:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$55295, -8(%rbp)
	jbe	.L6
	cmpq	$57343, -8(%rbp)
	ja	.L6
	movl	$1, %eax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	is_unicode_surrogate, .-is_unicode_surrogate
	.type	is_unicode_valid, @function
is_unicode_valid:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$1114111, -8(%rbp)
	ja	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_unicode_surrogate
	testl	%eax, %eax
	jne	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	is_unicode_valid, .-is_unicode_valid
	.globl	ASN1_mbstring_copy
	.type	ASN1_mbstring_copy, @function
ASN1_mbstring_copy:
.LFB162:
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_mbstring_ncopy@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ASN1_mbstring_copy, .-ASN1_mbstring_copy
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/a_mbstr.c"
.LC1:
	.string	"minsize=%ld"
.LC2:
	.string	"maxsize=%ld"
	.text
	.globl	ASN1_mbstring_ncopy
	.type	ASN1_mbstring_ncopy, @function
ASN1_mbstring_ncopy:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.L16
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -84(%rbp)
.L16:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L17
	movq	$10246, -96(%rbp)
.L17:
	cmpl	$0, -84(%rbp)
	jns	.L18
	movl	$-1, %eax
	jmp	.L52
.L18:
	cmpl	$4100, -88(%rbp)
	je	.L20
	cmpl	$4100, -88(%rbp)
	jg	.L21
	cmpl	$4098, -88(%rbp)
	je	.L22
	cmpl	$4098, -88(%rbp)
	jg	.L21
	cmpl	$4096, -88(%rbp)
	je	.L23
	cmpl	$4097, -88(%rbp)
	je	.L24
	jmp	.L21
.L22:
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L25
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L25:
	movl	-84(%rbp), %eax
	sarl	%eax
	movl	%eax, -52(%rbp)
	jmp	.L26
.L20:
	movl	-84(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L27
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$74, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L27:
	movl	-84(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, -52(%rbp)
	jmp	.L26
.L23:
	movl	$0, -52(%rbp)
	leaq	-52(%rbp), %rcx
	leaq	in_utf8(%rip), %rdx
	movl	-84(%rbp), %esi
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	traverse_string
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L24:
	movl	-84(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L26
.L21:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L53:
	nop
.L26:
	cmpq	$0, -104(%rbp)
	jle	.L29
	movl	-52(%rbp), %eax
	cltq
	cmpq	%rax, -104(%rbp)
	jle	.L29
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$152, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L29:
	cmpq	$0, 16(%rbp)
	jle	.L30
	movl	-52(%rbp), %eax
	cltq
	cmpq	%rax, 16(%rbp)
	jge	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$151, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L30:
	leaq	-96(%rbp), %rdi
	leaq	type_str(%rip), %rcx
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %esi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_string
	testl	%eax, %eax
	jns	.L31
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L31:
	movl	$4097, -12(%rbp)
	movq	-96(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L32
	movl	$18, -4(%rbp)
	jmp	.L33
.L32:
	movq	-96(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L34
	movl	$19, -4(%rbp)
	jmp	.L33
.L34:
	movq	-96(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L35
	movl	$22, -4(%rbp)
	jmp	.L33
.L35:
	movq	-96(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L36
	movl	$20, -4(%rbp)
	jmp	.L33
.L36:
	movq	-96(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L37
	movl	$30, -4(%rbp)
	movl	$4098, -12(%rbp)
	jmp	.L33
.L37:
	movq	-96(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L38
	movl	$28, -4(%rbp)
	movl	$4100, -12(%rbp)
	jmp	.L33
.L38:
	movl	$12, -4(%rbp)
	movl	$4096, -12(%rbp)
.L33:
	cmpq	$0, -72(%rbp)
	jne	.L39
	movl	-4(%rbp), %eax
	jmp	.L52
.L39:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movb	$0, -5(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L41
.L40:
	movb	$1, -5(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_type_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L42:
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L41:
	movl	-88(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L43
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L44
	cmpb	$0, -5(%rbp)
	je	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.L45:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L44:
	movl	-4(%rbp), %eax
	jmp	.L52
.L43:
	cmpl	$4100, -12(%rbp)
	je	.L46
	cmpl	$4100, -12(%rbp)
	jg	.L47
	cmpl	$4098, -12(%rbp)
	je	.L48
	cmpl	$4098, -12(%rbp)
	jg	.L47
	cmpl	$4096, -12(%rbp)
	je	.L49
	cmpl	$4097, -12(%rbp)
	jne	.L47
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
	leaq	cpy_asc(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L47
.L48:
	movl	-52(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -40(%rbp)
	leaq	cpy_bmp(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L47
.L46:
	movl	-52(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -40(%rbp)
	leaq	cpy_univ(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L47
.L49:
	movl	$0, -40(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	out_utf8(%rip), %rcx
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %esi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_string
	leaq	cpy_utf8(%rip), %rax
	movq	%rax, -32(%rbp)
	nop
.L47:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L50
	cmpb	$0, -5(%rbp)
	je	.L51
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.L51:
	movl	$-1, %eax
	jmp	.L52
.L50:
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %esi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_string
	movl	-4(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ASN1_mbstring_ncopy, .-ASN1_mbstring_ncopy
	.type	traverse_string, @function
traverse_string:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	jmp	.L55
.L62:
	cmpl	$4097, -32(%rbp)
	jne	.L56
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	subl	$1, -28(%rbp)
	jmp	.L57
.L56:
	cmpl	$4098, -32(%rbp)
	jne	.L58
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	subl	$2, -28(%rbp)
	jmp	.L57
.L58:
	cmpl	$4100, -32(%rbp)
	jne	.L59
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	subl	$4, -28(%rbp)
	jmp	.L57
.L59:
	leaq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	UTF8_getc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L60
	movl	$-1, %eax
	jmp	.L63
.L60:
	movl	-4(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
.L57:
	cmpq	$0, -40(%rbp)
	je	.L55
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L55
	movl	-4(%rbp), %eax
	jmp	.L63
.L55:
	cmpl	$0, -28(%rbp)
	jne	.L62
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	traverse_string, .-traverse_string
	.type	in_utf8, @function
in_utf8:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_unicode_valid
	testl	%eax, %eax
	jne	.L65
	movl	$-2, %eax
	jmp	.L66
.L65:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	in_utf8, .-in_utf8
	.type	out_utf8, @function
out_utf8:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %edi
	call	UTF8_putc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L68
	movl	-4(%rbp), %eax
	jmp	.L69
.L68:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	out_utf8, .-out_utf8
	.type	type_str, @function
type_str:
.LFB167:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2147483647, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L71
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L71
	cmpl	$32, -12(%rbp)
	je	.L71
	andq	$-2, -8(%rbp)
.L71:
	movq	-8(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L72
	movl	-12(%rbp), %eax
	movl	$2048, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L72
	andq	$-3, -8(%rbp)
.L72:
	movq	-8(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L73
	movl	-12(%rbp), %eax
	cmpl	$127, %eax
	jbe	.L73
	andq	$-17, -8(%rbp)
.L73:
	movq	-8(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L74
	cmpq	$255, -24(%rbp)
	jbe	.L74
	andq	$-5, -8(%rbp)
.L74:
	movq	-8(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L75
	cmpq	$65535, -24(%rbp)
	jbe	.L75
	andq	$-2049, -8(%rbp)
.L75:
	movq	-8(%rbp), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L76
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_unicode_valid
	testl	%eax, %eax
	jne	.L76
	andq	$-8193, -8(%rbp)
.L76:
	cmpq	$0, -8(%rbp)
	jne	.L77
	movl	$-1, %eax
	jmp	.L78
.L77:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	type_str, .-type_str
	.type	cpy_asc, @function
cpy_asc:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	cpy_asc, .-cpy_asc
	.type	cpy_bmp, @function
cpy_bmp:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	cpy_bmp, .-cpy_bmp
	.type	cpy_univ, @function
cpy_univ:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	cpy_univ, .-cpy_univ
	.type	cpy_utf8, @function
cpy_utf8:
.LFB171:
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
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$255, %esi
	movq	%rax, %rdi
	call	UTF8_putc@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	cpy_utf8, .-cpy_utf8
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ASN1_mbstring_ncopy"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

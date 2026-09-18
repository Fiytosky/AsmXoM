	.file	"params.c"
	.text
	.type	real_shift, @function
real_shift:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$53, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	real_shift, .-real_shift
	.globl	OSSL_PARAM_locate
	.type	OSSL_PARAM_locate, @function
OSSL_PARAM_locate:
.LFB114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	cmpq	$0, -16(%rbp)
	je	.L4
	jmp	.L5
.L8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-8(%rbp), %rax
	jmp	.L7
.L6:
	addq	$40, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L8
.L4:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	OSSL_PARAM_locate, .-OSSL_PARAM_locate
	.globl	OSSL_PARAM_locate_const
	.type	OSSL_PARAM_locate_const, @function
OSSL_PARAM_locate_const:
.LFB115:
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
	call	OSSL_PARAM_locate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	OSSL_PARAM_locate_const, .-OSSL_PARAM_locate_const
	.type	ossl_param_construct, @function
ossl_param_construct:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$-1, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	ossl_param_construct, .-ossl_param_construct
	.globl	OSSL_PARAM_modified
	.type	OSSL_PARAM_modified, @function
OSSL_PARAM_modified:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$-1, %rax
	je	.L14
	movl	$1, %eax
	jmp	.L16
.L14:
	movl	$0, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	OSSL_PARAM_modified, .-OSSL_PARAM_modified
	.globl	OSSL_PARAM_set_all_unmodified
	.type	OSSL_PARAM_set_all_unmodified, @function
OSSL_PARAM_set_all_unmodified:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	$-1, 32(%rax)
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20
.L21:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	OSSL_PARAM_set_all_unmodified, .-OSSL_PARAM_set_all_unmodified
	.type	is_negative, @function
is_negative:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L23
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	jmp	.L25
.L23:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$128, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	is_negative, .-is_negative
	.type	check_sign_bytes, @function
check_sign_bytes:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L27
.L30:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -36(%rbp)
	je	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	addq	$1, -8(%rbp)
.L27:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L30
	movl	$1, %eax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	check_sign_bytes, .-check_sign_bytes
	.section	.rodata
.LC0:
	.string	"../crypto/params.c"
	.text
	.type	copy_integer, @function
copy_integer:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movl	%r9d, -56(%rbp)
	movb	%al, -52(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L32
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L33
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movzbl	-52(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	jmp	.L34
.L33:
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movzbl	-52(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_sign_bytes
	testl	%eax, %eax
	je	.L35
	cmpl	$0, -56(%rbp)
	je	.L36
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorb	-52(%rbp), %al
	testb	%al, %al
	jns	.L36
.L35:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L34
.L32:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L38
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movzbl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L34
.L38:
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movzbl	-52(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_sign_bytes
	testl	%eax, %eax
	je	.L39
	cmpl	$0, -56(%rbp)
	je	.L40
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorb	-52(%rbp), %al
	testb	%al, %al
	jns	.L40
.L39:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L40:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L34:
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	copy_integer, .-copy_integer
	.type	signed_from_signed, @function
signed_from_signed:
.LFB122:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_negative
	testl	%eax, %eax
	je	.L42
	movl	$255, %edi
	jmp	.L43
.L42:
	movl	$0, %edi
.L43:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	copy_integer
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	signed_from_signed, .-signed_from_signed
	.type	signed_from_unsigned, @function
signed_from_unsigned:
.LFB123:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	copy_integer
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	signed_from_unsigned, .-signed_from_unsigned
	.type	unsigned_from_signed, @function
unsigned_from_signed:
.LFB124:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_negative
	testl	%eax, %eax
	je	.L48
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	copy_integer
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	unsigned_from_signed, .-unsigned_from_signed
	.type	unsigned_from_unsigned, @function
unsigned_from_unsigned:
.LFB125:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	copy_integer
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	unsigned_from_unsigned, .-unsigned_from_unsigned
	.type	general_get_int, @function
general_get_int:
.LFB126:
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
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L55
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	signed_from_signed
	jmp	.L54
.L55:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L56
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	signed_from_unsigned
	jmp	.L54
.L56:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	general_get_int, .-general_get_int
	.type	general_set_int, @function
general_set_int:
.LFB127:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$1, %eax
	jmp	.L59
.L58:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L60
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	signed_from_signed
	movl	%eax, -4(%rbp)
	jmp	.L61
.L60:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L62
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	unsigned_from_signed
	movl	%eax, -4(%rbp)
	jmp	.L61
.L62:
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L61:
	cmpl	$0, -4(%rbp)
	je	.L63
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L64
.L63:
	movq	-40(%rbp), %rax
.L64:
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movl	-4(%rbp), %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	general_set_int, .-general_set_int
	.type	general_get_uint, @function
general_get_uint:
.LFB128:
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
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L68
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	unsigned_from_signed
	jmp	.L67
.L68:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L69
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	unsigned_from_unsigned
	jmp	.L67
.L69:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	general_get_uint, .-general_get_uint
	.type	general_set_uint, @function
general_set_uint:
.LFB129:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	movl	$1, %eax
	jmp	.L72
.L71:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L73
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	signed_from_unsigned
	movl	%eax, -4(%rbp)
	jmp	.L74
.L73:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L75
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	unsigned_from_unsigned
	movl	%eax, -4(%rbp)
	jmp	.L74
.L75:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L74:
	cmpl	$0, -4(%rbp)
	je	.L76
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L77
.L76:
	movq	-40(%rbp), %rax
.L77:
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movl	-4(%rbp), %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	general_set_uint, .-general_set_uint
	.globl	OSSL_PARAM_get_int
	.type	OSSL_PARAM_get_int, @function
OSSL_PARAM_get_int:
.LFB130:
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
	call	OSSL_PARAM_get_int32@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	OSSL_PARAM_get_int, .-OSSL_PARAM_get_int
	.globl	OSSL_PARAM_set_int
	.type	OSSL_PARAM_set_int, @function
OSSL_PARAM_set_int:
.LFB131:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	OSSL_PARAM_set_int, .-OSSL_PARAM_set_int
	.globl	OSSL_PARAM_construct_int
	.type	OSSL_PARAM_construct_int, @function
OSSL_PARAM_construct_int:
.LFB132:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	OSSL_PARAM_construct_int, .-OSSL_PARAM_construct_int
	.globl	OSSL_PARAM_get_uint
	.type	OSSL_PARAM_get_uint, @function
OSSL_PARAM_get_uint:
.LFB133:
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
	call	OSSL_PARAM_get_uint32@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	OSSL_PARAM_get_uint, .-OSSL_PARAM_get_uint
	.globl	OSSL_PARAM_set_uint
	.type	OSSL_PARAM_set_uint, @function
OSSL_PARAM_set_uint:
.LFB134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint32@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	OSSL_PARAM_set_uint, .-OSSL_PARAM_set_uint
	.globl	OSSL_PARAM_construct_uint
	.type	OSSL_PARAM_construct_uint, @function
OSSL_PARAM_construct_uint:
.LFB135:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	OSSL_PARAM_construct_uint, .-OSSL_PARAM_construct_uint
	.globl	OSSL_PARAM_get_long
	.type	OSSL_PARAM_get_long, @function
OSSL_PARAM_get_long:
.LFB136:
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
	call	OSSL_PARAM_get_int64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	OSSL_PARAM_get_long, .-OSSL_PARAM_get_long
	.globl	OSSL_PARAM_set_long
	.type	OSSL_PARAM_set_long, @function
OSSL_PARAM_set_long:
.LFB137:
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
	call	OSSL_PARAM_set_int64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	OSSL_PARAM_set_long, .-OSSL_PARAM_set_long
	.globl	OSSL_PARAM_construct_long
	.type	OSSL_PARAM_construct_long, @function
OSSL_PARAM_construct_long:
.LFB138:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	OSSL_PARAM_construct_long, .-OSSL_PARAM_construct_long
	.globl	OSSL_PARAM_get_ulong
	.type	OSSL_PARAM_get_ulong, @function
OSSL_PARAM_get_ulong:
.LFB139:
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
	call	OSSL_PARAM_get_uint64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	OSSL_PARAM_get_ulong, .-OSSL_PARAM_get_ulong
	.globl	OSSL_PARAM_set_ulong
	.type	OSSL_PARAM_set_ulong, @function
OSSL_PARAM_set_ulong:
.LFB140:
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
	call	OSSL_PARAM_set_uint64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	OSSL_PARAM_set_ulong, .-OSSL_PARAM_set_ulong
	.globl	OSSL_PARAM_construct_ulong
	.type	OSSL_PARAM_construct_ulong, @function
OSSL_PARAM_construct_ulong:
.LFB141:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	OSSL_PARAM_construct_ulong, .-OSSL_PARAM_construct_ulong
	.globl	OSSL_PARAM_get_int32
	.type	OSSL_PARAM_get_int32, @function
OSSL_PARAM_get_int32:
.LFB142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L103
	cmpq	$0, -40(%rbp)
	jne	.L104
.L103:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L106:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L107
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L108
	cmpq	$8, %rax
	je	.L109
	jmp	.L127
.L108:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L105
.L109:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$-2147483648, -32(%rbp)
	jl	.L111
	cmpq	$2147483647, -32(%rbp)
	jg	.L111
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L105
.L111:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$416, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L127:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_int
	jmp	.L105
.L107:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L112
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L113
	cmpq	$8, %rax
	je	.L114
	jmp	.L128
.L113:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	js	.L116
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L105
.L116:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L114:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$2147483647, -16(%rbp)
	ja	.L117
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L105
.L117:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L128:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_int
	jmp	.L105
.L112:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L118
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L119
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	comisd	.LC1(%rip), %xmm0
	jb	.L120
	movsd	.LC2(%rip), %xmm0
	comisd	-8(%rbp), %xmm0
	jb	.L120
	movsd	-8(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jp	.L120
	ucomisd	-8(%rbp), %xmm0
	jne	.L120
	movsd	-8(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L105
.L120:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L119:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$462, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L118:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	OSSL_PARAM_get_int32, .-OSSL_PARAM_get_int32
	.globl	OSSL_PARAM_set_int32
	.type	OSSL_PARAM_set_int32, @function
OSSL_PARAM_set_int32:
.LFB143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$473, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L132
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	movl	$1, %eax
	jmp	.L131
.L133:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L134
	cmpq	$8, %rax
	je	.L135
	jmp	.L146
.L134:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L131
.L135:
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%edx, %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L131
.L146:
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_int
	jmp	.L131
.L132:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L137
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	js	.L137
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	movl	$1, %eax
	jmp	.L131
.L138:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L139
	cmpq	$8, %rax
	je	.L140
	jmp	.L147
.L139:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L131
.L140:
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%edx, %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L131
.L147:
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_int
	jmp	.L131
.L137:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L142
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	movl	$1, %eax
	jmp	.L131
.L143:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L144
	call	real_shift
	movl	%eax, -4(%rbp)
	cmpl	$30, -4(%rbp)
	ja	.L145
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L145
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L131
.L145:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L131
.L144:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$530, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L131
.L142:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$534, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	OSSL_PARAM_set_int32, .-OSSL_PARAM_set_int32
	.globl	OSSL_PARAM_construct_int32
	.type	OSSL_PARAM_construct_int32, @function
OSSL_PARAM_construct_int32:
.LFB144:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	OSSL_PARAM_construct_int32, .-OSSL_PARAM_construct_int32
	.globl	OSSL_PARAM_get_uint32
	.type	OSSL_PARAM_get_uint32, @function
OSSL_PARAM_get_uint32:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L151
	cmpq	$0, -40(%rbp)
	jne	.L152
.L151:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$547, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L154:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L155
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L156
	cmpq	$8, %rax
	je	.L157
	jmp	.L179
.L156:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L153
.L157:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$4294967295, %eax
	cmpq	-32(%rbp), %rax
	jb	.L159
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L153
.L159:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$570, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L179:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_uint
	jmp	.L153
.L155:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L160
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L161
	cmpq	$8, %rax
	je	.L162
	jmp	.L180
.L161:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L164
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L153
.L164:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$587, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L162:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L165
	movl	$4294967295, %eax
	cmpq	%rax, -16(%rbp)
	jg	.L165
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L153
.L165:
	cmpq	$0, -16(%rbp)
	jns	.L166
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$596, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L166:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L167:
	movl	$0, %eax
	jmp	.L153
.L180:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_uint
	jmp	.L153
.L160:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L168
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L169
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L170
	movsd	.LC4(%rip), %xmm0
	comisd	-8(%rbp), %xmm0
	jb	.L170
	movsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L173
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L174
.L173:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L174:
	ucomisd	-8(%rbp), %xmm0
	jp	.L170
	ucomisd	-8(%rbp), %xmm0
	jne	.L170
	movsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L153
.L170:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$614, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L169:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L168:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$621, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	OSSL_PARAM_get_uint32, .-OSSL_PARAM_get_uint32
	.globl	OSSL_PARAM_set_uint32
	.type	OSSL_PARAM_set_uint32, @function
OSSL_PARAM_set_uint32:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$628, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L184
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L185
	movl	$1, %eax
	jmp	.L183
.L185:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L186
	cmpq	$8, %rax
	je	.L187
	jmp	.L201
.L186:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L183
.L187:
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %edx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L183
.L201:
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_uint
	jmp	.L183
.L184:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L189
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L190
	movl	$1, %eax
	jmp	.L183
.L190:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L191
	cmpq	$8, %rax
	je	.L192
	jmp	.L202
.L191:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	js	.L194
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L183
.L194:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$660, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L192:
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %edx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L183
.L202:
	leaq	-28(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_uint
	jmp	.L183
.L189:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L195
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L196
	movl	$1, %eax
	jmp	.L183
.L196:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L197
	call	real_shift
	movl	%eax, -4(%rbp)
	cmpl	$31, -4(%rbp)
	ja	.L198
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L198
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L198:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movl	%edx, %eax
	testq	%rax, %rax
	js	.L199
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L200
.L199:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L200:
	movsd	%xmm0, (%rcx)
	movl	$1, %eax
	jmp	.L183
.L197:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$686, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L195:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$690, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	OSSL_PARAM_set_uint32, .-OSSL_PARAM_set_uint32
	.globl	OSSL_PARAM_construct_uint32
	.type	OSSL_PARAM_construct_uint32, @function
OSSL_PARAM_construct_uint32:
.LFB147:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	OSSL_PARAM_construct_uint32, .-OSSL_PARAM_construct_uint32
	.globl	OSSL_PARAM_get_int64
	.type	OSSL_PARAM_get_int64, @function
OSSL_PARAM_get_int64:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L206
	cmpq	$0, -24(%rbp)
	jne	.L207
.L206:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$703, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L207:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L209
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$708, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L209:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L210
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L211
	cmpq	$8, %rax
	je	.L212
	jmp	.L228
.L211:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L208
.L212:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L208
.L228:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_int
	jmp	.L208
.L210:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L214
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L215
	cmpq	$8, %rax
	je	.L216
	jmp	.L229
.L215:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L208
.L216:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	js	.L218
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L208
.L218:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$738, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L229:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_int
	jmp	.L208
.L214:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L219
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L220
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	comisd	.LC5(%rip), %xmm0
	jb	.L221
	movsd	.LC6(%rip), %xmm0
	comisd	-8(%rbp), %xmm0
	jbe	.L221
	movsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jp	.L221
	ucomisd	-8(%rbp), %xmm0
	jne	.L221
	movsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L208
.L221:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L220:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L219:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$768, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	OSSL_PARAM_get_int64, .-OSSL_PARAM_get_int64
	.globl	OSSL_PARAM_set_int64
	.type	OSSL_PARAM_set_int64, @function
OSSL_PARAM_set_int64:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L231
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L232
.L231:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L233
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L234
	movl	$1, %eax
	jmp	.L232
.L234:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L235
	cmpq	$8, %rax
	je	.L236
	jmp	.L249
.L235:
	movq	-32(%rbp), %rax
	cmpq	$-2147483648, %rax
	jl	.L238
	movq	-32(%rbp), %rax
	cmpq	$2147483647, %rax
	jg	.L238
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L232
.L238:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L232
.L236:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L232
.L249:
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_int
	jmp	.L232
.L233:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L239
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	js	.L239
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L240
	movl	$1, %eax
	jmp	.L232
.L240:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L241
	cmpq	$8, %rax
	je	.L242
	jmp	.L250
.L241:
	movq	-32(%rbp), %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	jg	.L244
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L232
.L244:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L232
.L242:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L232
.L250:
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_int
	jmp	.L232
.L239:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L245
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L246
	movl	$1, %eax
	jmp	.L232
.L246:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L247
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovns	%rdx, %rax
	movq	%rax, -8(%rbp)
	call	real_shift
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	jne	.L248
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L232
.L248:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$833, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L232
.L247:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$836, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L232
.L245:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$840, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	OSSL_PARAM_set_int64, .-OSSL_PARAM_set_int64
	.globl	OSSL_PARAM_construct_int64
	.type	OSSL_PARAM_construct_int64, @function
OSSL_PARAM_construct_int64:
.LFB150:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	OSSL_PARAM_construct_int64, .-OSSL_PARAM_construct_int64
	.globl	OSSL_PARAM_get_uint64
	.type	OSSL_PARAM_get_uint64, @function
OSSL_PARAM_get_uint64:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L254
	cmpq	$0, -40(%rbp)
	jne	.L255
.L254:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$852, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L256
.L255:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$857, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L256
.L257:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L258
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L259
	cmpq	$8, %rax
	je	.L260
	jmp	.L283
.L259:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L256
.L260:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L256
.L283:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_uint
	jmp	.L256
.L258:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L262
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L263
	cmpq	$8, %rax
	je	.L264
	jmp	.L284
.L263:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L266
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L256
.L266:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$885, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L256
.L264:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L267
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L256
.L267:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$893, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L256
.L284:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_get_uint
	jmp	.L256
.L262:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L268
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L269
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L270
	movsd	.LC7(%rip), %xmm0
	comisd	-8(%rbp), %xmm0
	jbe	.L270
	movsd	-8(%rbp), %xmm0
	comisd	.LC6(%rip), %xmm0
	jnb	.L273
	movsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L274
.L273:
	movsd	-8(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L274:
	testq	%rax, %rax
	js	.L275
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L276
.L275:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L276:
	ucomisd	-8(%rbp), %xmm0
	jp	.L270
	ucomisd	-8(%rbp), %xmm0
	jne	.L270
	movsd	-8(%rbp), %xmm0
	comisd	.LC6(%rip), %xmm0
	jnb	.L278
	movsd	-8(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L279
.L278:
	movsd	-8(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L279:
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L256
.L270:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$916, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L256
.L269:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$919, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L256
.L268:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$923, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	OSSL_PARAM_get_uint64, .-OSSL_PARAM_get_uint64
	.globl	OSSL_PARAM_set_uint64
	.type	OSSL_PARAM_set_uint64, @function
OSSL_PARAM_set_uint64:
.LFB152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L286
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$930, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L287
.L286:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L288
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L289
	movl	$1, %eax
	jmp	.L287
.L289:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L290
	cmpq	$8, %rax
	je	.L291
	jmp	.L306
.L290:
	movq	-32(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jb	.L293
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L287
.L293:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$947, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L287
.L291:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L287
.L306:
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_uint
	jmp	.L287
.L288:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L294
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L295
	movl	$1, %eax
	jmp	.L287
.L295:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L296
	cmpq	$8, %rax
	je	.L297
	jmp	.L307
.L296:
	movq	-32(%rbp), %rax
	cmpq	$2147483647, %rax
	ja	.L299
	movq	-24(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L287
.L299:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$967, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L287
.L297:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	js	.L300
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L287
.L300:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$974, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L287
.L307:
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	general_set_uint
	jmp	.L287
.L294:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L301
	movq	-24(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L302
	movq	-32(%rbp), %rbx
	call	real_shift
	movl	%eax, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rax
	testq	%rax, %rax
	jne	.L303
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rcx
	testq	%rax, %rax
	js	.L304
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L305
.L304:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L305:
	movsd	%xmm0, (%rcx)
	movl	$1, %eax
	jmp	.L287
.L303:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$988, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L287
.L302:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$991, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L287
.L301:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$995, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L287:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	OSSL_PARAM_set_uint64, .-OSSL_PARAM_set_uint64
	.globl	OSSL_PARAM_construct_uint64
	.type	OSSL_PARAM_construct_uint64, @function
OSSL_PARAM_construct_uint64:
.LFB153:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	OSSL_PARAM_construct_uint64, .-OSSL_PARAM_construct_uint64
	.globl	OSSL_PARAM_get_size_t
	.type	OSSL_PARAM_get_size_t, @function
OSSL_PARAM_get_size_t:
.LFB154:
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
	call	OSSL_PARAM_get_uint64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	OSSL_PARAM_get_size_t, .-OSSL_PARAM_get_size_t
	.globl	OSSL_PARAM_set_size_t
	.type	OSSL_PARAM_set_size_t, @function
OSSL_PARAM_set_size_t:
.LFB155:
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
	call	OSSL_PARAM_set_uint64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	OSSL_PARAM_set_size_t, .-OSSL_PARAM_set_size_t
	.globl	OSSL_PARAM_construct_size_t
	.type	OSSL_PARAM_construct_size_t, @function
OSSL_PARAM_construct_size_t:
.LFB156:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	OSSL_PARAM_construct_size_t, .-OSSL_PARAM_construct_size_t
	.globl	OSSL_PARAM_get_time_t
	.type	OSSL_PARAM_get_time_t, @function
OSSL_PARAM_get_time_t:
.LFB157:
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
	call	OSSL_PARAM_get_int64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	OSSL_PARAM_get_time_t, .-OSSL_PARAM_get_time_t
	.globl	OSSL_PARAM_set_time_t
	.type	OSSL_PARAM_set_time_t, @function
OSSL_PARAM_set_time_t:
.LFB158:
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
	call	OSSL_PARAM_set_int64@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	OSSL_PARAM_set_time_t, .-OSSL_PARAM_set_time_t
	.globl	OSSL_PARAM_construct_time_t
	.type	OSSL_PARAM_construct_time_t, @function
OSSL_PARAM_construct_time_t:
.LFB159:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	OSSL_PARAM_construct_time_t, .-OSSL_PARAM_construct_time_t
	.globl	OSSL_PARAM_get_BN
	.type	OSSL_PARAM_get_BN, @function
OSSL_PARAM_get_BN:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L323
	cmpq	$0, -24(%rbp)
	je	.L323
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L324
.L323:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1073, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L325
.L324:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L326
	cmpl	$2, %eax
	jne	.L327
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_native2bn@PLT
	movq	%rax, -8(%rbp)
	jmp	.L328
.L326:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_signed_native2bn@PLT
	movq	%rax, -8(%rbp)
	jmp	.L328
.L327:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1085, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L328:
	cmpq	$0, -8(%rbp)
	jne	.L329
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1090, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L325
.L329:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	OSSL_PARAM_get_BN, .-OSSL_PARAM_get_BN
	.globl	OSSL_PARAM_set_BN
	.type	OSSL_PARAM_set_BN, @function
OSSL_PARAM_set_BN:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L331
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L331:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -32(%rbp)
	jne	.L333
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L333:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L334
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L334
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L334:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L335
	addq	$1, -8(%rbp)
.L335:
	cmpq	$0, -8(%rbp)
	jne	.L336
	addq	$1, -8(%rbp)
.L336:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L337
	movl	$1, %eax
	jmp	.L332
.L337:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-8(%rbp), %rax
	jb	.L338
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L339
	cmpl	$2, %eax
	jne	.L340
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	testl	%eax, %eax
	js	.L341
	movl	$1, %eax
	jmp	.L332
.L341:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L339:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_signed_bn2native@PLT
	testl	%eax, %eax
	js	.L343
	movl	$1, %eax
	jmp	.L332
.L343:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L340:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L342:
	movl	$0, %eax
	jmp	.L332
.L338:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	OSSL_PARAM_set_BN, .-OSSL_PARAM_set_BN
	.globl	OSSL_PARAM_construct_BN
	.type	OSSL_PARAM_construct_BN, @function
OSSL_PARAM_construct_BN:
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	OSSL_PARAM_construct_BN, .-OSSL_PARAM_construct_BN
	.globl	OSSL_PARAM_get_double
	.type	OSSL_PARAM_get_double, @function
OSSL_PARAM_get_double:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L347
	cmpq	$0, -24(%rbp)
	je	.L347
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L348
.L347:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L349
.L348:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L350
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L351
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L349
.L351:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L349
.L350:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L352
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L353
	cmpq	$8, %rax
	je	.L354
	jmp	.L355
.L353:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L356
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L357
.L356:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L357:
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L349
.L354:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	call	real_shift
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	jne	.L358
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	js	.L359
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L360
.L359:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L360:
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L349
.L358:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L349
.L352:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L355
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L361
	cmpq	$8, %rax
	je	.L362
	jmp	.L355
.L361:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L349
.L362:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovns	%rdx, %rax
	movq	%rax, -16(%rbp)
	call	real_shift
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	jne	.L363
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L349
.L363:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L349
.L355:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L349:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	OSSL_PARAM_get_double, .-OSSL_PARAM_get_double
	.globl	OSSL_PARAM_set_double
	.type	OSSL_PARAM_set_double, @function
OSSL_PARAM_set_double:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L365
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L365:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L367
	movq	-8(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L368
	movl	$1, %eax
	jmp	.L366
.L368:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8, %rax
	jne	.L369
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L366
.L369:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L367:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L370
	movq	-8(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L371
	movl	$1, %eax
	jmp	.L366
.L371:
	movsd	-16(%rbp), %xmm0
	comisd	.LC6(%rip), %xmm0
	jnb	.L372
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L373
.L372:
	movsd	-16(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L373:
	testq	%rax, %rax
	js	.L374
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L375
.L374:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L375:
	ucomisd	-16(%rbp), %xmm0
	jp	.L400
	ucomisd	-16(%rbp), %xmm0
	je	.L376
.L400:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L376:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L378
	cmpq	$8, %rax
	je	.L379
	jmp	.L380
.L378:
	movsd	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L381
	movsd	.LC4(%rip), %xmm0
	comisd	-16(%rbp), %xmm0
	jb	.L381
	movq	-8(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rdx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L366
.L381:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L379:
	movsd	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L384
	movsd	.LC7(%rip), %xmm0
	comisd	-16(%rbp), %xmm0
	jbe	.L384
	movq	-8(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movsd	-16(%rbp), %xmm0
	comisd	.LC6(%rip), %xmm0
	jnb	.L387
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L388
.L387:
	movsd	-16(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx
	xorq	%rcx, %rax
.L388:
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L366
.L384:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L370:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L380
	movq	-8(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L389
	movl	$1, %eax
	jmp	.L366
.L389:
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jp	.L405
	ucomisd	-16(%rbp), %xmm0
	je	.L390
.L405:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L390:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$4, %rax
	je	.L392
	cmpq	$8, %rax
	je	.L393
	jmp	.L380
.L392:
	movsd	-16(%rbp), %xmm0
	comisd	.LC1(%rip), %xmm0
	jb	.L394
	movsd	.LC2(%rip), %xmm0
	comisd	-16(%rbp), %xmm0
	jb	.L394
	movq	-8(%rbp), %rax
	movq	$4, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movsd	-16(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L366
.L394:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L393:
	movsd	-16(%rbp), %xmm0
	comisd	.LC5(%rip), %xmm0
	jb	.L397
	movsd	.LC6(%rip), %xmm0
	comisd	-16(%rbp), %xmm0
	jbe	.L397
	movq	-8(%rbp), %rax
	movq	$8, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L366
.L397:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L366
.L380:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L366:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	OSSL_PARAM_set_double, .-OSSL_PARAM_set_double
	.globl	OSSL_PARAM_construct_double
	.type	OSSL_PARAM_construct_double, @function
OSSL_PARAM_construct_double:
.LFB165:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	OSSL_PARAM_construct_double, .-OSSL_PARAM_construct_double
	.type	get_string_internal, @function
get_string_internal:
.LFB166:
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
	movl	%r8d, -68(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L413
	cmpq	$0, -64(%rbp)
	je	.L414
.L413:
	cmpq	$0, -40(%rbp)
	jne	.L415
.L414:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L416
.L415:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -68(%rbp)
	je	.L417
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L416
.L417:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$4, -68(%rbp)
	je	.L418
	cmpq	$0, -8(%rbp)
	jne	.L419
.L418:
	movl	$1, %eax
	jmp	.L420
.L419:
	movl	$0, %eax
.L420:
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L421
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L421:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L422
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L416
.L422:
	cmpq	$0, -48(%rbp)
	jne	.L423
	movl	$1, %eax
	jmp	.L416
.L423:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L424
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1339, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L425
	movl	$0, %eax
	jmp	.L416
.L425:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L424:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L426
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L416
.L426:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L416:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	get_string_internal, .-get_string_internal
	.globl	OSSL_PARAM_get_utf8_string
	.type	OSSL_PARAM_get_utf8_string, @function
OSSL_PARAM_get_utf8_string:
.LFB167:
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
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$4, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	get_string_internal
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L428
	movl	$0, %eax
	jmp	.L429
.L428:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L430
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, -8(%rbp)
.L430:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L431
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L429
.L431:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-12(%rbp), %eax
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	OSSL_PARAM_get_utf8_string, .-OSSL_PARAM_get_utf8_string
	.globl	OSSL_PARAM_get_octet_string
	.type	OSSL_PARAM_get_octet_string, @function
OSSL_PARAM_get_octet_string:
.LFB168:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rdi
	call	get_string_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	OSSL_PARAM_get_octet_string, .-OSSL_PARAM_get_octet_string
	.type	set_string_internal, @function
set_string_internal:
.LFB169:
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
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L435
	movl	$1, %eax
	jmp	.L436
.L435:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L437
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L436
.L437:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L438
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L436
.L438:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpl	$4, -28(%rbp)
	jne	.L439
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L439
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L439:
	movl	$1, %eax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	set_string_internal, .-set_string_internal
	.globl	OSSL_PARAM_set_utf8_string
	.type	OSSL_PARAM_set_utf8_string, @function
OSSL_PARAM_set_utf8_string:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L441
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L442
.L441:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -16(%rbp)
	jne	.L443
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L442
.L443:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	set_string_internal
.L442:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	OSSL_PARAM_set_utf8_string, .-OSSL_PARAM_set_utf8_string
	.globl	OSSL_PARAM_set_octet_string
	.type	OSSL_PARAM_set_octet_string, @function
OSSL_PARAM_set_octet_string:
.LFB171:
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
	cmpq	$0, -8(%rbp)
	jne	.L445
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L446
.L445:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -16(%rbp)
	jne	.L447
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1440, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L446
.L447:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	set_string_internal
.L446:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	OSSL_PARAM_set_octet_string, .-OSSL_PARAM_set_octet_string
	.globl	OSSL_PARAM_construct_utf8_string
	.type	OSSL_PARAM_construct_utf8_string, @function
OSSL_PARAM_construct_utf8_string:
.LFB172:
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
	movq	%rcx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L449
	cmpq	$0, -32(%rbp)
	jne	.L449
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
.L449:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	OSSL_PARAM_construct_utf8_string, .-OSSL_PARAM_construct_utf8_string
	.globl	OSSL_PARAM_construct_octet_string
	.type	OSSL_PARAM_construct_octet_string, @function
OSSL_PARAM_construct_octet_string:
.LFB173:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	OSSL_PARAM_construct_octet_string, .-OSSL_PARAM_construct_octet_string
	.type	get_ptr_internal, @function
get_ptr_internal:
.LFB174:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L454
	cmpq	$0, -8(%rbp)
	jne	.L455
.L454:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L456
.L455:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L457
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L456
.L457:
	cmpq	$0, -24(%rbp)
	je	.L458
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L458:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L456:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	get_ptr_internal, .-get_ptr_internal
	.globl	OSSL_PARAM_get_utf8_ptr
	.type	OSSL_PARAM_get_utf8_ptr, @function
OSSL_PARAM_get_utf8_ptr:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$6, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	get_ptr_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	OSSL_PARAM_get_utf8_ptr, .-OSSL_PARAM_get_utf8_ptr
	.globl	OSSL_PARAM_get_octet_ptr
	.type	OSSL_PARAM_get_octet_ptr, @function
OSSL_PARAM_get_octet_ptr:
.LFB176:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	get_ptr_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	OSSL_PARAM_get_octet_ptr, .-OSSL_PARAM_get_octet_ptr
	.type	set_ptr_internal, @function
set_ptr_internal:
.LFB177:
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
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L464
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L465
.L464:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L466
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L466:
	movl	$1, %eax
.L465:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	set_ptr_internal, .-set_ptr_internal
	.globl	OSSL_PARAM_set_utf8_ptr
	.type	OSSL_PARAM_set_utf8_ptr, @function
OSSL_PARAM_set_utf8_ptr:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L468
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1504, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L469
.L468:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -16(%rbp)
	je	.L470
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	jmp	.L471
.L470:
	movl	$0, %edx
.L471:
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	set_ptr_internal
.L469:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	OSSL_PARAM_set_utf8_ptr, .-OSSL_PARAM_set_utf8_ptr
	.globl	OSSL_PARAM_set_octet_ptr
	.type	OSSL_PARAM_set_octet_ptr, @function
OSSL_PARAM_set_octet_ptr:
.LFB179:
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
	cmpq	$0, -8(%rbp)
	jne	.L473
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L474
.L473:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movq	%rax, %rdi
	call	set_ptr_internal
.L474:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	OSSL_PARAM_set_octet_ptr, .-OSSL_PARAM_set_octet_ptr
	.globl	OSSL_PARAM_construct_utf8_ptr
	.type	OSSL_PARAM_construct_utf8_ptr, @function
OSSL_PARAM_construct_utf8_ptr:
.LFB180:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	OSSL_PARAM_construct_utf8_ptr, .-OSSL_PARAM_construct_utf8_ptr
	.globl	OSSL_PARAM_construct_octet_ptr
	.type	OSSL_PARAM_construct_octet_ptr, @function
OSSL_PARAM_construct_octet_ptr:
.LFB181:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$7, %edx
	movq	%rax, %rdi
	call	ossl_param_construct
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	OSSL_PARAM_construct_octet_ptr, .-OSSL_PARAM_construct_octet_ptr
	.globl	ossl_param_get1_octet_string
	.type	ossl_param_get1_octet_string, @function
ossl_param_get1_octet_string:
.LFB182:
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
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L480
	movl	$-1, %eax
	jmp	.L483
.L480:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L482
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L482
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L482
	movl	$0, %eax
	jmp	.L483
.L482:
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1559, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L483:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	ossl_param_get1_octet_string, .-ossl_param_get1_octet_string
	.type	setbuf_fromparams, @function
setbuf_fromparams:
.LFB183:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L485
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_init_null@PLT
	testl	%eax, %eax
	jne	.L488
	movl	$0, %eax
	jmp	.L495
.L485:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L488
	movl	$0, %eax
	jmp	.L495
.L492:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L496
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L491
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L491
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L497
.L491:
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -72(%rbp)
.L488:
	cmpq	$0, -72(%rbp)
	jne	.L492
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L498
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L498
	movl	$1, -4(%rbp)
	jmp	.L490
.L496:
	nop
	jmp	.L490
.L497:
	nop
	jmp	.L490
.L498:
	nop
.L490:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	-4(%rbp), %eax
.L495:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	setbuf_fromparams, .-setbuf_fromparams
	.globl	ossl_param_get1_concat_octet_string
	.type	ossl_param_get1_concat_octet_string, @function
ossl_param_get1_concat_octet_string:
.LFB184:
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
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L500
	movl	$-1, %eax
	jmp	.L508
.L500:
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	setbuf_fromparams
	testl	%eax, %eax
	jne	.L502
	movl	$0, %eax
	jmp	.L508
.L502:
	cmpq	$0, -72(%rbp)
	je	.L503
	movq	-24(%rbp), %rax
	cmpq	%rax, -72(%rbp)
	jnb	.L503
	movl	$0, %eax
	jmp	.L508
.L503:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L504
	leaq	.LC0(%rip), %rax
	movl	$1617, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L509
	movl	$0, %eax
	jmp	.L508
.L504:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1623, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L507
	movl	$0, %eax
	jmp	.L508
.L507:
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	setbuf_fromparams
	testl	%eax, %eax
	jne	.L510
	movq	-24(%rbp), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$1629, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$0, %eax
	jmp	.L508
.L509:
	nop
	jmp	.L506
.L510:
	nop
.L506:
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1634, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L508:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	ossl_param_get1_concat_octet_string, .-ossl_param_get1_concat_octet_string
	.globl	OSSL_PARAM_construct_end
	.type	OSSL_PARAM_construct_end, @function
OSSL_PARAM_construct_end:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	OSSL_PARAM_construct_end, .-OSSL_PARAM_construct_end
	.type	get_string_ptr_internal, @function
get_string_ptr_internal:
.LFB186:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L514
	cmpq	$0, -8(%rbp)
	jne	.L515
.L514:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1651, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L516
.L515:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L517
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1655, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L516
.L517:
	cmpq	$0, -24(%rbp)
	je	.L518
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L518:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L516:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	get_string_ptr_internal, .-get_string_ptr_internal
	.globl	OSSL_PARAM_get_utf8_string_ptr
	.type	OSSL_PARAM_get_utf8_string_ptr, @function
OSSL_PARAM_get_utf8_string_ptr:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	movl	%eax, -4(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -4(%rbp)
	jne	.L520
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$4, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	get_string_ptr_internal
	testl	%eax, %eax
	je	.L521
.L520:
	movl	$1, %eax
	jmp	.L523
.L521:
	movl	$0, %eax
.L523:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	OSSL_PARAM_get_utf8_string_ptr, .-OSSL_PARAM_get_utf8_string_ptr
	.globl	OSSL_PARAM_get_octet_string_ptr
	.type	OSSL_PARAM_get_octet_string_ptr, @function
OSSL_PARAM_get_octet_string_ptr:
.LFB188:
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
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_ptr@PLT
	movl	%eax, -4(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -4(%rbp)
	jne	.L525
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	get_string_ptr_internal
	testl	%eax, %eax
	je	.L526
.L525:
	movl	$1, %eax
	jmp	.L528
.L526:
	movl	$0, %eax
.L528:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	OSSL_PARAM_get_octet_string_ptr, .-OSSL_PARAM_get_octet_string_ptr
	.section	.rodata
	.align 8
	.type	__func__.27, @object
	.size	__func__.27, 13
__func__.27:
	.string	"copy_integer"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 21
__func__.26:
	.string	"unsigned_from_signed"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 16
__func__.25:
	.string	"general_get_int"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 16
__func__.24:
	.string	"general_set_int"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 17
__func__.23:
	.string	"general_get_uint"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 17
__func__.22:
	.string	"general_set_uint"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 21
__func__.21:
	.string	"OSSL_PARAM_get_int32"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 21
__func__.20:
	.string	"OSSL_PARAM_set_int32"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 22
__func__.19:
	.string	"OSSL_PARAM_get_uint32"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 22
__func__.18:
	.string	"OSSL_PARAM_set_uint32"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 21
__func__.17:
	.string	"OSSL_PARAM_get_int64"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 21
__func__.16:
	.string	"OSSL_PARAM_set_int64"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 22
__func__.15:
	.string	"OSSL_PARAM_get_uint64"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 22
__func__.14:
	.string	"OSSL_PARAM_set_uint64"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 18
__func__.13:
	.string	"OSSL_PARAM_get_BN"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 18
__func__.12:
	.string	"OSSL_PARAM_set_BN"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 22
__func__.11:
	.string	"OSSL_PARAM_get_double"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 22
__func__.10:
	.string	"OSSL_PARAM_set_double"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 20
__func__.9:
	.string	"get_string_internal"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 27
__func__.8:
	.string	"OSSL_PARAM_get_utf8_string"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 20
__func__.7:
	.string	"set_string_internal"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 27
__func__.6:
	.string	"OSSL_PARAM_set_utf8_string"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 28
__func__.5:
	.string	"OSSL_PARAM_set_octet_string"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"get_ptr_internal"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"set_ptr_internal"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"OSSL_PARAM_set_utf8_ptr"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"OSSL_PARAM_set_octet_ptr"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"get_string_ptr_internal"
	.align 8
.LC1:
	.long	0
	.long	-1042284544
	.align 8
.LC2:
	.long	-4194304
	.long	1105199103
	.align 8
.LC4:
	.long	-2097152
	.long	1106247679
	.align 8
.LC5:
	.long	0
	.long	-1008730112
	.align 8
.LC6:
	.long	0
	.long	1138753536
	.align 8
.LC7:
	.long	0
	.long	1139802112
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

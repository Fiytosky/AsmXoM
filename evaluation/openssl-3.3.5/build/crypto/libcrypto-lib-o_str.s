	.file	"o_str.c"
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
	.globl	CRYPTO_strdup
	.type	CRYPTO_strdup, @function
CRYPTO_strdup:
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
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L8:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	CRYPTO_strdup, .-CRYPTO_strdup
	.globl	CRYPTO_strndup
	.type	CRYPTO_strndup, @function
CRYPTO_strndup:
.LFB161:
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
	cmpq	$0, -24(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L12:
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_strndup, .-CRYPTO_strndup
	.globl	CRYPTO_memdup
	.type	CRYPTO_memdup, @function
CRYPTO_memdup:
.LFB162:
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
	cmpq	$0, -24(%rbp)
	je	.L14
	cmpq	$2147483646, -32(%rbp)
	jbe	.L15
.L14:
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	CRYPTO_memdup, .-CRYPTO_memdup
	.globl	OPENSSL_strnlen
	.type	OPENSSL_strnlen, @function
OPENSSL_strnlen:
.LFB163:
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
	jmp	.L19
.L21:
	addq	$1, -8(%rbp)
.L19:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L21
.L20:
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	OPENSSL_strnlen, .-OPENSSL_strnlen
	.globl	OPENSSL_strlcpy
	.type	OPENSSL_strlcpy, @function
OPENSSL_strlcpy:
.LFB164:
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
	movq	$0, -8(%rbp)
	jmp	.L24
.L26:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	subq	$1, -40(%rbp)
.L24:
	cmpq	$1, -40(%rbp)
	jbe	.L25
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L26
.L25:
	cmpq	$0, -40(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L27:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	OPENSSL_strlcpy, .-OPENSSL_strlcpy
	.globl	OPENSSL_strlcat
	.type	OPENSSL_strlcat, @function
OPENSSL_strlcat:
.LFB165:
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
	movq	$0, -8(%rbp)
	jmp	.L30
.L32:
	addq	$1, -8(%rbp)
	subq	$1, -40(%rbp)
	addq	$1, -24(%rbp)
.L30:
	cmpq	$0, -40(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L32
.L31:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	OPENSSL_strlcat, .-OPENSSL_strlcat
	.globl	OPENSSL_hexchar2int
	.type	OPENSSL_hexchar2int, @function
OPENSSL_hexchar2int:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	cmpl	$102, %eax
	je	.L35
	cmpl	$102, %eax
	jg	.L36
	cmpl	$101, %eax
	je	.L37
	cmpl	$101, %eax
	jg	.L36
	cmpl	$100, %eax
	je	.L38
	cmpl	$100, %eax
	jg	.L36
	cmpl	$99, %eax
	je	.L39
	cmpl	$99, %eax
	jg	.L36
	cmpl	$98, %eax
	je	.L40
	cmpl	$98, %eax
	jg	.L36
	cmpl	$97, %eax
	je	.L41
	cmpl	$97, %eax
	jg	.L36
	cmpl	$70, %eax
	je	.L35
	cmpl	$70, %eax
	jg	.L36
	cmpl	$69, %eax
	je	.L37
	cmpl	$69, %eax
	jg	.L36
	cmpl	$68, %eax
	je	.L38
	cmpl	$68, %eax
	jg	.L36
	cmpl	$67, %eax
	je	.L39
	cmpl	$67, %eax
	jg	.L36
	cmpl	$66, %eax
	je	.L40
	cmpl	$66, %eax
	jg	.L36
	cmpl	$65, %eax
	je	.L41
	cmpl	$65, %eax
	jg	.L36
	cmpl	$57, %eax
	je	.L42
	cmpl	$57, %eax
	jg	.L36
	cmpl	$56, %eax
	je	.L43
	cmpl	$56, %eax
	jg	.L36
	cmpl	$55, %eax
	je	.L44
	cmpl	$55, %eax
	jg	.L36
	cmpl	$54, %eax
	je	.L45
	cmpl	$54, %eax
	jg	.L36
	cmpl	$53, %eax
	je	.L46
	cmpl	$53, %eax
	jg	.L36
	cmpl	$52, %eax
	je	.L47
	cmpl	$52, %eax
	jg	.L36
	cmpl	$51, %eax
	je	.L48
	cmpl	$51, %eax
	jg	.L36
	cmpl	$50, %eax
	je	.L49
	cmpl	$50, %eax
	jg	.L36
	cmpl	$48, %eax
	je	.L50
	cmpl	$49, %eax
	je	.L51
	jmp	.L36
.L50:
	movl	$0, %eax
	jmp	.L52
.L51:
	movl	$1, %eax
	jmp	.L52
.L49:
	movl	$2, %eax
	jmp	.L52
.L48:
	movl	$3, %eax
	jmp	.L52
.L47:
	movl	$4, %eax
	jmp	.L52
.L46:
	movl	$5, %eax
	jmp	.L52
.L45:
	movl	$6, %eax
	jmp	.L52
.L44:
	movl	$7, %eax
	jmp	.L52
.L43:
	movl	$8, %eax
	jmp	.L52
.L42:
	movl	$9, %eax
	jmp	.L52
.L41:
	movl	$10, %eax
	jmp	.L52
.L40:
	movl	$11, %eax
	jmp	.L52
.L39:
	movl	$12, %eax
	jmp	.L52
.L38:
	movl	$13, %eax
	jmp	.L52
.L37:
	movl	$14, %eax
	jmp	.L52
.L35:
	movl	$15, %eax
	jmp	.L52
.L36:
	movl	$-1, %eax
.L52:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	OPENSSL_hexchar2int, .-OPENSSL_hexchar2int
	.section	.rodata
.LC0:
	.string	"../crypto/o_str.c"
	.text
	.type	hexstr2buf_sep, @function
hexstr2buf_sep:
.LFB167:
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
	movl	%r8d, %eax
	movb	%al, -84(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L54
.L61:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %edx
	movsbl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L55
	cmpb	$0, -84(%rbp)
	je	.L55
	jmp	.L54
.L55:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -26(%rbp)
	cmpb	$0, -26(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L56:
	movzbl	-26(%rbp), %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -32(%rbp)
	movzbl	-25(%rbp), %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -32(%rbp)
	js	.L58
	cmpl	$0, -36(%rbp)
	jns	.L59
.L58:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$158, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L59:
	addq	$1, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	-24(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L60
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L60:
	movl	-36(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L54:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L61
	cmpq	$0, -72(%rbp)
	je	.L62
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L62:
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	hexstr2buf_sep, .-hexstr2buf_sep
	.globl	OPENSSL_hexstr2buf_ex
	.type	OPENSSL_hexstr2buf_ex, @function
OPENSSL_hexstr2buf_ex:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movb	%al, -36(%rbp)
	movsbl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	hexstr2buf_sep
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	OPENSSL_hexstr2buf_ex, .-OPENSSL_hexstr2buf_ex
	.globl	ossl_hexstr2buf_sep
	.type	ossl_hexstr2buf_sep, @function
ossl_hexstr2buf_sep:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	ja	.L66
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L72
.L66:
	shrq	-8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$197, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L68
	movl	$0, %eax
	jmp	.L72
.L68:
	cmpq	$0, -48(%rbp)
	je	.L69
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L69:
	movq	$0, -24(%rbp)
	movsbl	-52(%rbp), %edi
	movq	-40(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	hexstr2buf_sep
	testl	%eax, %eax
	je	.L70
	cmpq	$0, -48(%rbp)
	je	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L71:
	movq	-16(%rbp), %rax
	jmp	.L72
.L70:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ossl_hexstr2buf_sep, .-ossl_hexstr2buf_sep
	.globl	OPENSSL_hexstr2buf
	.type	OPENSSL_hexstr2buf, @function
OPENSSL_hexstr2buf:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_hexstr2buf_sep@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	OPENSSL_hexstr2buf, .-OPENSSL_hexstr2buf
	.type	buf2hexstr_sep, @function
buf2hexstr_sep:
.LFB171:
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
	movl	%r9d, %eax
	movb	%al, -92(%rbp)
	cmpb	$0, -92(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L76
	movq	-88(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L77
.L76:
	movq	-88(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.L77:
	cmpq	$0, -32(%rbp)
	jne	.L78
	addq	$1, -32(%rbp)
.L78:
	cmpq	$0, -72(%rbp)
	je	.L79
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L79:
	cmpq	$0, -56(%rbp)
	jne	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L82
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$236, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L82:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L85:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movslq	%ecx, %rdx
	leaq	hexdig.0(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movslq	%ecx, %rdx
	leaq	hexdig.0(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	cmpl	$0, -36(%rbp)
	je	.L84
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	-92(%rbp), %edx
	movb	%dl, (%rax)
.L84:
	addq	$1, -24(%rbp)
	addq	$1, -8(%rbp)
.L83:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L85
	cmpl	$0, -36(%rbp)
	je	.L86
	cmpq	$0, -88(%rbp)
	je	.L86
	subq	$1, -16(%rbp)
.L86:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	buf2hexstr_sep, .-buf2hexstr_sep
	.globl	OPENSSL_buf2hexstr_ex
	.type	OPENSSL_buf2hexstr_ex, @function
OPENSSL_buf2hexstr_ex:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, %eax
	movb	%al, -44(%rbp)
	movsbl	-44(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	buf2hexstr_sep
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	OPENSSL_buf2hexstr_ex, .-OPENSSL_buf2hexstr_ex
	.globl	ossl_buf2hexstr_sep
	.type	ossl_buf2hexstr_sep, @function
ossl_buf2hexstr_sep:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L90
	leaq	.LC0(%rip), %rax
	movl	$270, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	jmp	.L91
.L90:
	cmpb	$0, -36(%rbp)
	je	.L92
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L93
.L92:
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L93:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$273, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L91
.L94:
	movsbl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	buf2hexstr_sep
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rax
	jmp	.L91
.L95:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$278, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	ossl_buf2hexstr_sep, .-ossl_buf2hexstr_sep
	.globl	OPENSSL_buf2hexstr
	.type	OPENSSL_buf2hexstr, @function
OPENSSL_buf2hexstr:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_buf2hexstr_sep@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	OPENSSL_buf2hexstr, .-OPENSSL_buf2hexstr
	.globl	openssl_strerror_r
	.type	openssl_strerror_r, @function
openssl_strerror_r:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	__xpg_strerror_r@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	openssl_strerror_r, .-openssl_strerror_r
	.globl	OPENSSL_strcasecmp
	.type	OPENSSL_strcasecmp, @function
OPENSSL_strcasecmp:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	jmp	.L101
.L103:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L103
	movl	-20(%rbp), %eax
.L102:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	OPENSSL_strcasecmp, .-OPENSSL_strcasecmp
	.globl	OPENSSL_strncasecmp
	.type	OPENSSL_strncasecmp, @function
OPENSSL_strncasecmp:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L105
.L109:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L106
	movl	-28(%rbp), %eax
	jmp	.L107
.L106:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L108
	movl	$0, %eax
	jmp	.L107
.L108:
	addq	$1, -24(%rbp)
.L105:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L109
	movl	$0, %eax
.L107:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	OPENSSL_strncasecmp, .-OPENSSL_strncasecmp
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"hexstr2buf_sep"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ossl_hexstr2buf_sep"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"buf2hexstr_sep"
	.align 16
	.type	hexdig.0, @object
	.size	hexdig.0, 17
hexdig.0:
	.string	"0123456789ABCDEF"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"http_lib.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
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
.LFE161:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
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
.LFE162:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	init_pstring, @function
init_pstring:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L7:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	init_pstring, .-init_pstring
	.type	init_pint, @function
init_pint:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L10:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	init_pint, .-init_pint
	.section	.rodata
.LC0:
	.string	"../crypto/http/http_lib.c"
	.text
	.type	copy_substring, @function
copy_substring:
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
	je	.L12
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$42, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L13
.L12:
	movl	$1, %eax
	jmp	.L15
.L13:
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	copy_substring, .-copy_substring
	.type	free_pstring, @function
free_pstring:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	free_pstring, .-free_pstring
	.section	.rodata
.LC1:
	.string	"://"
.LC2:
	.string	":/?#"
.LC3:
	.string	"0"
.LC4:
	.string	"%u"
.LC5:
	.string	"%s"
.LC6:
	.string	"/%s"
	.text
	.globl	OSSL_parse_url
	.type	OSSL_parse_url, @function
OSSL_parse_url:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movl	$0, -140(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	init_pint
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	cmpq	$0, -152(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L20:
	movq	-152(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L22
	movq	-152(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L51
	addq	$3, -8(%rbp)
.L23:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L26
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L27:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L28
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L52
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L30
.L28:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strpbrk@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L31
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L31:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L30:
	leaq	.LC3(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L32
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.L32:
	leaq	-140(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	testl	%eax, %eax
	jle	.L33
	movl	-140(%rbp), %eax
	cmpl	$65535, %eax
	jbe	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	movl	$123, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L34:
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L36
.L38:
	addq	$1, -56(%rbp)
.L36:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L37
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L38
.L37:
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L39
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	addq	%rax, -8(%rbp)
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L40
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L40
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	je	.L40
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L40:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-112(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L41
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.L41:
	movq	-8(%rbp), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L42
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L43
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
.L43:
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.L42:
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	je	.L53
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	je	.L53
	movq	-120(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	je	.L53
	cmpq	$0, -192(%rbp)
	je	.L46
	movl	-140(%rbp), %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rax
	movl	%edx, (%rax)
.L46:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L47
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_substring
	testl	%eax, %eax
	jne	.L48
	jmp	.L35
.L47:
	cmpq	$0, 16(%rbp)
	je	.L48
	movq	-64(%rbp), %rax
	addq	$1, %rax
	subq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$173, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC6(%rip), %rdi
	movq	-136(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L48:
	movl	$1, %eax
	jmp	.L50
.L51:
	nop
	jmp	.L25
.L52:
	nop
.L25:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L53:
	nop
	jmp	.L35
.L54:
	nop
.L35:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	OSSL_parse_url, .-OSSL_parse_url
	.section	.rodata
.LC7:
	.string	"https"
.LC8:
	.string	"http"
.LC9:
	.string	"443"
.LC10:
	.string	"80"
.LC11:
	.string	"%d"
	.text
	.globl	OSSL_HTTP_parse_url
	.type	OSSL_HTTP_parse_url, @function
OSSL_HTTP_parse_url:
.LFB182:
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
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	init_pstring
	cmpq	$0, -48(%rbp)
	je	.L56
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
.L56:
	movq	-80(%rbp), %r8
	leaq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_parse_url@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L69
.L57:
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L59
	movl	$1, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L60
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L60
.L59:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L60
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$61, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$214, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L61
.L60:
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L62
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$222, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -4(%rbp)
	je	.L63
	leaq	.LC9(%rip), %rax
	jmp	.L64
.L63:
	leaq	.LC10(%rip), %rax
.L64:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	-28(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L70
	cmpq	$0, -80(%rbp)
	je	.L66
	movl	-28(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L66:
	cmpq	$0, -72(%rbp)
	je	.L67
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$229, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	jmp	.L61
.L62:
	cmpq	$0, -72(%rbp)
	je	.L68
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L67
.L68:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L67:
	movl	$1, %eax
	jmp	.L69
.L70:
	nop
.L61:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	free_pstring
	movl	$0, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	OSSL_HTTP_parse_url, .-OSSL_HTTP_parse_url
	.section	.rodata
.LC12:
	.string	"no_proxy"
.LC13:
	.string	"NO_PROXY"
	.text
	.type	use_proxy, @function
use_proxy:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -1072(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L72
	movl	$0, %eax
	jmp	.L82
.L72:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	jbe	.L74
	cmpq	$1026, -8(%rbp)
	ja	.L74
	movq	-1072(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L74
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-1072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L74
	subq	$2, -8(%rbp)
	movq	-1072(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-1056(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-1056(%rbp), %rax
	movq	%rax, -1072(%rbp)
.L74:
	cmpq	$0, -1064(%rbp)
	jne	.L75
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -1064(%rbp)
.L75:
	cmpq	$0, -1064(%rbp)
	jne	.L76
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -1064(%rbp)
.L76:
	cmpq	$0, -1064(%rbp)
	je	.L78
	movq	-1072(%rbp), %rdx
	movq	-1064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -16(%rbp)
	jmp	.L78
.L81:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-1072(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strstr@PLT
	movq	%rax, -16(%rbp)
.L78:
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-16(%rbp), %rax
	cmpq	-1064(%rbp), %rax
	je	.L80
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L80
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L81
.L80:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L79
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L79
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L81
.L79:
	cmpq	$0, -16(%rbp)
	sete	%al
	movzbl	%al, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	use_proxy, .-use_proxy
	.section	.rodata
.LC14:
	.string	"https_proxy"
.LC15:
	.string	"http_proxy"
.LC16:
	.string	"HTTPS_PROXY"
.LC17:
	.string	"HTTP_PROXY"
	.text
	.globl	OSSL_HTTP_adapt_proxy
	.type	OSSL_HTTP_adapt_proxy, @function
OSSL_HTTP_adapt_proxy:
.LFB184:
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
	cmpq	$0, -8(%rbp)
	jne	.L84
	cmpl	$0, -28(%rbp)
	je	.L85
	leaq	.LC14(%rip), %rax
	jmp	.L86
.L85:
	leaq	.LC15(%rip), %rax
.L86:
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -8(%rbp)
.L84:
	cmpq	$0, -8(%rbp)
	jne	.L87
	cmpl	$0, -28(%rbp)
	je	.L88
	leaq	.LC16(%rip), %rax
	jmp	.L89
.L88:
	leaq	.LC17(%rip), %rax
.L89:
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -8(%rbp)
.L87:
	cmpq	$0, -8(%rbp)
	je	.L90
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	use_proxy
	testl	%eax, %eax
	jne	.L91
.L90:
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-8(%rbp), %rax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	OSSL_HTTP_adapt_proxy, .-OSSL_HTTP_adapt_proxy
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"OSSL_parse_url"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"OSSL_HTTP_parse_url"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

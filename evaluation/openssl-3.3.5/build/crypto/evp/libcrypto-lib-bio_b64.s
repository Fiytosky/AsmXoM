	.file	"bio_b64.c"
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
	.string	"base64 encoding"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_b64, @object
	.size	methods_b64, 112
methods_b64:
	.long	523
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	b64_write
	.quad	bread_conv
	.quad	b64_read
	.quad	b64_puts
	.quad	0
	.quad	b64_ctrl
	.quad	b64_new
	.quad	b64_free
	.quad	b64_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_base64
	.type	BIO_f_base64, @function
BIO_f_base64:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_b64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	BIO_f_base64, .-BIO_f_base64
	.section	.rodata
.LC1:
	.string	"../crypto/evp/bio_b64.c"
	.text
	.type	b64_new, @function
b64_new:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$70, %edx
	movq	%rax, %rsi
	movl	$2568, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	call	EVP_ENCODE_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	b64_new, .-b64_new
	.type	b64_free, @function
b64_free:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	b64_free, .-b64_free
	.section	.rodata
	.align 8
.LC2:
	.string	"assertion failed: ctx->buf_len >= ctx->buf_off"
	.align 8
.LC3:
	.string	"assertion failed: ctx->buf_off + i < (int)sizeof(ctx->buf)"
	.text
	.type	b64_read, @function
b64_read:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L61
.L16:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L18
	cmpq	$0, -64(%rbp)
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L61
.L19:
	movq	-88(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L20
	movq	-56(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_DecodeInit@PLT
.L20:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L21
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L22
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L22:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L23
	movl	-100(%rbp), %eax
	movl	%eax, -8(%rbp)
.L23:
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cmpl	$1501, %eax
	jle	.L24
	leaq	.LC1(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$137, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L24:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	leaq	32(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -96(%rbp)
	movl	-8(%rbp), %eax
	subl	%eax, -100(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L21
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
.L21:
	movl	$0, -24(%rbp)
	jmp	.L25
.L58:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jle	.L62
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	$1024, %edx
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	1536(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	leaq	6(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L28
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L63
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L64
	movl	$0, -8(%rbp)
.L28:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-88(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	andl	$256, %eax
	testl	%eax, %eax
	je	.L31
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L32
.L31:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L33
	movq	-56(%rbp), %rax
	addq	$1542, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L34
.L43:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L65
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 12(%rax)
	jmp	.L36
.L37:
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecodeUpdate@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L38
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L38
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_DecodeInit@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L36
.L38:
	movq	-56(%rbp), %rax
	addq	$1542, %rax
	cmpq	%rax, -32(%rbp)
	je	.L39
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rdx
	addq	$1542, %rdx
	movq	-32(%rbp), %rcx
	subq	%rdx, %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L40
.L41:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rdx
	movl	-20(%rbp), %eax
	cltq
	movb	%cl, 1542(%rdx,%rax)
	addl	$1, -20(%rbp)
.L40:
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L41
.L39:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_DecodeInit@PLT
	movq	-56(%rbp), %rax
	movl	$0, 20(%rax)
	jmp	.L42
.L65:
	nop
.L36:
	addl	$1, -16(%rbp)
.L34:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L43
.L42:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L44
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jne	.L44
	movq	-56(%rbp), %rax
	addq	$1542, %rax
	cmpq	%rax, -32(%rbp)
	jne	.L45
	cmpl	$1024, -8(%rbp)
	jne	.L25
	movq	-56(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L25
.L45:
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L25
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movl	%eax, -72(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L47
.L48:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	%cl, 1542(%rdx,%rax)
	addl	$1, -12(%rbp)
.L47:
	movl	-12(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L48
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L25
.L44:
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L32
.L33:
	cmpl	$1023, -8(%rbp)
	jg	.L32
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jle	.L32
	jmp	.L25
.L32:
	movq	-88(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	andl	$256, %eax
	testl	%eax, %eax
	je	.L49
	movl	-8(%rbp), %eax
	andl	$-4, %eax
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rax
	leaq	1542(%rax), %rsi
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	EVP_DecodeBlock@PLT
	movl	%eax, -44(%rbp)
	cmpl	$2, -76(%rbp)
	jle	.L50
	movl	-76(%rbp), %eax
	subl	$1, %eax
	movq	-56(%rbp), %rdx
	cltq
	movzbl	1542(%rdx,%rax), %eax
	cmpb	$61, %al
	jne	.L50
	subl	$1, -44(%rbp)
	movl	-76(%rbp), %eax
	subl	$2, %eax
	movq	-56(%rbp), %rdx
	cltq
	movzbl	1542(%rdx,%rax), %eax
	cmpb	$61, %al
	jne	.L50
	subl	$1, -44(%rbp)
.L50:
	movl	-76(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L51
	movl	-8(%rbp), %eax
	subl	-76(%rbp), %eax
	cltq
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	leaq	1536(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	leaq	6(%rdx), %rsi
	movq	-56(%rbp), %rdx
	leaq	1542(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memmove@PLT
	movl	-8(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
.L51:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$0, -44(%rbp)
	jle	.L52
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
.L52:
	movl	-44(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L53
.L49:
	movq	-56(%rbp), %rax
	leaq	1542(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecodeUpdate@PLT
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
.L53:
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
	cmpl	$0, -8(%rbp)
	jns	.L54
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L27
.L54:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L55
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L56
.L55:
	movl	-100(%rbp), %eax
	movl	%eax, -8(%rbp)
.L56:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L57
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
.L57:
	movl	-8(%rbp), %eax
	subl	%eax, -100(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -96(%rbp)
.L25:
	cmpl	$0, -100(%rbp)
	jg	.L58
	jmp	.L27
.L62:
	nop
	jmp	.L27
.L63:
	nop
	jmp	.L27
.L64:
	nop
.L27:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -4(%rbp)
	jne	.L59
	movl	-24(%rbp), %eax
	jmp	.L61
.L59:
	movl	-4(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	b64_read, .-b64_read
	.section	.rodata
	.align 8
.LC4:
	.string	"assertion failed: ctx->buf_off < (int)sizeof(ctx->buf)"
	.align 8
.LC5:
	.string	"assertion failed: ctx->buf_len <= (int)sizeof(ctx->buf)"
.LC6:
	.string	"assertion failed: i <= n"
	.align 8
.LC7:
	.string	"assertion failed: ctx->buf_off <= (int)sizeof(ctx->buf)"
	.align 8
.LC8:
	.string	"assertion failed: ctx->tmp_len <= 3"
	.text
	.type	b64_write, @function
b64_write:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L67
	cmpq	$0, -24(%rbp)
	jne	.L68
.L67:
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L70
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_EncodeInit@PLT
.L70:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1501, %eax
	jle	.L71
	leaq	.LC1(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$340, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L71:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1502, %eax
	jle	.L72
	leaq	.LC1(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L72:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L73
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L73:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	jmp	.L74
.L79:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L75
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-28(%rbp), %eax
	jmp	.L69
.L75:
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L76
	leaq	.LC1(%rip), %rcx
	leaq	.LC6(%rip), %rax
	movl	$350, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L76:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1502, %eax
	jle	.L77
	leaq	.LC1(%rip), %rcx
	leaq	.LC7(%rip), %rax
	movl	$352, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L77:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L78
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$353, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L78:
	movl	-28(%rbp), %eax
	subl	%eax, -8(%rbp)
.L74:
	cmpl	$0, -8(%rbp)
	jg	.L79
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L80
	cmpl	$0, -52(%rbp)
	jg	.L82
.L80:
	movl	$0, %eax
	jmp	.L69
.L107:
	movl	-52(%rbp), %eax
	movl	$1024, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	andl	$256, %eax
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L84
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jle	.L85
	leaq	.LC1(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$368, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L85:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	$3, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L86
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
.L86:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	1536(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	6(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jle	.L108
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rdx
	leaq	1542(%rdx), %rsi
	movq	-16(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	EVP_EncodeBlock@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1502, %eax
	jle	.L89
	leaq	.LC1(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$382, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L89:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L90
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$383, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L90:
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L91
.L84:
	cmpl	$2, -8(%rbp)
	jg	.L92
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	leaq	1542(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	jmp	.L88
.L92:
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	subl	%edx, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_EncodeBlock@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1502, %eax
	jle	.L93
	leaq	.LC1(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$399, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L93:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L94
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L94:
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	jmp	.L91
.L83:
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edi
	movq	-48(%rbp), %rcx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncodeUpdate@PLT
	testl	%eax, %eax
	jne	.L95
	cmpl	$0, -4(%rbp)
	je	.L96
	movl	-4(%rbp), %eax
	jmp	.L69
.L96:
	movl	$-1, %eax
	jmp	.L69
.L95:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1502, %eax
	jle	.L98
	leaq	.LC1(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$407, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L98:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L99
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$408, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L99:
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
.L91:
	movl	-8(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L100
.L106:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L101
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -4(%rbp)
	jne	.L102
	movl	-28(%rbp), %eax
	jmp	.L69
.L102:
	movl	-4(%rbp), %eax
	jmp	.L69
.L101:
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L104
	leaq	.LC1(%rip), %rcx
	leaq	.LC6(%rip), %rax
	movl	$422, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L104:
	movl	-28(%rbp), %eax
	subl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1502, %eax
	jle	.L105
	leaq	.LC1(%rip), %rcx
	leaq	.LC7(%rip), %rax
	movl	$425, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L105:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L100
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$426, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L100:
	cmpl	$0, -8(%rbp)
	jg	.L106
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
.L82:
	cmpl	$0, -52(%rbp)
	jg	.L107
	jmp	.L88
.L108:
	nop
.L88:
	movl	-4(%rbp), %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	b64_write, .-b64_write
	.type	b64_ctrl, @function
b64_ctrl:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L110
	cmpq	$0, -24(%rbp)
	jne	.L111
.L110:
	movl	$0, %eax
	jmp	.L112
.L111:
	cmpl	$101, -44(%rbp)
	je	.L113
	cmpl	$101, -44(%rbp)
	jg	.L114
	cmpl	$13, -44(%rbp)
	je	.L115
	cmpl	$13, -44(%rbp)
	jg	.L114
	cmpl	$12, -44(%rbp)
	je	.L133
	cmpl	$12, -44(%rbp)
	jg	.L114
	cmpl	$11, -44(%rbp)
	je	.L129
	cmpl	$11, -44(%rbp)
	jg	.L114
	cmpl	$10, -44(%rbp)
	je	.L118
	cmpl	$10, -44(%rbp)
	jg	.L114
	cmpl	$1, -44(%rbp)
	je	.L119
	cmpl	$2, -44(%rbp)
	je	.L120
	jmp	.L114
.L119:
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L121
.L120:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jg	.L122
	movq	$1, -8(%rbp)
	jmp	.L121
.L122:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L121
.L115:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L124
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$460, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L124:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L125
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L125
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_num@PLT
	testl	%eax, %eax
	je	.L125
	movq	$1, -8(%rbp)
	jmp	.L134
.L125:
	cmpq	$0, -8(%rbp)
	jg	.L134
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L134
.L118:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L127
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$469, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L127:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L135
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L135
.L117:
	jmp	.L129
.L130:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	b64_write
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L129
	movl	-28(%rbp), %eax
	cltq
	jmp	.L112
.L129:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L130
	movq	-40(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	andl	$256, %eax
	testl	%eax, %eax
	je	.L131
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L132
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rdx
	leaq	1542(%rdx), %rsi
	movq	-16(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	EVP_EncodeBlock@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L117
.L131:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L132
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_num@PLT
	testl	%eax, %eax
	je	.L132
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncodeFinal@PLT
	jmp	.L117
.L132:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L121
.L113:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L121
.L114:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L121
.L133:
	nop
	jmp	.L121
.L134:
	nop
	jmp	.L121
.L135:
	nop
.L121:
	movq	-8(%rbp), %rax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	b64_ctrl, .-b64_ctrl
	.type	b64_callback_ctrl, @function
b64_callback_ctrl:
.LFB408:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	b64_callback_ctrl, .-b64_callback_ctrl
	.type	b64_puts, @function
b64_puts:
.LFB409:
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
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	b64_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	b64_puts, .-b64_puts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

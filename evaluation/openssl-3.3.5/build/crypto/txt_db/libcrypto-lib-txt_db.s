	.file	"txt_db.c"
	.text
	.type	ossl_check_OPENSSL_STRING_lh_plain_type, @function
ossl_check_OPENSSL_STRING_lh_plain_type:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	ossl_check_OPENSSL_STRING_lh_plain_type, .-ossl_check_OPENSSL_STRING_lh_plain_type
	.type	ossl_check_const_OPENSSL_STRING_lh_plain_type, @function
ossl_check_const_OPENSSL_STRING_lh_plain_type:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	ossl_check_const_OPENSSL_STRING_lh_plain_type, .-ossl_check_const_OPENSSL_STRING_lh_plain_type
	.type	ossl_check_OPENSSL_STRING_lh_type, @function
ossl_check_OPENSSL_STRING_lh_type:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	ossl_check_OPENSSL_STRING_lh_type, .-ossl_check_OPENSSL_STRING_lh_type
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
	.type	sk_OPENSSL_PSTRING_num, @function
sk_OPENSSL_PSTRING_num:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	sk_OPENSSL_PSTRING_num, .-sk_OPENSSL_PSTRING_num
	.type	sk_OPENSSL_PSTRING_value, @function
sk_OPENSSL_PSTRING_value:
.LFB161:
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
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	sk_OPENSSL_PSTRING_value, .-sk_OPENSSL_PSTRING_value
	.type	sk_OPENSSL_PSTRING_new_null, @function
sk_OPENSSL_PSTRING_new_null:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	sk_OPENSSL_PSTRING_new_null, .-sk_OPENSSL_PSTRING_new_null
	.type	sk_OPENSSL_PSTRING_free, @function
sk_OPENSSL_PSTRING_free:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	sk_OPENSSL_PSTRING_free, .-sk_OPENSSL_PSTRING_free
	.type	sk_OPENSSL_PSTRING_push, @function
sk_OPENSSL_PSTRING_push:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	sk_OPENSSL_PSTRING_push, .-sk_OPENSSL_PSTRING_push
	.type	sk_OPENSSL_PSTRING_find, @function
sk_OPENSSL_PSTRING_find:
.LFB177:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	sk_OPENSSL_PSTRING_find, .-sk_OPENSSL_PSTRING_find
	.section	.rodata
.LC0:
	.string	"../crypto/txt_db/txt_db.c"
	.text
	.globl	TXT_DB_read
	.type	TXT_DB_read, @function
TXT_DB_read:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$512, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -56(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L52
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L53
	leaq	.LC0(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	call	sk_OPENSSL_PSTRING_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movl	-92(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movl	-92(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movl	$0, -16(%rbp)
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -16(%rbp)
.L30:
	movl	-16(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L31
	movl	-92(%rbp), %eax
	addl	$1, %eax
	sall	$3, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, -28(%rbp)
.L48:
	cmpl	$0, -28(%rbp)
	je	.L32
	addl	$512, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	je	.L58
.L32:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L59
	cmpl	$0, -28(%rbp)
	jne	.L35
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L60
.L35:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L61
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-60(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L62
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -12(%rbp)
.L45:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L63
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L41
	cmpl	$0, -12(%rbp)
	je	.L42
	subq	$1, -40(%rbp)
	jmp	.L41
.L42:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$0, (%rax)
	addq	$1, -48(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.L64
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L44
.L41:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L44:
	jmp	.L45
.L63:
	nop
	jmp	.L40
.L64:
	nop
.L40:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$0, (%rax)
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jne	.L46
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L47
.L46:
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$6, 32(%rax)
	jmp	.L24
.L47:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_push
	testl	%eax, %eax
	jne	.L48
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L24
.L60:
	nop
	jmp	.L48
.L61:
	nop
	jmp	.L48
.L59:
	nop
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L49
.L52:
	nop
	jmp	.L24
.L53:
	nop
	jmp	.L24
.L54:
	nop
	jmp	.L24
.L55:
	nop
	jmp	.L24
.L56:
	nop
	jmp	.L24
.L57:
	nop
	jmp	.L24
.L58:
	nop
	jmp	.L24
.L62:
	nop
.L24:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L50:
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	TXT_DB_read, .-TXT_DB_read
	.globl	TXT_DB_get_by_index
	.type	TXT_DB_get_by_index, @function
TXT_DB_get_by_index:
.LFB186:
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
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L66
	movq	-40(%rbp), %rax
	movq	$3, 32(%rax)
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L68
	movq	-40(%rbp), %rax
	movq	$4, 32(%rax)
	movl	$0, %eax
	jmp	.L67
.L68:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
.L67:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	TXT_DB_get_by_index, .-TXT_DB_get_by_index
	.globl	TXT_DB_create_index
	.type	TXT_DB_create_index, @function
TXT_DB_create_index:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L70
	movq	-72(%rbp), %rax
	movq	$3, 32(%rax)
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L72
	movq	-72(%rbp), %rax
	movq	$1, 32(%rax)
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	movl	%eax, -36(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L73
.L77:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -48(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L74
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L78
.L74:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L76
	movq	-72(%rbp), %rax
	movq	$2, 32(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_find
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	movl	$0, %eax
	jmp	.L71
.L76:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	testq	%rax, %rax
	jne	.L75
	movq	-72(%rbp), %rax
	movq	$1, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	movl	$0, %eax
	jmp	.L71
.L78:
	nop
.L75:
	addl	$1, -20(%rbp)
.L73:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L77
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
.L71:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	TXT_DB_create_index, .-TXT_DB_create_index
	.globl	TXT_DB_write
	.type	TXT_DB_write, @function
TXT_DB_write:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	$-1, -56(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L96
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cltq
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L82
.L94:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L83
.L85:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L84:
	addq	$1, -16(%rbp)
.L83:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L85
	movq	-24(%rbp), %rax
	addl	%eax, %eax
	movq	-80(%rbp), %rdx
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	je	.L97
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L87
.L92:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L88
.L91:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L98
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L90
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$92, (%rax)
.L90:
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L91
.L98:
	nop
.L88:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$9, (%rax)
	addq	$1, -16(%rbp)
.L87:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.L92
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movb	$10, (%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cltq
	cmpq	%rax, -16(%rbp)
	jne	.L99
	movq	-16(%rbp), %rax
	addq	%rax, -32(%rbp)
	addq	$1, -8(%rbp)
.L82:
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.L94
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L81
.L96:
	nop
	jmp	.L81
.L97:
	nop
	jmp	.L81
.L99:
	nop
.L81:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	TXT_DB_write, .-TXT_DB_write
	.globl	TXT_DB_insert
	.type	TXT_DB_insert, @function
TXT_DB_insert:
.LFB189:
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
	movl	$0, -20(%rbp)
	jmp	.L101
.L105:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L116
.L103:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L102
	movq	-40(%rbp), %rax
	movq	$2, 32(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L104
.L116:
	nop
.L102:
	addl	$1, -20(%rbp)
.L101:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L105
	movl	$0, -20(%rbp)
	jmp	.L106
.L110:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L117
.L108:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	testq	%rax, %rax
	je	.L118
	jmp	.L107
.L117:
	nop
.L107:
	addl	$1, -20(%rbp)
.L106:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L110
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_push
	testl	%eax, %eax
	je	.L119
	movl	$1, %eax
	jmp	.L112
.L118:
	nop
	jmp	.L109
.L119:
	nop
.L109:
	movq	-40(%rbp), %rax
	movq	$1, 32(%rax)
	jmp	.L113
.L115:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L114
	jmp	.L113
.L114:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_lh_plain_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_delete@PLT
.L113:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -20(%rbp)
	testl	%eax, %eax
	jg	.L115
	nop
.L104:
	movl	$0, %eax
.L112:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	TXT_DB_insert, .-TXT_DB_insert
	.globl	TXT_DB_free
	.type	TXT_DB_free, @function
TXT_DB_free:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L137
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L124
.L125:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	subl	$1, -4(%rbp)
.L124:
	cmpl	$0, -4(%rbp)
	jns	.L125
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$289, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L123:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$291, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L127
.L136:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L128
	movl	$0, -8(%rbp)
	jmp	.L129
.L130:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$302, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -8(%rbp)
.L129:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L130
	jmp	.L131
.L128:
	movl	$0, -8(%rbp)
	jmp	.L132
.L135:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L133
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L134
.L133:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$306, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L134:
	addl	$1, -8(%rbp)
.L132:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L135
.L131:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$309, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_free@PLT
	subl	$1, -4(%rbp)
.L127:
	cmpl	$0, -4(%rbp)
	jns	.L136
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_free
.L126:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L120
.L137:
	nop
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	TXT_DB_free, .-TXT_DB_free
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

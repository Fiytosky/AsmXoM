	.file	"encode.c"
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
	.type	data_bin2ascii, @object
	.size	data_bin2ascii, 65
data_bin2ascii:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.align 32
	.type	srpdata_bin2ascii, @object
	.size	srpdata_bin2ascii, 65
srpdata_bin2ascii:
	.string	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./"
	.align 32
	.type	data_ascii2bin, @object
	.size	data_ascii2bin, 128
data_ascii2bin:
	.base64	"////////////4PD///H////////////////////////g/////////////z7/8v8/NDU2Nzg5Ojs8Pf///wD///8AAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGf///////xobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIz//////8="
	.align 32
	.type	srpdata_ascii2bin, @object
	.size	srpdata_ascii2bin, 128
srpdata_ascii2bin:
	.base64	"////////////4PD///H////////////////////////g////////////////8j4/AAECAwQFBgcICf///wD///8KCwwNDg8QERITFBUWFxgZGhscHR4fICEiI////////yQlJicoKSorLC0uLzAxMjM0NTY3ODk6Ozw9//////8="
	.text
	.type	conv_ascii2bin, @function
conv_ascii2bin:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	jns	.L6
	movl	$-1, %eax
	jmp	.L7
.L6:
	movzbl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	conv_ascii2bin, .-conv_ascii2bin
	.section	.rodata
.LC0:
	.string	"../crypto/evp/encode.c"
	.text
	.globl	EVP_ENCODE_CTX_new
	.type	EVP_ENCODE_CTX_new, @function
EVP_ENCODE_CTX_new:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movl	$129, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	EVP_ENCODE_CTX_new, .-EVP_ENCODE_CTX_new
	.globl	EVP_ENCODE_CTX_free
	.type	EVP_ENCODE_CTX_free, @function
EVP_ENCODE_CTX_free:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	EVP_ENCODE_CTX_free, .-EVP_ENCODE_CTX_free
	.globl	EVP_ENCODE_CTX_copy
	.type	EVP_ENCODE_CTX_copy, @function
EVP_ENCODE_CTX_copy:
.LFB485:
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
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	EVP_ENCODE_CTX_copy, .-EVP_ENCODE_CTX_copy
	.globl	EVP_ENCODE_CTX_num
	.type	EVP_ENCODE_CTX_num, @function
EVP_ENCODE_CTX_num:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	EVP_ENCODE_CTX_num, .-EVP_ENCODE_CTX_num
	.globl	evp_encode_ctx_set_flags
	.type	evp_encode_ctx_set_flags, @function
evp_encode_ctx_set_flags:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 92(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	evp_encode_ctx_set_flags, .-evp_encode_ctx_set_flags
	.globl	EVP_EncodeInit
	.type	EVP_EncodeInit, @function
EVP_EncodeInit:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$48, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 92(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_EncodeInit, .-EVP_EncodeInit
	.section	.rodata
	.align 8
.LC1:
	.string	"assertion failed: ctx->length <= (int)sizeof(ctx->enc_data)"
	.text
	.globl	EVP_EncodeUpdate
	.type	EVP_EncodeUpdate, @function
EVP_EncodeUpdate:
.LFB489:
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
	movl	%r8d, -52(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$0, -52(%rbp)
	jg	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$80, %eax
	jle	.L20
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$171, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L20:
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	cmpl	%edx, -52(%rbp)
	jge	.L21
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-52(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L19
.L21:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-12(%rbp), %eax
	subl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	evp_encodeblock_int
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	movl	-16(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L23
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$10, (%rax)
	addq	$1, -8(%rbp)
.L23:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L24
.L27:
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_encodeblock_int
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	addq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L25
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$10, (%rax)
	addq	$1, -8(%rbp)
.L25:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L24:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L26
	cmpq	$2147483647, -8(%rbp)
	jbe	.L27
.L26:
	cmpq	$2147483647, -8(%rbp)
	jbe	.L28
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L19
.L28:
	cmpl	$0, -52(%rbp)
	je	.L29
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L29:
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_EncodeUpdate, .-EVP_EncodeUpdate
	.globl	EVP_EncodeFinal
	.type	EVP_EncodeFinal, @function
EVP_EncodeFinal:
.LFB490:
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
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	evp_encodeblock_int
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L32
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
.L32:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L31:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_EncodeFinal, .-EVP_EncodeFinal
	.type	evp_encodeblock_int, @function
evp_encodeblock_int:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L34
	movq	-40(%rbp), %rax
	movl	92(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L34
	leaq	srpdata_bin2ascii(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L35
.L34:
	leaq	data_bin2ascii(%rip), %rax
	movq	%rax, -24(%rbp)
.L35:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L36
.L42:
	cmpl	$2, -4(%rbp)
	jle	.L37
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$18, %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$12, %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$6, %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	jmp	.L38
.L37:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -4(%rbp)
	jne	.L39
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -16(%rbp)
.L39:
	movq	-16(%rbp), %rax
	shrq	$18, %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$12, %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	cmpl	$1, -4(%rbp)
	je	.L40
	movq	-16(%rbp), %rax
	shrq	$6, %rax
	andl	$63, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	jmp	.L41
.L40:
	movl	$61, %edx
.L41:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$61, (%rax)
.L38:
	addl	$4, -8(%rbp)
	addq	$3, -56(%rbp)
	subl	$3, -4(%rbp)
.L36:
	cmpl	$0, -4(%rbp)
	jg	.L42
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	evp_encodeblock_int, .-evp_encodeblock_int
	.globl	EVP_EncodeBlock
	.type	EVP_EncodeBlock, @function
EVP_EncodeBlock:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	evp_encodeblock_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	EVP_EncodeBlock, .-EVP_EncodeBlock
	.globl	EVP_DecodeInit
	.type	EVP_DecodeInit, @function
EVP_DecodeInit:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 92(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EVP_DecodeInit, .-EVP_DecodeInit
	.section	.rodata
	.align 8
.LC2:
	.string	"assertion failed: n < (int)sizeof(ctx->enc_data)"
	.text
	.globl	EVP_DecodeUpdate
	.type	EVP_DecodeUpdate, @function
EVP_DecodeUpdate:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L48
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L48
	addl	$1, -8(%rbp)
	cmpl	$1, -24(%rbp)
	jle	.L48
	movl	-24(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L48
	addl	$1, -8(%rbp)
.L48:
	cmpl	$0, -100(%rbp)
	jne	.L49
	movl	$0, -12(%rbp)
	jmp	.L50
.L49:
	movq	-72(%rbp), %rax
	movl	92(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L51
	leaq	srpdata_ascii2bin(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L52
.L51:
	leaq	data_ascii2bin(%rip), %rax
	movq	%rax, -32(%rbp)
.L52:
	movl	$0, -20(%rbp)
	jmp	.L53
.L66:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	cmpl	$255, -48(%rbp)
	jne	.L54
	movl	$-1, -12(%rbp)
	jmp	.L50
.L54:
	cmpl	$61, -44(%rbp)
	jne	.L55
	addl	$1, -8(%rbp)
	jmp	.L56
.L55:
	cmpl	$0, -8(%rbp)
	jle	.L56
	movl	-48(%rbp), %eax
	orl	$19, %eax
	cmpl	$243, %eax
	je	.L56
	movl	$-1, -12(%rbp)
	jmp	.L50
.L56:
	cmpl	$2, -8(%rbp)
	jle	.L57
	movl	$-1, -12(%rbp)
	jmp	.L50
.L57:
	cmpl	$242, -48(%rbp)
	jne	.L58
	movl	$1, -4(%rbp)
	jmp	.L59
.L58:
	movl	-48(%rbp), %eax
	orl	$19, %eax
	cmpl	$243, %eax
	je	.L60
	cmpl	$63, -24(%rbp)
	jle	.L61
	movl	$-1, -12(%rbp)
	jmp	.L50
.L61:
	cmpl	$79, -24(%rbp)
	jle	.L62
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$367, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L62:
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-44(%rbp), %edx
	movb	%dl, (%rax)
.L60:
	cmpl	$64, -24(%rbp)
	jne	.L63
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	evp_decodeblock_int
	movl	%eax, -52(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L64
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L65
.L64:
	movl	$-1, -12(%rbp)
	jmp	.L50
.L65:
	movl	-52(%rbp), %eax
	subl	-8(%rbp), %eax
	addl	%eax, -16(%rbp)
	movl	-52(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	addq	%rax, -80(%rbp)
.L63:
	addl	$1, -20(%rbp)
.L53:
	movl	-20(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L66
	nop
.L59:
	cmpl	$0, -24(%rbp)
	jle	.L67
	movl	-24(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L68
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	evp_decodeblock_int
	movl	%eax, -52(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L69
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L70
.L69:
	movl	$-1, -12(%rbp)
	jmp	.L50
.L70:
	movl	-52(%rbp), %eax
	subl	-8(%rbp), %eax
	addl	%eax, -16(%rbp)
	jmp	.L67
.L68:
	cmpl	$0, -4(%rbp)
	je	.L67
	movl	$-1, -12(%rbp)
	jmp	.L50
.L67:
	cmpl	$0, -4(%rbp)
	jne	.L71
	cmpl	$0, -24(%rbp)
	jne	.L72
	cmpl	$0, -8(%rbp)
	jne	.L71
.L72:
	movl	$1, %eax
	jmp	.L73
.L71:
	movl	$0, %eax
.L73:
	movl	%eax, -12(%rbp)
.L50:
	movq	-88(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	EVP_DecodeUpdate, .-EVP_DecodeUpdate
	.type	evp_decodeblock_int, @function
evp_decodeblock_int:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L76
	movq	-56(%rbp), %rax
	movl	92(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L76
	leaq	srpdata_ascii2bin(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L77
.L76:
	leaq	data_ascii2bin(%rip), %rax
	movq	%rax, -16(%rbp)
.L77:
	jmp	.L78
.L80:
	addq	$1, -72(%rbp)
	subl	$1, -76(%rbp)
.L78:
	cmpl	$0, -76(%rbp)
	jle	.L81
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	cmpb	$-32, %al
	je	.L80
	jmp	.L81
.L83:
	subl	$1, -76(%rbp)
.L81:
	cmpl	$3, -76(%rbp)
	jle	.L82
	movl	-76(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	orl	$19, %eax
	cmpb	$-13, %al
	je	.L83
.L82:
	movl	-76(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L84
	movl	$-1, %eax
	jmp	.L85
.L84:
	movl	$0, -4(%rbp)
	jmp	.L86
.L89:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	conv_ascii2bin
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L87
	movl	-24(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L87
	movl	-28(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L87
	movl	-32(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L88
.L87:
	movl	$-1, %eax
	jmp	.L85
.L88:
	movl	-20(%rbp), %eax
	cltq
	salq	$18, %rax
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	salq	$12, %rax
	orq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	salq	$6, %rax
	orq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-40(%rbp), %rdx
	movb	%dl, (%rax)
	addl	$3, -8(%rbp)
	addl	$4, -4(%rbp)
.L86:
	movl	-4(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L89
	movl	-8(%rbp), %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	evp_decodeblock_int, .-evp_decodeblock_int
	.globl	EVP_DecodeBlock
	.type	EVP_DecodeBlock, @function
EVP_DecodeBlock:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	evp_decodeblock_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	EVP_DecodeBlock, .-EVP_DecodeBlock
	.globl	EVP_DecodeFinal
	.type	EVP_DecodeFinal, @function
EVP_DecodeFinal:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	evp_decodeblock_int
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L94
	movl	$-1, %eax
	jmp	.L95
.L94:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L95
.L93:
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	EVP_DecodeFinal, .-EVP_DecodeFinal
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

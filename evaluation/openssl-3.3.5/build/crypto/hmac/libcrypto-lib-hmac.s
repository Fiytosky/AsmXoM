	.file	"hmac.c"
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
	.globl	HMAC_Init_ex
	.type	HMAC_Init_ex, @function
HMAC_Init_ex:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movl	%edx, -340(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%r8, -360(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -352(%rbp)
	je	.L6
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -352(%rbp)
	je	.L6
	cmpq	$0, -336(%rbp)
	je	.L7
	cmpl	$0, -340(%rbp)
	jns	.L6
.L7:
	movl	$0, %eax
	jmp	.L32
.L6:
	cmpq	$0, -352(%rbp)
	je	.L9
	movq	-328(%rbp), %rax
	movq	-352(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L10
.L9:
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	jmp	.L10
.L11:
	movl	$0, %eax
	jmp	.L32
.L10:
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_flags@PLT
	andl	$2, %eax
	testq	%rax, %rax
	je	.L12
	movl	$0, %eax
	jmp	.L32
.L12:
	cmpq	$0, -336(%rbp)
	je	.L13
	movl	$1, -8(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movl	%eax, -16(%rbp)
	cmpl	$144, -16(%rbp)
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L14
	movl	$0, %eax
	jmp	.L32
.L14:
	cmpl	$0, -16(%rbp)
	jns	.L15
	movl	$0, %eax
	jmp	.L32
.L15:
	movl	-16(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jge	.L16
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L17
	movl	-340(%rbp), %eax
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L17
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-164(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L32
.L16:
	cmpl	$0, -340(%rbp)
	js	.L19
	cmpl	$144, -340(%rbp)
	jle	.L20
.L19:
	movl	$0, %eax
	jmp	.L32
.L20:
	movl	-340(%rbp), %eax
	movslq	%eax, %rdx
	movq	-336(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-340(%rbp), %eax
	movl	%eax, -164(%rbp)
.L18:
	movl	-164(%rbp), %eax
	cmpl	$144, %eax
	je	.L21
	movl	-164(%rbp), %eax
	movl	$144, %edx
	subl	%eax, %edx
	movl	%edx, %edx
	movl	-164(%rbp), %ecx
	leaq	-320(%rbp), %rax
	movl	%ecx, %ecx
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L21:
	movl	$0, -12(%rbp)
	jmp	.L22
.L23:
	movl	-12(%rbp), %eax
	cltq
	movzbl	-320(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -12(%rbp)
.L22:
	cmpl	$143, -12(%rbp)
	jle	.L23
	movq	-328(%rbp), %rax
	movq	16(%rax), %rax
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L33
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L33
	movl	$0, -12(%rbp)
	jmp	.L27
.L28:
	movl	-12(%rbp), %eax
	cltq
	movzbl	-320(%rbp,%rax), %eax
	xorl	$92, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -12(%rbp)
.L27:
	cmpl	$143, -12(%rbp)
	jle	.L28
	movq	-328(%rbp), %rax
	movq	24(%rax), %rax
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L34
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L34
.L13:
	movq	-328(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1, -4(%rbp)
	jmp	.L26
.L33:
	nop
	jmp	.L26
.L34:
	nop
	jmp	.L26
.L35:
	nop
.L26:
	cmpl	$0, -8(%rbp)
	je	.L31
	leaq	-320(%rbp), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-160(%rbp), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L31:
	movl	-4(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	HMAC_Init_ex, .-HMAC_Init_ex
	.globl	HMAC_Init
	.type	HMAC_Init, @function
HMAC_Init:
.LFB403:
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
	cmpq	$0, -16(%rbp)
	je	.L37
	cmpq	$0, -32(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_reset@PLT
.L37:
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	HMAC_Init, .-HMAC_Init
	.globl	HMAC_Update
	.type	HMAC_Update, @function
HMAC_Update:
.LFB404:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	HMAC_Update, .-HMAC_Update
	.globl	HMAC_Final
	.type	HMAC_Final, @function
HMAC_Final:
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
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-4(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L52
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L53
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L55
	movl	$1, %eax
	jmp	.L50
.L51:
	nop
	jmp	.L44
.L52:
	nop
	jmp	.L44
.L53:
	nop
	jmp	.L44
.L54:
	nop
	jmp	.L44
.L55:
	nop
.L44:
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	HMAC_Final, .-HMAC_Final
	.globl	HMAC_size
	.type	HMAC_size, @function
HMAC_size:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	cltq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	HMAC_size, .-HMAC_size
	.section	.rodata
.LC0:
	.string	"../crypto/hmac/hmac.c"
	.text
	.globl	HMAC_CTX_new
	.type	HMAC_CTX_new, @function
HMAC_CTX_new:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$147, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_reset@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	HMAC_CTX_new, .-HMAC_CTX_new
	.type	hmac_ctx_cleanup, @function
hmac_ctx_cleanup:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_reset@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	hmac_ctx_cleanup, .-hmac_ctx_cleanup
	.globl	HMAC_CTX_free
	.type	HMAC_CTX_free, @function
HMAC_CTX_free:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_ctx_cleanup
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$173, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L64:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	HMAC_CTX_free, .-HMAC_CTX_free
	.type	hmac_ctx_alloc_mds, @function
hmac_ctx_alloc_mds:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L66
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L66:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
.L69:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movl	$0, %eax
	jmp	.L68
.L70:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L71:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	movl	$0, %eax
	jmp	.L68
.L72:
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	hmac_ctx_alloc_mds, .-hmac_ctx_alloc_mds
	.globl	HMAC_CTX_reset
	.type	HMAC_CTX_reset, @function
HMAC_CTX_reset:
.LFB411:
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
	call	hmac_ctx_cleanup
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_ctx_alloc_mds
	testl	%eax, %eax
	jne	.L74
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_ctx_cleanup
	movl	$0, %eax
	jmp	.L75
.L74:
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	HMAC_CTX_reset, .-HMAC_CTX_reset
	.globl	HMAC_CTX_copy
	.type	HMAC_CTX_copy, @function
HMAC_CTX_copy:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_ctx_alloc_mds
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L85
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L86
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L82
.L83:
	nop
	jmp	.L78
.L84:
	nop
	jmp	.L78
.L85:
	nop
	jmp	.L78
.L86:
	nop
.L78:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_ctx_cleanup
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	HMAC_CTX_copy, .-HMAC_CTX_copy
	.section	.rodata
.LC1:
	.string	"HMAC"
	.text
	.globl	HMAC
	.type	HMAC, @function
HMAC:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L88
	movl	-44(%rbp), %eax
	movslq	%eax, %r13
	cmpq	$0, -112(%rbp)
	je	.L89
	movq	-112(%rbp), %rbx
	jmp	.L90
.L89:
	leaq	static_md.0(%rip), %rbx
.L90:
	movl	-84(%rbp), %eax
	movslq	%eax, %r12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-80(%rbp), %rsi
	leaq	.LC1(%rip), %rax
	leaq	-56(%rbp), %rdx
	pushq	%rdx
	pushq	%r13
	pushq	%rbx
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	pushq	%r12
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	movq	%rax, -40(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L88
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
.L88:
	movq	-40(%rbp), %rax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	HMAC, .-HMAC
	.globl	HMAC_CTX_set_flags
	.type	HMAC_CTX_set_flags, @function
HMAC_CTX_set_flags:
.LFB414:
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
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	HMAC_CTX_set_flags, .-HMAC_CTX_set_flags
	.globl	HMAC_CTX_get_md
	.type	HMAC_CTX_get_md, @function
HMAC_CTX_get_md:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	HMAC_CTX_get_md, .-HMAC_CTX_get_md
	.local	static_md.0
	.comm	static_md.0,64,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

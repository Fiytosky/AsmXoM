	.file	"x509spki.c"
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
	.globl	NETSCAPE_SPKI_set_pubkey
	.type	NETSCAPE_SPKI_set_pubkey, @function
NETSCAPE_SPKI_set_pubkey:
.LFB509:
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
	je	.L6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_PUBKEY_set@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	NETSCAPE_SPKI_set_pubkey, .-NETSCAPE_SPKI_set_pubkey
	.globl	NETSCAPE_SPKI_get_pubkey
	.type	NETSCAPE_SPKI_get_pubkey, @function
NETSCAPE_SPKI_get_pubkey:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L11
.L10:
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	NETSCAPE_SPKI_get_pubkey, .-NETSCAPE_SPKI_get_pubkey
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509spki.c"
	.text
	.globl	NETSCAPE_SPKI_b64_decode
	.type	NETSCAPE_SPKI_b64_decode, @function
NETSCAPE_SPKI_b64_decode:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -44(%rbp)
.L14:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$38, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L18
.L15:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecodeBlock@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L17
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_NETSCAPE_SPKI@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	NETSCAPE_SPKI_b64_decode, .-NETSCAPE_SPKI_b64_decode
	.globl	NETSCAPE_SPKI_b64_encode
	.type	NETSCAPE_SPKI_b64_encode, @function
NETSCAPE_SPKI_b64_encode:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_NETSCAPE_SPKI@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L20
	movl	$0, %eax
	jmp	.L24
.L20:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$63, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	cmpq	$0, -24(%rbp)
	jne	.L23
.L22:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$67, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_NETSCAPE_SPKI@PLT
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncodeBlock@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	NETSCAPE_SPKI_b64_encode, .-NETSCAPE_SPKI_b64_encode
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"NETSCAPE_SPKI_b64_decode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

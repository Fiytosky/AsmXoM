	.file	"ct_sct_ctx.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_sct_ctx.c"
	.text
	.globl	SCT_CTX_new
	.type	SCT_CTX_new, @function
SCT_CTX_new:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$25, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
	cmpq	$0, -32(%rbp)
	je	.L4
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	SCT_CTX_new, .-SCT_CTX_new
	.globl	SCT_CTX_free
	.type	SCT_CTX_free, @function
SCT_CTX_free:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$49, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L5
.L8:
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	SCT_CTX_free, .-SCT_CTX_free
	.type	ct_x509_get_ext, @function
ct_x509_get_ext:
.LFB587:
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
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L10
	cmpl	$0, -4(%rbp)
	js	.L11
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	testl	%eax, %eax
	js	.L11
	movl	$1, %edx
	jmp	.L12
.L11:
	movl	$0, %edx
.L12:
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L10:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ct_x509_get_ext, .-ct_x509_get_ext
	.type	ct_x509_cert_fixup, @function
ct_x509_cert_fixup:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L15
	movl	$1, %eax
	jmp	.L28
.L15:
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ct_x509_get_ext
	movl	%eax, -4(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ct_x509_get_ext
	movl	%eax, -8(%rbp)
	cmpl	$-1, -4(%rbp)
	jl	.L17
	cmpl	$-1, -8(%rbp)
	jge	.L18
.L17:
	movl	$0, %eax
	jmp	.L28
.L18:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L19
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L20
.L19:
	movl	$0, %eax
	jmp	.L28
.L20:
	cmpl	$0, -4(%rbp)
	js	.L21
	cmpl	$-1, -8(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L28
.L21:
	cmpl	$-1, -4(%rbp)
	jne	.L22
	cmpl	$0, -8(%rbp)
	js	.L22
	movl	$0, %eax
	jmp	.L28
.L22:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_issuer_name@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L28
.L23:
	cmpl	$-1, -4(%rbp)
	je	.L24
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L25
	cmpq	$0, -24(%rbp)
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L28
.L26:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L27
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_data@PLT
	testl	%eax, %eax
	jne	.L24
.L27:
	movl	$0, %eax
	jmp	.L28
.L24:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ct_x509_cert_fixup, .-ct_x509_cert_fixup
	.globl	SCT_CTX_set1_cert
	.type	SCT_CTX_set1_cert, @function
SCT_CTX_set1_cert:
.LFB589:
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
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$-1, -20(%rbp)
	leaq	-44(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$952, %esi
	movq	%rax, %rdi
	call	ct_x509_get_ext
	movl	%eax, -24(%rbp)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jne	.L42
	cmpl	$-1, -24(%rbp)
	jne	.L32
	cmpq	$0, -72(%rbp)
	jne	.L43
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L44
.L32:
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$951, %esi
	movq	%rax, %rdi
	call	ct_x509_get_ext
	movl	%eax, -20(%rbp)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jne	.L45
	cmpl	$0, -20(%rbp)
	js	.L35
	cmpl	$0, -24(%rbp)
	jns	.L46
.L35:
	cmpl	$-1, -20(%rbp)
	jne	.L36
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L36:
	cmpl	$0, -20(%rbp)
	js	.L37
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L47
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_delete_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ct_x509_cert_fixup
	testl	%eax, %eax
	je	.L48
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_re_X509_tbs@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L49
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$185, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 64(%rax)
	movl	$1, %eax
	jmp	.L41
.L42:
	nop
	jmp	.L31
.L43:
	nop
	jmp	.L31
.L44:
	nop
	jmp	.L31
.L45:
	nop
	jmp	.L31
.L46:
	nop
	jmp	.L31
.L47:
	nop
	jmp	.L31
.L48:
	nop
	jmp	.L31
.L49:
	nop
.L31:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	SCT_CTX_set1_cert, .-SCT_CTX_set1_cert
	.section	.rodata
.LC1:
	.string	"SHA2-256"
	.text
	.type	ct_public_key_hash, @function
ct_public_key_hash:
.LFB590:
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
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L59
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$31, %rax
	jbe	.L53
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L54
.L53:
	leaq	.LC0(%rip), %rax
	movl	$217, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L60
.L54:
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_PUBKEY@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L61
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	leaq	-44(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L62
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L57
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$231, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	$32, (%rax)
.L57:
	movq	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L52
.L59:
	nop
	jmp	.L52
.L60:
	nop
	jmp	.L52
.L61:
	nop
	jmp	.L52
.L62:
	nop
.L52:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$240, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$241, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ct_public_key_hash, .-ct_public_key_hash
	.globl	SCT_CTX_set1_issuer
	.type	SCT_CTX_set1_issuer, @function
SCT_CTX_set1_issuer:
.LFB591:
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
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_set1_issuer_pubkey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	SCT_CTX_set1_issuer, .-SCT_CTX_set1_issuer
	.globl	SCT_CTX_set1_issuer_pubkey
	.type	SCT_CTX_set1_issuer_pubkey, @function
SCT_CTX_set1_issuer_pubkey:
.LFB592:
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
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ct_public_key_hash
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	SCT_CTX_set1_issuer_pubkey, .-SCT_CTX_set1_issuer_pubkey
	.globl	SCT_CTX_set1_pubkey
	.type	SCT_CTX_set1_pubkey, @function
SCT_CTX_set1_pubkey:
.LFB593:
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
	movq	%rax, %rdi
	call	X509_PUBKEY_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L68
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ct_public_key_hash
	testl	%eax, %eax
	jne	.L70
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L69
.L70:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	SCT_CTX_set1_pubkey, .-SCT_CTX_set1_pubkey
	.globl	SCT_CTX_set_time
	.type	SCT_CTX_set_time, @function
SCT_CTX_set_time:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	SCT_CTX_set_time, .-SCT_CTX_set_time
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

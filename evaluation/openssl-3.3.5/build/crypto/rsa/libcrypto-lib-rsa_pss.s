	.file	"rsa_pss.c"
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
	.align 8
	.type	zeroes, @object
	.size	zeroes, 8
zeroes:
	.zero	8
	.text
	.globl	RSA_verify_PKCS1_PSS
	.type	RSA_verify_PKCS1_PSS, @function
RSA_verify_PKCS1_PSS:
.LFB432:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RSA_verify_PKCS1_PSS_mgf1@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	RSA_verify_PKCS1_PSS, .-RSA_verify_PKCS1_PSS
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_pss.c"
.LC1:
	.string	"expected: %d retrieved: %d"
	.text
	.globl	RSA_verify_PKCS1_PSS_mgf1
	.type	RSA_verify_PKCS1_PSS_mgf1, @function
RSA_verify_PKCS1_PSS_mgf1:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -172(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L36
	cmpq	$0, -160(%rbp)
	jne	.L10
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
.L10:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L37
	cmpl	$-1, -172(%rbp)
	jne	.L12
	movl	-36(%rbp), %eax
	movl	%eax, -172(%rbp)
	jmp	.L13
.L12:
	cmpl	$-4, -172(%rbp)
	jge	.L13
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L13:
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	subl	$1, %eax
	andl	$7, %eax
	movl	%eax, -40(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -12(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	movl	$255, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L14
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L14:
	cmpl	$0, -40(%rbp)
	jne	.L15
	addq	$1, -168(%rbp)
	subl	$1, -12(%rbp)
.L15:
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jg	.L16
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L16:
	cmpl	$-3, -172(%rbp)
	jne	.L17
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -172(%rbp)
	jmp	.L18
.L17:
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -172(%rbp)
	jl	.L18
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$91, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L18:
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-68, %al
	je	.L19
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L19:
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L38
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-160(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS1_MGF1@PLT
	testl	%eax, %eax
	js	.L39
	movl	$0, -4(%rbp)
	jmp	.L22
.L23:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L22:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L23
	cmpl	$0, -40(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	$8, %eax
	subl	-40(%rbp), %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	%esi, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
.L24:
	movl	$0, -4(%rbp)
	jmp	.L25
.L27:
	addl	$1, -4(%rbp)
.L25:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L26
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L27
.L26:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L28
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L28:
	cmpl	$-2, -172(%rbp)
	je	.L29
	cmpl	$-4, -172(%rbp)
	je	.L29
	movl	-44(%rbp), %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, -172(%rbp)
	je	.L29
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-44(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-172(%rbp), %eax
	leaq	.LC1(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$136, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L29:
	movq	-152(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L40
	leaq	zeroes(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L40
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L40
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L32
	movl	-44(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L41
.L32:
	leaq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L42
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -8(%rbp)
	jmp	.L9
.L34:
	movl	$1, -8(%rbp)
	jmp	.L9
.L36:
	nop
	jmp	.L9
.L37:
	nop
	jmp	.L9
.L38:
	nop
	jmp	.L9
.L39:
	nop
	jmp	.L9
.L40:
	nop
	jmp	.L9
.L41:
	nop
	jmp	.L9
.L42:
	nop
.L9:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	RSA_verify_PKCS1_PSS_mgf1, .-RSA_verify_PKCS1_PSS_mgf1
	.globl	RSA_padding_add_PKCS1_PSS
	.type	RSA_padding_add_PKCS1_PSS, @function
RSA_padding_add_PKCS1_PSS:
.LFB434:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	RSA_padding_add_PKCS1_PSS_mgf1@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	RSA_padding_add_PKCS1_PSS, .-RSA_padding_add_PKCS1_PSS
	.globl	RSA_padding_add_PKCS1_PSS_mgf1
	.type	RSA_padding_add_PKCS1_PSS_mgf1, @function
RSA_padding_add_PKCS1_PSS_mgf1:
.LFB435:
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
	movq	%r8, -104(%rbp)
	movl	%r9d, -108(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -44(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L46
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.L46:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	js	.L71
	cmpl	$-1, -108(%rbp)
	jne	.L49
	movl	-48(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.L50
.L49:
	cmpl	$-2, -108(%rbp)
	je	.L51
	cmpl	$-2, -108(%rbp)
	jne	.L52
.L51:
	movl	$-3, -108(%rbp)
	jmp	.L50
.L52:
	cmpl	$-4, -108(%rbp)
	jne	.L53
	movl	$-3, -108(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L50
.L53:
	cmpl	$-4, -108(%rbp)
	jge	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L50:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	subl	$1, %eax
	andl	$7, %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L54
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movb	$0, (%rax)
	subl	$1, -12(%rbp)
.L54:
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jg	.L55
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L55:
	cmpl	$-3, -108(%rbp)
	jne	.L56
	movl	-12(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L57
	movl	-108(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L57
	movl	-44(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.L57
.L56:
	movl	-12(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -108(%rbp)
	jl	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L57:
	cmpl	$0, -108(%rbp)
	jle	.L58
	movl	-108(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L72
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L73
.L58:
	movl	-12(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L74
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L75
	leaq	zeroes(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L75
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L75
	cmpl	$0, -108(%rbp)
	je	.L63
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L76
.L63:
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L77
	movl	-48(%rbp), %eax
	movslq	%eax, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS1_MGF1@PLT
	testl	%eax, %eax
	jne	.L78
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-48(%rbp), %eax
	cltq
	subq	$2, %rax
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %edx
	xorl	$1, %edx
	movb	%dl, (%rax)
	cmpl	$0, -108(%rbp)
	jle	.L66
	movl	$0, -4(%rbp)
	jmp	.L67
.L68:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	xorl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L67:
	movl	-4(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L68
.L66:
	cmpl	$0, -52(%rbp)
	je	.L69
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	$8, %eax
	subl	-52(%rbp), %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	%esi, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L69:
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$-68, (%rax)
	movl	$1, -8(%rbp)
	jmp	.L48
.L71:
	nop
	jmp	.L48
.L72:
	nop
	jmp	.L48
.L73:
	nop
	jmp	.L48
.L74:
	nop
	jmp	.L48
.L75:
	nop
	jmp	.L48
.L76:
	nop
	jmp	.L48
.L77:
	nop
	jmp	.L48
.L78:
	nop
.L48:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$266, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	RSA_padding_add_PKCS1_PSS_mgf1, .-RSA_padding_add_PKCS1_PSS_mgf1
	.section	.rodata
	.align 16
	.type	default_RSASSA_PSS_params, @object
	.size	default_RSASSA_PSS_params, 20
default_RSASSA_PSS_params:
	.long	64
	.long	911
	.long	64
	.long	20
	.long	1
	.text
	.globl	ossl_rsa_pss_params_30_set_defaults
	.type	ossl_rsa_pss_params_30_set_defaults, @function
ossl_rsa_pss_params_30_set_defaults:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-8(%rbp), %rax
	movl	$64, (%rax)
	movq	-8(%rbp), %rax
	movl	$911, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$64, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	ossl_rsa_pss_params_30_set_defaults, .-ossl_rsa_pss_params_30_set_defaults
	.globl	ossl_rsa_pss_params_30_is_unrestricted
	.type	ossl_rsa_pss_params_30_is_unrestricted, @function
ossl_rsa_pss_params_30_is_unrestricted:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L83
	leaq	pss_params_cmp.0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L84
.L83:
	movl	$1, %eax
	jmp	.L86
.L84:
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	ossl_rsa_pss_params_30_is_unrestricted, .-ossl_rsa_pss_params_30_is_unrestricted
	.globl	ossl_rsa_pss_params_30_copy
	.type	ossl_rsa_pss_params_30_copy, @function
ossl_rsa_pss_params_30_copy:
.LFB438:
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
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	ossl_rsa_pss_params_30_copy, .-ossl_rsa_pss_params_30_copy
	.globl	ossl_rsa_pss_params_30_set_hashalg
	.type	ossl_rsa_pss_params_30_set_hashalg, @function
ossl_rsa_pss_params_30_set_hashalg:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L91:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	ossl_rsa_pss_params_30_set_hashalg, .-ossl_rsa_pss_params_30_set_hashalg
	.globl	ossl_rsa_pss_params_30_set_maskgenhashalg
	.type	ossl_rsa_pss_params_30_set_maskgenhashalg, @function
ossl_rsa_pss_params_30_set_maskgenhashalg:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L94:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	ossl_rsa_pss_params_30_set_maskgenhashalg, .-ossl_rsa_pss_params_30_set_maskgenhashalg
	.globl	ossl_rsa_pss_params_30_set_saltlen
	.type	ossl_rsa_pss_params_30_set_saltlen, @function
ossl_rsa_pss_params_30_set_saltlen:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$1, %eax
.L97:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	ossl_rsa_pss_params_30_set_saltlen, .-ossl_rsa_pss_params_30_set_saltlen
	.globl	ossl_rsa_pss_params_30_set_trailerfield
	.type	ossl_rsa_pss_params_30_set_trailerfield, @function
ossl_rsa_pss_params_30_set_trailerfield:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$1, %eax
.L100:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ossl_rsa_pss_params_30_set_trailerfield, .-ossl_rsa_pss_params_30_set_trailerfield
	.globl	ossl_rsa_pss_params_30_hashalg
	.type	ossl_rsa_pss_params_30_hashalg, @function
ossl_rsa_pss_params_30_hashalg:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L102
	movl	$64, %eax
	jmp	.L103
.L102:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	ossl_rsa_pss_params_30_hashalg, .-ossl_rsa_pss_params_30_hashalg
	.globl	ossl_rsa_pss_params_30_maskgenalg
	.type	ossl_rsa_pss_params_30_maskgenalg, @function
ossl_rsa_pss_params_30_maskgenalg:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L105
	movl	$911, %eax
	jmp	.L106
.L105:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
.L106:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ossl_rsa_pss_params_30_maskgenalg, .-ossl_rsa_pss_params_30_maskgenalg
	.globl	ossl_rsa_pss_params_30_maskgenhashalg
	.type	ossl_rsa_pss_params_30_maskgenhashalg, @function
ossl_rsa_pss_params_30_maskgenhashalg:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L108
	movl	$64, %eax
	jmp	.L109
.L108:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
.L109:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ossl_rsa_pss_params_30_maskgenhashalg, .-ossl_rsa_pss_params_30_maskgenhashalg
	.globl	ossl_rsa_pss_params_30_saltlen
	.type	ossl_rsa_pss_params_30_saltlen, @function
ossl_rsa_pss_params_30_saltlen:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$20, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ossl_rsa_pss_params_30_saltlen, .-ossl_rsa_pss_params_30_saltlen
	.globl	ossl_rsa_pss_params_30_trailerfield
	.type	ossl_rsa_pss_params_30_trailerfield, @function
ossl_rsa_pss_params_30_trailerfield:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L114
	movl	$1, %eax
	jmp	.L115
.L114:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
.L115:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ossl_rsa_pss_params_30_trailerfield, .-ossl_rsa_pss_params_30_trailerfield
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"RSA_verify_PKCS1_PSS_mgf1"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"RSA_padding_add_PKCS1_PSS_mgf1"
	.local	pss_params_cmp.0
	.comm	pss_params_cmp.0,20,16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"srp_vfy.c"
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
	.type	ossl_check_SRP_gN_cache_type, @function
ossl_check_SRP_gN_cache_type:
.LFB457:
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
.LFE457:
	.size	ossl_check_SRP_gN_cache_type, .-ossl_check_SRP_gN_cache_type
	.type	ossl_check_const_SRP_gN_cache_sk_type, @function
ossl_check_const_SRP_gN_cache_sk_type:
.LFB458:
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
.LFE458:
	.size	ossl_check_const_SRP_gN_cache_sk_type, .-ossl_check_const_SRP_gN_cache_sk_type
	.type	ossl_check_SRP_gN_cache_sk_type, @function
ossl_check_SRP_gN_cache_sk_type:
.LFB459:
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
.LFE459:
	.size	ossl_check_SRP_gN_cache_sk_type, .-ossl_check_SRP_gN_cache_sk_type
	.type	ossl_check_SRP_user_pwd_type, @function
ossl_check_SRP_user_pwd_type:
.LFB463:
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
.LFE463:
	.size	ossl_check_SRP_user_pwd_type, .-ossl_check_SRP_user_pwd_type
	.type	ossl_check_const_SRP_user_pwd_sk_type, @function
ossl_check_const_SRP_user_pwd_sk_type:
.LFB464:
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
.LFE464:
	.size	ossl_check_const_SRP_user_pwd_sk_type, .-ossl_check_const_SRP_user_pwd_sk_type
	.type	ossl_check_SRP_user_pwd_sk_type, @function
ossl_check_SRP_user_pwd_sk_type:
.LFB465:
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
.LFE465:
	.size	ossl_check_SRP_user_pwd_sk_type, .-ossl_check_SRP_user_pwd_sk_type
	.type	ossl_check_SRP_user_pwd_freefunc_type, @function
ossl_check_SRP_user_pwd_freefunc_type:
.LFB468:
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
.LFE468:
	.size	ossl_check_SRP_user_pwd_freefunc_type, .-ossl_check_SRP_user_pwd_freefunc_type
	.type	ossl_check_SRP_gN_type, @function
ossl_check_SRP_gN_type:
.LFB469:
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
.LFE469:
	.size	ossl_check_SRP_gN_type, .-ossl_check_SRP_gN_type
	.type	ossl_check_const_SRP_gN_sk_type, @function
ossl_check_const_SRP_gN_sk_type:
.LFB470:
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
.LFE470:
	.size	ossl_check_const_SRP_gN_sk_type, .-ossl_check_const_SRP_gN_sk_type
	.type	ossl_check_SRP_gN_sk_type, @function
ossl_check_SRP_gN_sk_type:
.LFB471:
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
.LFE471:
	.size	ossl_check_SRP_gN_sk_type, .-ossl_check_SRP_gN_sk_type
	.type	sk_OPENSSL_PSTRING_num, @function
sk_OPENSSL_PSTRING_num:
.LFB475:
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
.LFE475:
	.size	sk_OPENSSL_PSTRING_num, .-sk_OPENSSL_PSTRING_num
	.type	sk_OPENSSL_PSTRING_value, @function
sk_OPENSSL_PSTRING_value:
.LFB476:
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
.LFE476:
	.size	sk_OPENSSL_PSTRING_value, .-sk_OPENSSL_PSTRING_value
	.section	.rodata
.LC0:
	.string	"00"
	.text
	.type	t_fromb64, @function
t_fromb64:
.LFB500:
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
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L30
.L31:
	addq	$1, -72(%rbp)
.L30:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L31
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L31
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L31
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andl	$3, %eax
	movq	%rax, %rdx
	movl	$4, %eax
	subq	%rdx, %rax
	movq	%rax, -24(%rbp)
	andq	$3, -24(%rbp)
	cmpq	$2147483647, -16(%rbp)
	ja	.L32
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L33
.L32:
	movl	$-1, %eax
	jmp	.L41
.L33:
	call	EVP_ENCODE_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L35
	movl	$-1, %eax
	jmp	.L41
.L35:
	cmpq	$3, -24(%rbp)
	jne	.L36
	movl	$-1, -36(%rbp)
	jmp	.L37
.L36:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_DecodeInit@PLT
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	evp_encode_ctx_set_flags@PLT
	cmpq	$0, -24(%rbp)
	je	.L38
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecodeUpdate@PLT
	testl	%eax, %eax
	jns	.L38
	movl	$-1, -36(%rbp)
	jmp	.L37
.L38:
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movq	-72(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecodeUpdate@PLT
	testl	%eax, %eax
	jns	.L39
	movl	$-1, -36(%rbp)
	jmp	.L37
.L39:
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecodeFinal@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L40
	movl	$-1, -36(%rbp)
	jmp	.L37
.L40:
	movl	-36(%rbp), %eax
	cltq
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	jmp	.L37
.L42:
	nop
.L37:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movl	-36(%rbp), %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	t_fromb64, .-t_fromb64
	.type	t_tob64, @function
t_tob64:
.LFB501:
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
	call	EVP_ENCODE_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movw	$0, -26(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L49
.L44:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_EncodeInit@PLT
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	evp_encode_ctx_set_flags@PLT
	movl	-52(%rbp), %ecx
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
	movl	$3, %eax
	subl	%edx, %eax
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$3, -16(%rbp)
	je	.L46
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	leaq	-26(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncodeUpdate@PLT
	testl	%eax, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movl	$0, %eax
	jmp	.L49
.L46:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncodeUpdate@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movl	$0, %eax
	jmp	.L49
.L47:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncodeFinal@PLT
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpq	$3, -16(%rbp)
	je	.L48
	movl	-20(%rbp), %eax
	cltq
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-20(%rbp), %eax
	cltq
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L48:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	t_tob64, .-t_tob64
	.section	.rodata
.LC1:
	.string	"../crypto/srp/srp_vfy.c"
	.text
	.globl	SRP_user_pwd_free
	.type	SRP_user_pwd_free, @function
SRP_user_pwd_free:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$185, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$186, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L50
.L53:
	nop
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	SRP_user_pwd_free, .-SRP_user_pwd_free
	.globl	SRP_user_pwd_new
	.type	SRP_user_pwd_new, @function
SRP_user_pwd_new:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC1(%rip), %rax
	movl	$194, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	SRP_user_pwd_new, .-SRP_user_pwd_new
	.globl	SRP_user_pwd_set_gN
	.type	SRP_user_pwd_set_gN, @function
SRP_user_pwd_set_gN:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	SRP_user_pwd_set_gN, .-SRP_user_pwd_set_gN
	.globl	SRP_user_pwd_set1_ids
	.type	SRP_user_pwd_set1_ids, @function
SRP_user_pwd_set1_ids:
.LFB505:
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
	leaq	.LC1(%rip), %rcx
	movl	$215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	cmpq	$0, -16(%rbp)
	je	.L59
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	cmpq	$0, -24(%rbp)
	je	.L61
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L62
.L61:
	movl	$1, %eax
	jmp	.L60
.L62:
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	SRP_user_pwd_set1_ids, .-SRP_user_pwd_set1_ids
	.type	SRP_user_pwd_set_sv, @function
SRP_user_pwd_set_sv:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2544, %rsp
	movq	%rdi, -2520(%rbp)
	movq	%rsi, -2528(%rbp)
	movq	%rdx, -2536(%rbp)
	movq	-2520(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-2520(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-2536(%rbp), %rdx
	leaq	-2512(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	t_fromb64
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L65
	movl	$0, %eax
	jmp	.L71
.L65:
	movl	-4(%rbp), %ecx
	leaq	-2512(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-2520(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-2520(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movl	$0, %eax
	jmp	.L71
.L67:
	movq	-2528(%rbp), %rdx
	leaq	-2512(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	t_fromb64
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L72
	movl	-4(%rbp), %ecx
	leaq	-2512(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-2520(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-2520(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movl	$1, %eax
	jmp	.L71
.L72:
	nop
	jmp	.L69
.L73:
	nop
.L69:
	movq	-2520(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-2520(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	SRP_user_pwd_set_sv, .-SRP_user_pwd_set_sv
	.globl	SRP_user_pwd_set0_sv
	.type	SRP_user_pwd_set0_sv, @function
SRP_user_pwd_set0_sv:
.LFB507:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movl	$1, %eax
	jmp	.L77
.L75:
	movl	$0, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	SRP_user_pwd_set0_sv, .-SRP_user_pwd_set0_sv
	.type	srp_user_pwd_dup, @function
srp_user_pwd_dup:
.LFB508:
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
	cmpq	$0, -40(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	call	SRP_user_pwd_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L80
.L81:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set_gN@PLT
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set1_ids@PLT
	testl	%eax, %eax
	je	.L82
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set0_sv@PLT
	testl	%eax, %eax
	jne	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_user_pwd_free@PLT
	movl	$0, %eax
	jmp	.L80
.L83:
	movq	-24(%rbp), %rax
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	srp_user_pwd_dup, .-srp_user_pwd_dup
	.globl	SRP_VBASE_new
	.type	SRP_VBASE_new, @function
SRP_VBASE_new:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$280, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L87
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$287, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L86
.L88:
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -24(%rbp)
	je	.L89
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_cache_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$296, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L86
.L89:
	movq	-8(%rbp), %rax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	SRP_VBASE_new, .-SRP_VBASE_new
	.globl	SRP_VBASE_free
	.type	SRP_VBASE_free, @function
SRP_VBASE_free:
.LFB510:
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
	cmpq	$0, -24(%rbp)
	je	.L93
	movq	SRP_user_pwd_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_cache_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$308, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$309, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L90
.L93:
	nop
.L90:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	SRP_VBASE_free, .-SRP_VBASE_free
	.type	SRP_gN_new_init, @function
SRP_gN_new_init:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2528, %rsp
	movq	%rdi, -2520(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$316, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L101
.L95:
	movq	-2520(%rbp), %rdx
	leaq	-2512(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	t_fromb64
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L102
	leaq	.LC1(%rip), %rcx
	movq	-2520(%rbp), %rax
	movl	$325, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movl	-12(%rbp), %ecx
	leaq	-2512(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$331, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L98
.L102:
	nop
	jmp	.L98
.L103:
	nop
.L98:
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	SRP_gN_new_init, .-SRP_gN_new_init
	.type	SRP_gN_free, @function
SRP_gN_free:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L104
.L107:
	nop
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	SRP_gN_free, .-SRP_gN_free
	.type	SRP_get_gN_by_id, @function
SRP_get_gN_by_id:
.LFB513:
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
	je	.L109
	movl	$0, -4(%rbp)
	jmp	.L110
.L114:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRP_gN_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	cmpq	$0, -24(%rbp)
	je	.L112
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L111
.L112:
	movq	-16(%rbp), %rax
	jmp	.L113
.L111:
	addl	$1, -4(%rbp)
.L110:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRP_gN_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L114
.L109:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_get_default_gN@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	SRP_get_gN_by_id, .-SRP_get_gN_by_id
	.type	SRP_gN_place_bn, @function
SRP_gN_place_bn:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movl	$0, -20(%rbp)
	jmp	.L118
.L120:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRP_gN_cache_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L119
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L117
.L119:
	addl	$1, -20(%rbp)
.L118:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRP_gN_cache_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L120
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_gN_new_init
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L121
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_cache_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_cache_sk_type
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	jle	.L122
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L117
.L122:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_gN_free
.L121:
	movl	$0, %eax
.L117:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	SRP_gN_place_bn, .-SRP_gN_place_bn
	.globl	SRP_VBASE_init
	.type	SRP_VBASE_init, @function
SRP_VBASE_init:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$4, -20(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L145
	movl	$3, -20(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L146
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L146
	movl	$1, -20(%rbp)
	movq	-80(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	TXT_DB_read@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L147
	movl	$4, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L129
	movl	$0, %edi
	call	SRP_get_default_gN@PLT
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L129:
	movl	$0, -36(%rbp)
	jmp	.L130
.L140:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$73, %al
	jne	.L131
	leaq	.LC1(%rip), %rax
	movl	$434, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L148
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$437, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_gN_place_bn
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_gN_place_bn
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_sk_type
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	je	.L149
	movq	$0, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L135
.L131:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L135
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_get_gN_by_id
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L135
	movl	$4, -20(%rbp)
	call	SRP_user_pwd_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L150
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set_gN@PLT
	movq	-88(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set1_ids@PLT
	testl	%eax, %eax
	je	.L151
	movl	$2, -20(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set_sv
	testl	%eax, %eax
	je	.L152
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_sk_type
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	je	.L153
	movq	$0, -56(%rbp)
.L135:
	addl	$1, -36(%rbp)
.L130:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -36(%rbp)
	jl	.L140
	cmpq	$0, -32(%rbp)
	je	.L141
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_get_gN_by_id
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L142
	movl	$2, -20(%rbp)
	jmp	.L125
.L142:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	$0, -48(%rbp)
.L141:
	movl	$0, -20(%rbp)
	jmp	.L125
.L145:
	nop
	jmp	.L125
.L146:
	nop
	jmp	.L125
.L147:
	nop
	jmp	.L125
.L148:
	nop
	jmp	.L125
.L149:
	nop
	jmp	.L125
.L150:
	nop
	jmp	.L125
.L151:
	nop
	jmp	.L125
.L152:
	nop
	jmp	.L125
.L153:
	nop
.L125:
	cmpq	$0, -48(%rbp)
	je	.L143
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$496, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$497, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L143:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_user_pwd_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	TXT_DB_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_gN_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	SRP_VBASE_init, .-SRP_VBASE_init
	.type	find_user, @function
find_user:
.LFB516:
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
	jne	.L155
	movl	$0, %eax
	jmp	.L156
.L155:
	movl	$0, -4(%rbp)
	jmp	.L157
.L159:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRP_user_pwd_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L158
	movq	-16(%rbp), %rax
	jmp	.L156
.L158:
	addl	$1, -4(%rbp)
.L157:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRP_user_pwd_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L159
	movl	$0, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	find_user, .-find_user
	.globl	SRP_VBASE_add0_user
	.type	SRP_VBASE_add0_user, @function
SRP_VBASE_add0_user:
.LFB517:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRP_user_pwd_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jg	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	movl	$1, %eax
.L162:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	SRP_VBASE_add0_user, .-SRP_VBASE_add0_user
	.globl	SRP_VBASE_get_by_user
	.type	SRP_VBASE_get_by_user, @function
SRP_VBASE_get_by_user:
.LFB518:
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
	call	find_user
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	SRP_VBASE_get_by_user, .-SRP_VBASE_get_by_user
	.section	.rodata
.LC2:
	.string	"SHA1"
	.text
	.globl	SRP_VBASE_get1_by_user
	.type	SRP_VBASE_get1_by_user, @function
SRP_VBASE_get1_by_user:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L166
	movl	$0, %eax
	jmp	.L178
.L166:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_user
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L168
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	srp_user_pwd_dup
	jmp	.L178
.L168:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L169
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L169
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L170
.L169:
	movl	$0, %eax
	jmp	.L178
.L170:
	call	SRP_user_pwd_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L178
.L171:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set_gN@PLT
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set1_ids@PLT
	testl	%eax, %eax
	je	.L179
	leaq	-64(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	testl	%eax, %eax
	jle	.L180
	leaq	.LC2(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L181
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L182
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L182
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L182
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L182
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L182
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -32(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_user_pwd_set0_sv@PLT
	testl	%eax, %eax
	je	.L183
	movq	-40(%rbp), %rax
	jmp	.L178
.L179:
	nop
	jmp	.L173
.L180:
	nop
	jmp	.L173
.L181:
	nop
	jmp	.L173
.L182:
	nop
	jmp	.L173
.L183:
	nop
.L173:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_user_pwd_free@PLT
	movl	$0, %eax
.L178:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	SRP_VBASE_get1_by_user, .-SRP_VBASE_get1_by_user
	.section	.rodata
.LC3:
	.string	"*"
	.text
	.globl	SRP_create_verifier_ex
	.type	SRP_create_verifier_ex, @function
SRP_create_verifier_ex:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$5168, %rsp
	movq	%rdi, -5128(%rbp)
	movq	%rsi, -5136(%rbp)
	movq	%rdx, -5144(%rbp)
	movq	%rcx, -5152(%rbp)
	movq	%r8, -5160(%rbp)
	movq	%r9, -5168(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, -5128(%rbp)
	je	.L208
	cmpq	$0, -5136(%rbp)
	je	.L208
	cmpq	$0, -5144(%rbp)
	je	.L208
	cmpq	$0, -5152(%rbp)
	je	.L208
	cmpq	$0, -5160(%rbp)
	je	.L188
	movq	-5160(%rbp), %rdx
	leaq	-2608(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	t_fromb64
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L209
	movl	-76(%rbp), %ecx
	leaq	-2608(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L210
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-5168(%rbp), %rdx
	leaq	-2608(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	t_fromb64
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L211
	movl	-76(%rbp), %ecx
	leaq	-2608(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L212
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	.L193
.L188:
	movq	-5168(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_get_default_gN@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L213
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L193:
	movq	-5144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L195
	leaq	-5120(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	$0, %ecx
	movl	$20, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L214
	leaq	-5120(%rbp), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -96(%rbp)
	jmp	.L197
.L195:
	movq	-5144(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-5120(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	t_fromb64
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L215
	movl	-76(%rbp), %ecx
	leaq	-5120(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -96(%rbp)
.L197:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L216
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-5136(%rbp), %rsi
	movq	-5128(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier_BN_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L217
	movq	-104(%rbp), %rax
	leaq	-2608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	testl	%eax, %eax
	js	.L218
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	%eax, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$671, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L219
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	leaq	-2608(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	t_tob64
	testl	%eax, %eax
	je	.L220
	movq	-5144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L204
	leaq	.LC1(%rip), %rax
	movl	$679, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L221
	leaq	-5120(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	t_tob64
	testl	%eax, %eax
	jne	.L206
	leaq	.LC1(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$683, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L187
.L206:
	movq	-5144(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
.L204:
	movq	-5152(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L187
.L208:
	nop
	jmp	.L187
.L209:
	nop
	jmp	.L187
.L210:
	nop
	jmp	.L187
.L211:
	nop
	jmp	.L187
.L212:
	nop
	jmp	.L187
.L213:
	nop
	jmp	.L187
.L214:
	nop
	jmp	.L187
.L215:
	nop
	jmp	.L187
.L216:
	nop
	jmp	.L187
.L217:
	nop
	jmp	.L187
.L218:
	nop
	jmp	.L187
.L219:
	nop
	jmp	.L187
.L220:
	nop
	jmp	.L187
.L221:
	nop
.L187:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$696, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	SRP_create_verifier_ex, .-SRP_create_verifier_ex
	.globl	SRP_create_verifier
	.type	SRP_create_verifier, @function
SRP_create_verifier:
.LFB521:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	SRP_create_verifier, .-SRP_create_verifier
	.globl	SRP_create_verifier_BN_ex
	.type	SRP_create_verifier_BN_ex, @function
SRP_create_verifier_BN_ex:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2592, %rsp
	movq	%rdi, -2552(%rbp)
	movq	%rsi, -2560(%rbp)
	movq	%rdx, -2568(%rbp)
	movq	%rcx, -2576(%rbp)
	movq	%r8, -2584(%rbp)
	movq	%r9, -2592(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -2552(%rbp)
	je	.L236
	cmpq	$0, -2560(%rbp)
	je	.L236
	cmpq	$0, -2568(%rbp)
	je	.L236
	cmpq	$0, -2576(%rbp)
	je	.L236
	cmpq	$0, -2584(%rbp)
	je	.L236
	cmpq	$0, -2592(%rbp)
	je	.L236
	cmpq	$0, -32(%rbp)
	je	.L236
	movq	-2568(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L228
	leaq	-2544(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	$0, %ecx
	movl	$20, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L237
	leaq	-2544(%rbp), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L230
	jmp	.L227
.L228:
	movq	-2568(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L230:
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rcx
	movq	-2560(%rbp), %rdx
	movq	-2552(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_x_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L238
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L239
	movq	-32(%rbp), %rdi
	movq	-2584(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-2592(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	jne	.L233
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	jmp	.L227
.L233:
	movl	$1, -4(%rbp)
	movq	-2568(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-2576(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L227
.L236:
	nop
	jmp	.L227
.L237:
	nop
	jmp	.L227
.L238:
	nop
	jmp	.L227
.L239:
	nop
.L227:
	cmpq	$0, -2568(%rbp)
	je	.L234
	movq	-2568(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L234
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
.L234:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	SRP_create_verifier_BN_ex, .-SRP_create_verifier_BN_ex
	.globl	SRP_create_verifier_BN
	.type	SRP_create_verifier_BN, @function
SRP_create_verifier_BN:
.LFB523:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier_BN_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	SRP_create_verifier_BN, .-SRP_create_verifier_BN
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

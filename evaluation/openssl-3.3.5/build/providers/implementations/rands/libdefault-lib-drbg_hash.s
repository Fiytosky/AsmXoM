	.file	"drbg_hash.c"
	.text
	.type	hash_df, @function
hash_df:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, %eax
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movb	%al, -84(%rbp)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$262, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -48(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	movb	$1, -54(%rbp,%rax)
	movq	-48(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movl	%ecx, %edx
	cltq
	movb	%dl, -54(%rbp,%rax)
	movq	-48(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movl	%ecx, %edx
	cltq
	movb	%dl, -54(%rbp,%rax)
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movl	%ecx, %edx
	cltq
	movb	%dl, -54(%rbp,%rax)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	-48(%rbp), %rdx
	cltq
	movb	%dl, -54(%rbp,%rax)
	cmpb	$-1, -84(%rbp)
	je	.L12
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	movzbl	-84(%rbp), %edx
	movb	%dl, -54(%rbp,%rax)
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-54(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L3
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L3
	cmpq	$0, -112(%rbp)
	je	.L4
	movq	16(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L3
.L4:
	cmpq	$0, 24(%rbp)
	je	.L5
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L5
.L3:
	movl	$0, %eax
	jmp	.L13
.L5:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L7
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L13
.L8:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L9
.L7:
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L13
.L10:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	movzbl	-54(%rbp), %eax
	addl	$1, %eax
	movb	%al, -54(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rax, -80(%rbp)
	jmp	.L12
.L14:
	nop
.L9:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	hash_df, .-hash_df
	.type	hash_df1, @function
hash_df1:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	%al, -20(%rbp)
	movzbl	-20(%rbp), %edx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hash_df
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	hash_df1, .-hash_df1
	.type	add_bytes, @function
add_bytes:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movb	$0, -17(%rbp)
	movq	-56(%rbp), %rax
	movq	232(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L18
.L19:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-17(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -17(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -8(%rbp)
	subq	$1, -32(%rbp)
	subq	$1, -16(%rbp)
.L18:
	cmpq	$0, -8(%rbp)
	jne	.L19
	cmpb	$0, -17(%rbp)
	je	.L20
	movq	-56(%rbp), %rax
	movq	232(%rax), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L21
.L23:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L25
	subq	$1, -8(%rbp)
	subq	$1, -32(%rbp)
.L21:
	cmpq	$0, -8(%rbp)
	jne	.L23
	jmp	.L20
.L25:
	nop
.L20:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	add_bytes, .-add_bytes
	.type	add_hash_to_v, @function
add_hash_to_v:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-28(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
	cmpq	$0, -40(%rbp)
	je	.L28
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
.L28:
	movq	-8(%rbp), %rax
	leaq	262(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	262(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	add_bytes
	testl	%eax, %eax
	je	.L27
	movl	$1, %eax
	jmp	.L30
.L27:
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	add_hash_to_v, .-add_hash_to_v
	.type	hash_gen, @function
hash_gen:
.LFB362:
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
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movb	$1, -9(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L32
	movl	$1, %eax
	jmp	.L42
.L32:
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	262(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	262(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L42
.L35:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L36
	movq	-8(%rbp), %rax
	leaq	262(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L42
.L37:
	movq	-8(%rbp), %rax
	leaq	262(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L42
.L36:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L42
.L38:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	262(%rax), %rsi
	leaq	-9(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_bytes
	jmp	.L41
.L44:
	nop
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	hash_gen, .-hash_gen
	.type	drbg_hash_instantiate, @function
drbg_hash_instantiate:
.LFB363:
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
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$255, %edx
	movq	%rax, %rdi
	call	hash_df
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	232(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	151(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	hash_df1
	testl	%eax, %eax
	je	.L46
	movl	$1, %eax
	jmp	.L48
.L46:
	movl	$0, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	drbg_hash_instantiate, .-drbg_hash_instantiate
	.type	drbg_hash_instantiate_wrapper, @function
drbg_hash_instantiate_wrapper:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L56
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drbg_hash_set_ctx_params_locked
	testl	%eax, %eax
	je	.L56
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_instantiate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L54
.L56:
	nop
.L54:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L55:
	movl	-4(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	drbg_hash_instantiate_wrapper, .-drbg_hash_instantiate_wrapper
	.type	drbg_hash_reseed, @function
drbg_hash_reseed:
.LFB365:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	151(%rax), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	hash_df
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	151(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	232(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	151(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	hash_df1
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	drbg_hash_reseed, .-drbg_hash_reseed
	.type	drbg_hash_reseed_wrapper, @function
drbg_hash_reseed_wrapper:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_reseed@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	drbg_hash_reseed_wrapper, .-drbg_hash_reseed_wrapper
	.type	drbg_hash_generate, @function
drbg_hash_generate:
.LFB367:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	192(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$24, %eax
	movb	%al, -16(%rbp)
	movl	-12(%rbp), %eax
	sarl	$16, %eax
	movb	%al, -15(%rbp)
	movl	-12(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -14(%rbp)
	movl	-12(%rbp), %eax
	movb	%al, -13(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L63
	cmpq	$0, -48(%rbp)
	je	.L64
	cmpq	$0, -56(%rbp)
	je	.L64
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	add_hash_to_v
	testl	%eax, %eax
	je	.L63
.L64:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hash_gen
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	add_hash_to_v
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	151(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	add_bytes
	testl	%eax, %eax
	je	.L63
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	add_bytes
	testl	%eax, %eax
	je	.L63
	movl	$1, %eax
	jmp	.L66
.L63:
	movl	$0, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	drbg_hash_generate, .-drbg_hash_generate
	.type	drbg_hash_generate_wrapper, @function
drbg_hash_generate_wrapper:
.LFB368:
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %r8
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_prov_drbg_generate@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	drbg_hash_generate_wrapper, .-drbg_hash_generate_wrapper
	.type	drbg_hash_uninstantiate, @function
drbg_hash_uninstantiate:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$151, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$262, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_drbg_uninstantiate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	drbg_hash_uninstantiate, .-drbg_hash_uninstantiate
	.type	drbg_hash_uninstantiate_wrapper, @function
drbg_hash_uninstantiate_wrapper:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	drbg_hash_uninstantiate
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L74:
	movl	-12(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	drbg_hash_uninstantiate_wrapper, .-drbg_hash_uninstantiate_wrapper
	.type	drbg_hash_verify_zeroization, @function
drbg_hash_verify_zeroization:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	$0, -16(%rbp)
	jmp	.L78
.L81:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$40, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L89
	addq	$1, -16(%rbp)
.L78:
	cmpq	$110, -16(%rbp)
	jbe	.L81
	movq	$0, -24(%rbp)
	jmp	.L82
.L84:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$151, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L90
	addq	$1, -24(%rbp)
.L82:
	cmpq	$110, -24(%rbp)
	jbe	.L84
	movq	$0, -32(%rbp)
	jmp	.L85
.L87:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$262, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L91
	addq	$1, -32(%rbp)
.L85:
	cmpq	$110, -32(%rbp)
	jbe	.L87
	movl	$1, -4(%rbp)
	jmp	.L80
.L89:
	nop
	jmp	.L80
.L90:
	nop
	jmp	.L80
.L91:
	nop
.L80:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L88:
	movl	-4(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	drbg_hash_verify_zeroization, .-drbg_hash_verify_zeroization
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/drbg_hash.c"
	.text
	.type	drbg_hash_new, @function
drbg_hash_new:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$423, %edx
	movq	%rax, %rsi
	movl	$376, %edi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	$111, 232(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 152(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 168(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 176(%rax)
	movq	-24(%rbp), %rax
	movq	$2147483647, 184(%rax)
	movq	-24(%rbp), %rax
	movq	$65536, 136(%rax)
	movl	$1, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	drbg_hash_new, .-drbg_hash_new
	.type	drbg_hash_new_wrapper, @function
drbg_hash_new_wrapper:
.LFB373:
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
	leaq	drbg_hash_instantiate(%rip), %r9
	leaq	drbg_hash_free(%rip), %r8
	leaq	drbg_hash_new(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	drbg_hash_generate(%rip), %rdi
	pushq	%rdi
	leaq	drbg_hash_reseed(%rip), %rdi
	pushq	%rdi
	leaq	drbg_hash_uninstantiate(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_rand_drbg_new@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	drbg_hash_new_wrapper, .-drbg_hash_new_wrapper
	.type	drbg_hash_free, @function
drbg_hash_free:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L98
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L98
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$456, %ecx
	movl	$376, %esi
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
.L98:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_drbg_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	drbg_hash_free, .-drbg_hash_free
	.section	.rodata
.LC1:
	.string	"digest"
	.text
	.type	drbg_hash_get_ctx_params, @function
drbg_hash_get_ctx_params:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -44(%rbp)
	leaq	-44(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_get_ctx_params_no_lock@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L108
.L100:
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.L102
	movl	$1, %eax
	jmp	.L108
.L102:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L108
.L103:
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L104
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L109
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L109
.L104:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_get_ctx_params@PLT
	movl	%eax, -4(%rbp)
	jmp	.L106
.L109:
	nop
.L106:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L107:
	movl	-4(%rbp), %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	drbg_hash_get_ctx_params, .-drbg_hash_get_ctx_params
	.type	drbg_hash_gettable_ctx_params, @function
drbg_hash_gettable_ctx_params:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	drbg_hash_gettable_ctx_params, .-drbg_hash_gettable_ctx_params
	.type	drbg_hash_set_ctx_params_locked, @function
drbg_hash_set_ctx_params_locked:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L114
.L113:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L115
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_verify_digest@PLT
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L114
.L116:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$3, %rax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$256, %eax
	jbe	.L117
	movq	-8(%rbp), %rax
	movl	$256, 128(%rax)
.L117:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$32, %rax
	jbe	.L118
	movq	-8(%rbp), %rax
	movq	$111, 232(%rax)
	jmp	.L119
.L118:
	movq	-8(%rbp), %rax
	movq	$55, 232(%rax)
.L119:
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 160(%rax)
.L115:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_set_ctx_params@PLT
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	drbg_hash_set_ctx_params_locked, .-drbg_hash_set_ctx_params_locked
	.type	drbg_hash_set_ctx_params, @function
drbg_hash_set_ctx_params:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drbg_hash_set_ctx_params_locked
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L123:
	movl	-12(%rbp), %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	drbg_hash_set_ctx_params, .-drbg_hash_set_ctx_params
	.type	drbg_hash_settable_ctx_params, @function
drbg_hash_settable_ctx_params:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	drbg_hash_settable_ctx_params, .-drbg_hash_settable_ctx_params
	.globl	ossl_drbg_hash_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_drbg_hash_functions, @object
	.size	ossl_drbg_hash_functions, 272
ossl_drbg_hash_functions:
	.long	1
	.zero	4
	.quad	drbg_hash_new_wrapper
	.long	2
	.zero	4
	.quad	drbg_hash_free
	.long	3
	.zero	4
	.quad	drbg_hash_instantiate_wrapper
	.long	4
	.zero	4
	.quad	drbg_hash_uninstantiate_wrapper
	.long	5
	.zero	4
	.quad	drbg_hash_generate_wrapper
	.long	6
	.zero	4
	.quad	drbg_hash_reseed_wrapper
	.long	8
	.zero	4
	.quad	ossl_drbg_enable_locking
	.long	9
	.zero	4
	.quad	ossl_drbg_lock
	.long	10
	.zero	4
	.quad	ossl_drbg_unlock
	.long	13
	.zero	4
	.quad	drbg_hash_settable_ctx_params
	.long	16
	.zero	4
	.quad	drbg_hash_set_ctx_params
	.long	12
	.zero	4
	.quad	drbg_hash_gettable_ctx_params
	.long	15
	.zero	4
	.quad	drbg_hash_get_ctx_params
	.long	17
	.zero	4
	.quad	drbg_hash_verify_zeroization
	.long	18
	.zero	4
	.quad	ossl_drbg_get_seed
	.long	19
	.zero	4
	.quad	ossl_drbg_clear_seed
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC2:
	.string	"state"
.LC3:
	.string	"strength"
.LC4:
	.string	"max_request"
.LC5:
	.string	"min_entropylen"
.LC6:
	.string	"max_entropylen"
.LC7:
	.string	"min_noncelen"
.LC8:
	.string	"max_noncelen"
.LC9:
	.string	"max_perslen"
.LC10:
	.string	"max_adinlen"
.LC11:
	.string	"reseed_counter"
.LC12:
	.string	"reseed_time"
.LC13:
	.string	"reseed_requests"
.LC14:
	.string	"reseed_time_interval"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params.1, @object
	.size	known_gettable_ctx_params.1, 600
known_gettable_ctx_params.1:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC9
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC11
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	1
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC15:
	.string	"properties"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 200
known_settable_ctx_params.0:
	.quad	.LC15
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

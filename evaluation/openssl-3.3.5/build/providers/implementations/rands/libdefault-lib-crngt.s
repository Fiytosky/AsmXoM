	.file	"crngt.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	crngt_get_entropy, @function
crngt_get_entropy:
.LFB402:
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
	leaq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %r8d
	movl	$16, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_prov_get_entropy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$16, -8(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L7:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cleanup_entropy@PLT
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %eax
	jmp	.L10
.L6:
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cleanup_entropy@PLT
.L9:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	crngt_get_entropy, .-crngt_get_entropy
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/crngt.c"
	.text
	.globl	ossl_rand_crng_ctx_free
	.type	ossl_rand_crng_ctx_free, @function
ossl_rand_crng_ctx_free:
.LFB403:
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
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_rand_crng_ctx_free, .-ossl_rand_crng_ctx_free
	.section	.rodata
.LC1:
	.string	""
.LC2:
	.string	"SHA256"
	.text
	.globl	ossl_rand_crng_ctx_new
	.type	ossl_rand_crng_ctx_new, @function
ossl_rand_crng_ctx_new:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$67, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L14
.L16:
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_rand_crng_ctx_new, .-ossl_rand_crng_ctx_new
	.section	.rodata
.LC3:
	.string	"Continuous_RNG_Test"
	.text
	.type	prov_crngt_compare_previous, @function
prov_crngt_compare_previous:
.LFB405:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L18
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	ossl_set_error_state@PLT
.L18:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	prov_crngt_compare_previous, .-prov_crngt_compare_previous
	.section	.rodata
.LC4:
	.string	"RNG"
	.text
	.globl	ossl_crngt_get_entropy
	.type	ossl_crngt_get_entropy, @function
ossl_crngt_get_entropy:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -228(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movl	%r9d, -232(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -52(%rbp)
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -80(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L41
.L21:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L41
.L23:
	movq	-80(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	movq	-80(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-176(%rbp), %rdx
	movl	$0, %r8d
	movq	%rax, %rdi
	call	crngt_get_entropy
	testl	%eax, %eax
	jne	.L25
	leaq	-176(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L26
.L25:
	movq	-80(%rbp), %rax
	movl	$1, 72(%rax)
.L24:
	movl	-228(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	.L27
	movq	-240(%rbp), %rax
	movq	%rax, -32(%rbp)
.L27:
	movq	-32(%rbp), %rax
	cmpq	%rax, -248(%rbp)
	jb	.L42
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$141, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L43
	leaq	-200(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_get_callback@PLT
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	je	.L30
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L44
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onbegin@PLT
.L30:
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L33
.L40:
	movq	-48(%rbp), %rax
	movl	$16, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -88(%rbp)
	cmpq	$15, -48(%rbp)
	ja	.L34
	leaq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L35
.L34:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L35:
	movq	-80(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-180(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	crngt_get_entropy
	testl	%eax, %eax
	je	.L45
	cmpq	$15, -48(%rbp)
	ja	.L37
	movq	-48(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L37:
	leaq	-160(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_oncorrupt_byte@PLT
	testl	%eax, %eax
	je	.L38
	movl	-180(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L38:
	movl	-180(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	prov_crngt_compare_previous
	testl	%eax, %eax
	jne	.L39
	movl	$0, -52(%rbp)
	jmp	.L32
.L39:
	movl	-180(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-88(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	subq	%rax, -48(%rbp)
.L33:
	cmpq	$0, -48(%rbp)
	jne	.L40
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-224(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	jmp	.L32
.L44:
	nop
	jmp	.L32
.L45:
	nop
.L32:
	movl	-52(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onend@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$181, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L26
.L42:
	nop
	jmp	.L26
.L43:
	nop
.L26:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-40(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_crngt_get_entropy, .-ossl_crngt_get_entropy
	.globl	ossl_crngt_cleanup_entropy
	.type	ossl_crngt_cleanup_entropy, @function
ossl_crngt_cleanup_entropy:
.LFB407:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$191, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_crngt_cleanup_entropy, .-ossl_crngt_cleanup_entropy
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

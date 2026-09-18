	.file	"cipher_sm4_gcm_hw.c"
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
	.type	sm4_gcm_initkey, @function
sm4_gcm_initkey:
.LFB402:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$704, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sm4_set_key@PLT
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	ossl_sm4_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-24(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	sm4_gcm_initkey, .-sm4_gcm_initkey
	.type	hw_gcm_cipher_update, @function
hw_gcm_cipher_update:
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L8
	movq	-8(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-8(%rbp), %rax
	movq	696(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L9:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L8:
	movq	-8(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movq	696(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	hw_gcm_cipher_update, .-hw_gcm_cipher_update
	.section	.data.rel.ro,"aw"
	.align 32
	.type	sm4_gcm, @object
	.size	sm4_gcm, 48
sm4_gcm:
	.quad	sm4_gcm_initkey
	.quad	ossl_gcm_setiv
	.quad	ossl_gcm_aad_update
	.quad	hw_gcm_cipher_update
	.quad	ossl_gcm_cipher_final
	.quad	ossl_gcm_one_shot
	.text
	.globl	ossl_prov_sm4_hw_gcm
	.type	ossl_prov_sm4_hw_gcm, @function
ossl_prov_sm4_hw_gcm:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm4_gcm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_sm4_hw_gcm, .-ossl_prov_sm4_hw_gcm
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

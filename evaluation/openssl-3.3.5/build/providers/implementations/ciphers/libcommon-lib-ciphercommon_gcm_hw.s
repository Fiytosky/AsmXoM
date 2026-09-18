	.file	"ciphercommon_gcm_hw.c"
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
	.globl	ossl_gcm_setiv
	.type	ossl_gcm_setiv, @function
ossl_gcm_setiv:
.LFB402:
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
	leaq	248(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_gcm_setiv, .-ossl_gcm_setiv
	.globl	ossl_gcm_aad_update
	.type	ossl_gcm_aad_update, @function
ossl_gcm_aad_update:
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
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_aad@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_gcm_aad_update, .-ossl_gcm_aad_update
	.globl	ossl_gcm_cipher_update
	.type	ossl_gcm_cipher_update, @function
ossl_gcm_cipher_update:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L10
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L11
	movl	$0, %eax
	jmp	.L12
.L10:
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_gcm_cipher_update, .-ossl_gcm_cipher_update
	.globl	ossl_gcm_cipher_final
	.type	ossl_gcm_cipher_final, @function
ossl_gcm_cipher_final:
.LFB405:
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
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L14
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_tag@PLT
	movq	-8(%rbp), %rax
	movq	$16, 24(%rax)
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_finish@PLT
	testl	%eax, %eax
	je	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_gcm_cipher_final, .-ossl_gcm_cipher_final
	.globl	ossl_gcm_one_shot
	.type	ossl_gcm_one_shot, @function
ossl_gcm_one_shot:
.LFB406:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	16(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	24(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movq	$16, 24(%rax)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	32(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L25
	movl	$1, -4(%rbp)
	jmp	.L19
.L23:
	nop
	jmp	.L19
.L24:
	nop
	jmp	.L19
.L25:
	nop
.L19:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_gcm_one_shot, .-ossl_gcm_one_shot
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

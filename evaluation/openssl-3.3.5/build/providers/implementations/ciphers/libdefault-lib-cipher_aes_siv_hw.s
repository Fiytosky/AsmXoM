	.file	"cipher_aes_siv_hw.c"
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
	.section	.rodata
.LC0:
	.string	"AES-128-CBC"
.LC1:
	.string	"AES-128-CTR"
.LC2:
	.string	"AES-192-CBC"
.LC3:
	.string	"AES-192-CTR"
.LC4:
	.string	"AES-256-CBC"
.LC5:
	.string	"AES-256-CTR"
	.text
	.type	aes_siv_initkey, @function
aes_siv_initkey:
.LFB402:
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
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	shrq	%rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	cmpq	$32, -24(%rbp)
	je	.L6
	cmpq	$32, -24(%rbp)
	ja	.L14
	cmpq	$16, -24(%rbp)
	je	.L8
	cmpq	$24, -24(%rbp)
	je	.L9
	jmp	.L14
.L8:
	movq	-40(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	jmp	.L10
.L9:
	movq	-40(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-40(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	jmp	.L10
.L6:
	movq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-40(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	jmp	.L10
.L14:
	nop
.L10:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L12
.L11:
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	ossl_siv128_init@PLT
	addq	$16, %rsp
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_siv_initkey, .-aes_siv_initkey
	.type	aes_siv_dupctx, @function
aes_siv_dupctx:
.LFB403:
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
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rdx
	movq	%rdx, 112(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_siv128_copy_ctx@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_up_ref@PLT
.L18:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_up_ref@PLT
.L19:
	movl	$1, %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_siv_dupctx, .-aes_siv_dupctx
	.type	aes_siv_settag, @function
aes_siv_settag:
.LFB404:
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
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_siv128_set_tag@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_siv_settag, .-aes_siv_settag
	.type	aes_siv_setspeed, @function
aes_siv_setspeed:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_siv128_speed@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_siv_setspeed, .-aes_siv_setspeed
	.type	aes_siv_cleanup, @function
aes_siv_cleanup:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_siv128_cleanup@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_siv_cleanup, .-aes_siv_cleanup
	.type	aes_siv_cipher, @function
aes_siv_cipher:
.LFB407:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_siv128_finish@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L26
.L25:
	cmpq	$0, -32(%rbp)
	jne	.L27
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_siv128_aad@PLT
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L28
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_siv128_encrypt@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L26
.L28:
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_siv128_decrypt@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_siv_cipher, .-aes_siv_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_siv_hw, @object
	.size	aes_siv_hw, 48
aes_siv_hw:
	.quad	aes_siv_initkey
	.quad	aes_siv_cipher
	.quad	aes_siv_setspeed
	.quad	aes_siv_settag
	.quad	aes_siv_cleanup
	.quad	aes_siv_dupctx
	.text
	.globl	ossl_prov_cipher_hw_aes_siv
	.type	ossl_prov_cipher_hw_aes_siv, @function
ossl_prov_cipher_hw_aes_siv:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aes_siv_hw(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_aes_siv, .-ossl_prov_cipher_hw_aes_siv
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

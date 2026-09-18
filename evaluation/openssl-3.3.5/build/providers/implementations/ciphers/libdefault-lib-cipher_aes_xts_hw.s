	.file	"cipher_aes_xts_hw.c"
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
	.type	cipher_hw_aes_xts_generic_initkey, @function
cipher_hw_aes_xts_generic_initkey:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L6
	movq	ossl_bsaes_xts_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	ossl_bsaes_xts_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L7
.L6:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L7
	movq	-88(%rbp), %rax
	shrq	%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L8
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 704(%rax)
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_decrypt_key@PLT
	movq	-24(%rbp), %rax
	movq	vpaes_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 704(%rax)
.L9:
	movq	-24(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 712(%rax)
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 688(%rax)
	movq	-24(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 696(%rax)
	movq	-72(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L10
	movq	-8(%rbp), %rax
	jmp	.L11
.L10:
	movq	-16(%rbp), %rax
.L11:
	movq	-24(%rbp), %rdx
	movq	%rax, 720(%rdx)
	movl	$1, %eax
	jmp	.L12
.L7:
	movq	-88(%rbp), %rax
	shrq	%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L13
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 704(%rax)
	jmp	.L14
.L13:
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movq	-24(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 704(%rax)
.L14:
	movq	-24(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 712(%rax)
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 688(%rax)
	movq	-24(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 696(%rax)
	movq	-72(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L15
	movq	-8(%rbp), %rax
	jmp	.L16
.L15:
	movq	-16(%rbp), %rax
.L16:
	movq	-24(%rbp), %rdx
	movq	%rax, 720(%rdx)
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_aes_xts_generic_initkey, .-cipher_hw_aes_xts_generic_initkey
	.type	cipher_hw_aes_xts_copyctx, @function
cipher_hw_aes_xts_copyctx:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$91, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 688(%rax)
	movq	-16(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 696(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_aes_xts_copyctx, .-cipher_hw_aes_xts_copyctx
	.type	cipher_hw_aesni_xts_initkey, @function
cipher_hw_aesni_xts_initkey:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L19
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 704(%rax)
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	aesni_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 704(%rax)
.L20:
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 712(%rax)
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 688(%rax)
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 696(%rax)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L21
	movq	aesni_xts_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L22
.L21:
	movq	aesni_xts_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
.L22:
	movq	-8(%rbp), %rax
	movq	%rdx, 720(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	cipher_hw_aesni_xts_initkey, .-cipher_hw_aesni_xts_initkey
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	aes_generic_xts, @object
	.size	aes_generic_xts, 24
aes_generic_xts:
	.quad	cipher_hw_aes_xts_generic_initkey
	.quad	0
	.quad	cipher_hw_aes_xts_copyctx
	.align 16
	.type	aesni_xts, @object
	.size	aesni_xts, 24
aesni_xts:
	.quad	cipher_hw_aesni_xts_initkey
	.quad	0
	.quad	cipher_hw_aes_xts_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_xts
	.type	ossl_prov_cipher_hw_aes_xts, @function
ossl_prov_cipher_hw_aes_xts:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L25
	leaq	aesni_xts(%rip), %rax
	jmp	.L26
.L25:
	leaq	aes_generic_xts(%rip), %rax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_prov_cipher_hw_aes_xts, .-ossl_prov_cipher_hw_aes_xts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

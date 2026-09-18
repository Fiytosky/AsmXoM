	.file	"cipher_aes_ocb_hw.c"
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
	.type	cipher_hw_aes_ocb_generic_initkey, @function
cipher_hw_aes_ocb_generic_initkey:
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
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	%rax, %rdi
	call	CRYPTO_ocb128_cleanup@PLT
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	vpaes_decrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	vpaes_encrypt@GOTPCREL(%rip), %rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ocb128_init@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movzbl	868(%rax), %edx
	orl	$1, %edx
	movb	%dl, 868(%rax)
	jmp	.L9
.L6:
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	%rax, %rdi
	call	CRYPTO_ocb128_cleanup@PLT
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	AES_encrypt@GOTPCREL(%rip), %rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ocb128_init@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	movzbl	868(%rax), %edx
	orl	$1, %edx
	movb	%dl, 868(%rax)
.L9:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_aes_ocb_generic_initkey, .-cipher_hw_aes_ocb_generic_initkey
	.type	cipher_hw_aes_ocb_aesni_initkey, @function
cipher_hw_aes_ocb_aesni_initkey:
.LFB403:
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
	addq	$688, %rax
	movq	%rax, %rdi
	call	CRYPTO_ocb128_cleanup@PLT
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L12
	movq	aesni_ocb_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	jmp	.L13
.L12:
	movq	aesni_ocb_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
.L13:
	movq	-8(%rbp), %rax
	leaq	440(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-8(%rbp), %rax
	addq	$688, %rax
	movq	aesni_decrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %r8
	movq	aesni_encrypt@GOTPCREL(%rip), %rcx
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_ocb128_init@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movzbl	868(%rax), %edx
	orl	$1, %edx
	movb	%dl, 868(%rax)
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_aes_ocb_aesni_initkey, .-cipher_hw_aes_ocb_aesni_initkey
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	aes_generic_ocb, @object
	.size	aes_generic_ocb, 24
aes_generic_ocb:
	.quad	cipher_hw_aes_ocb_generic_initkey
	.quad	0
	.zero	8
	.align 16
	.type	aesni_ocb, @object
	.size	aesni_ocb, 24
aesni_ocb:
	.quad	cipher_hw_aes_ocb_aesni_initkey
	.quad	0
	.zero	8
	.text
	.globl	ossl_prov_cipher_hw_aes_ocb
	.type	ossl_prov_cipher_hw_aes_ocb, @function
ossl_prov_cipher_hw_aes_ocb:
.LFB404:
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
	je	.L17
	leaq	aesni_ocb(%rip), %rax
	jmp	.L18
.L17:
	leaq	aes_generic_ocb(%rip), %rax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_cipher_hw_aes_ocb, .-ossl_prov_cipher_hw_aes_ocb
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

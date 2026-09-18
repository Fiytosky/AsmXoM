	.file	"cipher_aes_hw.c"
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
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aes_hw.c"
	.text
	.type	cipher_hw_aes_initkey, @function
cipher_hw_aes_initkey:
.LFB402:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L6
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L7
.L6:
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L7
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L8
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L8
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	ossl_bsaes_cbc_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L15
.L8:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L10
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	vpaes_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L11
	movq	vpaes_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L12
.L11:
	movl	$0, %edx
.L12:
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L15
.L10:
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	AES_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L13
	movq	AES_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L14
.L13:
	movl	$0, %edx
.L14:
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L15
.L7:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L16
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$5, %eax
	jne	.L16
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	ossl_bsaes_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L15
.L16:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L17
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	vpaes_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L18
	movq	vpaes_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L19
.L18:
	movl	$0, %edx
.L19:
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L15
.L17:
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	AES_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L20
	movq	AES_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L21
.L20:
	movl	$0, %edx
.L21:
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
.L15:
	cmpl	$0, -4(%rbp)
	jns	.L22
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_aes_initkey, .-cipher_hw_aes_initkey
	.type	cipher_hw_aes_copyctx, @function
cipher_hw_aes_copyctx:
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
	movl	$56, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_aes_copyctx, .-cipher_hw_aes_copyctx
	.section	.rodata
	.align 8
.LC1:
	.string	"../providers/implementations/ciphers/cipher_aes_hw_aesni.inc"
	.text
	.type	cipher_hw_aesni_initkey, @function
cipher_hw_aesni_initkey:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L26
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L27
.L26:
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L27
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	aesni_decrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L28
	movq	aesni_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	jmp	.L29
.L28:
	movl	$0, %edx
.L29:
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L30
.L27:
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	aesni_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L31
	movq	-40(%rbp), %rax
	movq	aesni_cbc_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L30
.L31:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$5, %eax
	jne	.L32
	movq	-40(%rbp), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L30
.L32:
	movq	-40(%rbp), %rax
	movq	$0, 56(%rax)
.L30:
	cmpl	$0, -4(%rbp)
	jns	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	cipher_hw_aesni_initkey, .-cipher_hw_aesni_initkey
	.type	cipher_hw_aesni_cbc, @function
cipher_hw_aesni_cbc:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	cipher_hw_aesni_cbc, .-cipher_hw_aesni_cbc
	.type	cipher_hw_aesni_ecb, @function
cipher_hw_aesni_ecb:
.LFB406:
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
	movq	88(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	aesni_ecb_encrypt@PLT
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	cipher_hw_aesni_ecb, .-cipher_hw_aesni_ecb
	.section	.data.rel.ro,"aw"
	.align 16
	.type	aes_cbc, @object
	.size	aes_cbc, 24
aes_cbc:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_cbc
	.quad	cipher_hw_aes_copyctx
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	aesni_cbc, @object
	.size	aesni_cbc, 24
aesni_cbc:
	.quad	cipher_hw_aesni_initkey
	.quad	cipher_hw_aesni_cbc
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_cbc
	.type	ossl_prov_cipher_hw_aes_cbc, @function
ossl_prov_cipher_hw_aes_cbc:
.LFB407:
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
	je	.L41
	leaq	aesni_cbc(%rip), %rax
	jmp	.L42
.L41:
	leaq	aes_cbc(%rip), %rax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_prov_cipher_hw_aes_cbc, .-ossl_prov_cipher_hw_aes_cbc
	.section	.data.rel.ro
	.align 16
	.type	aes_ecb, @object
	.size	aes_ecb, 24
aes_ecb:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_ecb
	.quad	cipher_hw_aes_copyctx
	.section	.data.rel.ro.local
	.align 16
	.type	aesni_ecb, @object
	.size	aesni_ecb, 24
aesni_ecb:
	.quad	cipher_hw_aesni_initkey
	.quad	cipher_hw_aesni_ecb
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_ecb
	.type	ossl_prov_cipher_hw_aes_ecb, @function
ossl_prov_cipher_hw_aes_ecb:
.LFB408:
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
	je	.L44
	leaq	aesni_ecb(%rip), %rax
	jmp	.L45
.L44:
	leaq	aes_ecb(%rip), %rax
.L45:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_aes_ecb, .-ossl_prov_cipher_hw_aes_ecb
	.section	.data.rel.ro
	.align 16
	.type	aes_ofb128, @object
	.size	aes_ofb128, 24
aes_ofb128:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_ofb128
	.quad	cipher_hw_aes_copyctx
	.align 16
	.type	aesni_ofb128, @object
	.size	aesni_ofb128, 24
aesni_ofb128:
	.quad	cipher_hw_aesni_initkey
	.quad	ossl_cipher_hw_generic_ofb128
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_ofb128
	.type	ossl_prov_cipher_hw_aes_ofb128, @function
ossl_prov_cipher_hw_aes_ofb128:
.LFB409:
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
	je	.L47
	leaq	aesni_ofb128(%rip), %rax
	jmp	.L48
.L47:
	leaq	aes_ofb128(%rip), %rax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_prov_cipher_hw_aes_ofb128, .-ossl_prov_cipher_hw_aes_ofb128
	.section	.data.rel.ro
	.align 16
	.type	aes_cfb128, @object
	.size	aes_cfb128, 24
aes_cfb128:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_cfb128
	.quad	cipher_hw_aes_copyctx
	.align 16
	.type	aesni_cfb128, @object
	.size	aesni_cfb128, 24
aesni_cfb128:
	.quad	cipher_hw_aesni_initkey
	.quad	ossl_cipher_hw_generic_cfb128
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_cfb128
	.type	ossl_prov_cipher_hw_aes_cfb128, @function
ossl_prov_cipher_hw_aes_cfb128:
.LFB410:
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
	je	.L50
	leaq	aesni_cfb128(%rip), %rax
	jmp	.L51
.L50:
	leaq	aes_cfb128(%rip), %rax
.L51:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_cipher_hw_aes_cfb128, .-ossl_prov_cipher_hw_aes_cfb128
	.section	.data.rel.ro
	.align 16
	.type	aes_cfb1, @object
	.size	aes_cfb1, 24
aes_cfb1:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_cfb1
	.quad	cipher_hw_aes_copyctx
	.align 16
	.type	aesni_cfb1, @object
	.size	aesni_cfb1, 24
aesni_cfb1:
	.quad	cipher_hw_aesni_initkey
	.quad	ossl_cipher_hw_generic_cfb1
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_cfb1
	.type	ossl_prov_cipher_hw_aes_cfb1, @function
ossl_prov_cipher_hw_aes_cfb1:
.LFB411:
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
	je	.L53
	leaq	aesni_cfb1(%rip), %rax
	jmp	.L54
.L53:
	leaq	aes_cfb1(%rip), %rax
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_prov_cipher_hw_aes_cfb1, .-ossl_prov_cipher_hw_aes_cfb1
	.section	.data.rel.ro
	.align 16
	.type	aes_cfb8, @object
	.size	aes_cfb8, 24
aes_cfb8:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_cfb8
	.quad	cipher_hw_aes_copyctx
	.align 16
	.type	aesni_cfb8, @object
	.size	aesni_cfb8, 24
aesni_cfb8:
	.quad	cipher_hw_aesni_initkey
	.quad	ossl_cipher_hw_generic_cfb8
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_cfb8
	.type	ossl_prov_cipher_hw_aes_cfb8, @function
ossl_prov_cipher_hw_aes_cfb8:
.LFB412:
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
	je	.L56
	leaq	aesni_cfb8(%rip), %rax
	jmp	.L57
.L56:
	leaq	aes_cfb8(%rip), %rax
.L57:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_prov_cipher_hw_aes_cfb8, .-ossl_prov_cipher_hw_aes_cfb8
	.section	.data.rel.ro
	.align 16
	.type	aes_ctr, @object
	.size	aes_ctr, 24
aes_ctr:
	.quad	cipher_hw_aes_initkey
	.quad	ossl_cipher_hw_generic_ctr
	.quad	cipher_hw_aes_copyctx
	.align 16
	.type	aesni_ctr, @object
	.size	aesni_ctr, 24
aesni_ctr:
	.quad	cipher_hw_aesni_initkey
	.quad	ossl_cipher_hw_generic_ctr
	.quad	cipher_hw_aes_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aes_ctr
	.type	ossl_prov_cipher_hw_aes_ctr, @function
ossl_prov_cipher_hw_aes_ctr:
.LFB413:
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
	je	.L59
	leaq	aesni_ctr(%rip), %rax
	jmp	.L60
.L59:
	leaq	aes_ctr(%rip), %rax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_prov_cipher_hw_aes_ctr, .-ossl_prov_cipher_hw_aes_ctr
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"cipher_hw_aes_initkey"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"cipher_hw_aesni_initkey"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

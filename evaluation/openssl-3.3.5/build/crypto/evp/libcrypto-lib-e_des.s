	.file	"e_des.c"
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
	.type	des_ecb_cipher, @function
des_ecb_cipher:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movl	4(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movq	-32(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L8
.L9:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	DES_ecb_encrypt@PLT
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L8:
	movq	-24(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L9
	movl	$1, %eax
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	des_ecb_cipher, .-des_ecb_cipher
	.type	des_ofb_cipher, @function
des_ofb_cipher:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	jmp	.L11
.L12:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	leaq	-20(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ofb64_encrypt@PLT
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L11:
	cmpq	$1073741823, -64(%rbp)
	ja	.L12
	cmpq	$0, -64(%rbp)
	je	.L13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	DES_ofb64_encrypt@PLT
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L13:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	des_ofb_cipher, .-des_ofb_cipher
	.type	des_cbc_cipher, @function
des_cbc_cipher:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	128(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	$1, %eax
	jmp	.L17
.L19:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ncbc_encrypt@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L18:
	cmpq	$1073741823, -64(%rbp)
	ja	.L19
	cmpq	$0, -64(%rbp)
	je	.L20
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rax, %rdi
	call	DES_ncbc_encrypt@PLT
.L20:
	movl	$1, %eax
.L17:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	des_cbc_cipher, .-des_cbc_cipher
	.type	des_cfb64_cipher, @function
des_cfb64_cipher:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	jmp	.L22
.L23:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	leaq	-20(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L22:
	cmpq	$1073741823, -64(%rbp)
	ja	.L23
	cmpq	$0, -64(%rbp)
	je	.L24
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdi, %r9
	movq	%r12, %r8
	movq	%rax, %rdi
	call	DES_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L24:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	des_cfb64_cipher, .-des_cfb64_cipher
	.type	des_cfb1_cipher, @function
des_cfb1_cipher:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$134217728, -32(%rbp)
	movb	$0, -34(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L28
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L28
.L32:
	movq	$0, -24(%rbp)
	jmp	.L29
.L30:
	movq	-24(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	sall	$7, %eax
	movb	%al, -33(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	leaq	-34(%rbp), %rsi
	leaq	-33(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	DES_cfb_encrypt@PLT
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	andl	$7, %eax
	movl	$-129, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	%eax, %esi
	movzbl	-34(%rbp), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movq	-24(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L29:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L30
	movq	-32(%rbp), %rax
	subq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L28
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
.L28:
	cmpq	$0, -80(%rbp)
	je	.L31
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L32
.L31:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	des_cfb1_cipher, .-des_cfb1_cipher
	.type	des_cfb8_cipher, @function
des_cfb8_cipher:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rdx, %r8
	movl	$1073741824, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_cfb_encrypt@PLT
	addq	$16, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L35:
	cmpq	$1073741823, -48(%rbp)
	ja	.L36
	cmpq	$0, -48(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_cfb_encrypt@PLT
	addq	$16, %rsp
.L37:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	des_cfb8_cipher, .-des_cfb8_cipher
	.section	.data.rel.ro,"aw"
	.align 32
	.type	des_cbc, @object
	.size	des_cbc, 248
des_cbc:
	.long	31
	.long	8
	.long	8
	.long	8
	.quad	514
	.long	1
	.zero	4
	.quad	des_init_key
	.quad	des_cbc_cipher
	.quad	0
	.long	136
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	des_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_cbc
	.type	EVP_des_cbc, @function
EVP_des_cbc:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_des_cbc, .-EVP_des_cbc
	.section	.data.rel.ro
	.align 32
	.type	des_cfb64, @object
	.size	des_cfb64, 248
des_cfb64:
	.long	30
	.long	1
	.long	8
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_init_key
	.quad	des_cfb64_cipher
	.quad	0
	.long	136
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	des_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_cfb64
	.type	EVP_des_cfb64, @function
EVP_des_cfb64:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_des_cfb64, .-EVP_des_cfb64
	.section	.data.rel.ro
	.align 32
	.type	des_ofb, @object
	.size	des_ofb, 248
des_ofb:
	.long	45
	.long	1
	.long	8
	.long	8
	.quad	516
	.long	1
	.zero	4
	.quad	des_init_key
	.quad	des_ofb_cipher
	.quad	0
	.long	136
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	des_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ofb
	.type	EVP_des_ofb, @function
EVP_des_ofb:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_des_ofb, .-EVP_des_ofb
	.section	.data.rel.ro
	.align 32
	.type	des_ecb, @object
	.size	des_ecb, 248
des_ecb:
	.long	29
	.long	8
	.long	8
	.long	0
	.quad	513
	.long	1
	.zero	4
	.quad	des_init_key
	.quad	des_ecb_cipher
	.quad	0
	.long	136
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	des_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ecb
	.type	EVP_des_ecb, @function
EVP_des_ecb:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EVP_des_ecb, .-EVP_des_ecb
	.section	.data.rel.ro
	.align 32
	.type	des_cfb1, @object
	.size	des_cfb1, 248
des_cfb1:
	.long	656
	.long	1
	.long	8
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_init_key
	.quad	des_cfb1_cipher
	.quad	0
	.long	136
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	des_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_cfb1
	.type	EVP_des_cfb1, @function
EVP_des_cfb1:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	EVP_des_cfb1, .-EVP_des_cfb1
	.section	.data.rel.ro
	.align 32
	.type	des_cfb8, @object
	.size	des_cfb8, 248
des_cfb8:
	.long	657
	.long	1
	.long	8
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_init_key
	.quad	des_cfb8_cipher
	.quad	0
	.long	136
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	des_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_cfb8
	.type	EVP_des_cfb8, @function
EVP_des_cfb8:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EVP_des_cfb8, .-EVP_des_cfb8
	.type	des_init_key, @function
des_init_key:
.LFB494:
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
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	des_init_key, .-des_init_key
	.type	des_ctrl, @function
des_ctrl:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$6, -12(%rbp)
	jne	.L54
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	testl	%eax, %eax
	jg	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movl	$1, %eax
	jmp	.L56
.L54:
	movl	$-1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	des_ctrl, .-des_ctrl
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

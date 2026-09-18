	.file	"e_bf.c"
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
	.type	bf_cbc_cipher, @function
bf_cbc_cipher:
.LFB482:
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
	jmp	.L6
.L7:
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
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	BF_cbc_encrypt@PLT
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L6:
	cmpq	$1073741823, -48(%rbp)
	ja	.L7
	cmpq	$0, -48(%rbp)
	je	.L8
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
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rax, %rdi
	call	BF_cbc_encrypt@PLT
.L8:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	bf_cbc_cipher, .-bf_cbc_cipher
	.type	bf_cfb64_cipher, @function
bf_cfb64_cipher:
.LFB483:
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
	movq	$1073741824, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L12
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L12
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	BF_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movq	-24(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L12
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L12:
	cmpq	$0, -64(%rbp)
	je	.L14
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L15
.L14:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	bf_cfb64_cipher, .-bf_cfb64_cipher
	.type	bf_ecb_cipher, @function
bf_ecb_cipher:
.LFB484:
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
	jnb	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movq	-32(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L20
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ebx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BF_ecb_encrypt@PLT
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L20:
	movq	-24(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L21
	movl	$1, %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	bf_ecb_cipher, .-bf_ecb_cipher
	.type	bf_ofb_cipher, @function
bf_ofb_cipher:
.LFB485:
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
	jmp	.L23
.L24:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %r9
	movq	%rbx, %r8
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	BF_ofb64_encrypt@PLT
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L23:
	cmpq	$1073741823, -64(%rbp)
	ja	.L24
	cmpq	$0, -64(%rbp)
	je	.L25
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	BF_ofb64_encrypt@PLT
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L25:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	bf_ofb_cipher, .-bf_ofb_cipher
	.section	.data.rel.ro,"aw"
	.align 32
	.type	bf_cbc, @object
	.size	bf_cbc, 248
bf_cbc:
	.long	91
	.long	8
	.long	16
	.long	8
	.quad	10
	.long	1
	.zero	4
	.quad	bf_init_key
	.quad	bf_cbc_cipher
	.quad	0
	.long	4168
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_bf_cbc
	.type	EVP_bf_cbc, @function
EVP_bf_cbc:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	bf_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	EVP_bf_cbc, .-EVP_bf_cbc
	.section	.data.rel.ro
	.align 32
	.type	bf_cfb64, @object
	.size	bf_cfb64, 248
bf_cfb64:
	.long	93
	.long	1
	.long	16
	.long	8
	.quad	11
	.long	1
	.zero	4
	.quad	bf_init_key
	.quad	bf_cfb64_cipher
	.quad	0
	.long	4168
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_bf_cfb64
	.type	EVP_bf_cfb64, @function
EVP_bf_cfb64:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	bf_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	EVP_bf_cfb64, .-EVP_bf_cfb64
	.section	.data.rel.ro
	.align 32
	.type	bf_ofb, @object
	.size	bf_ofb, 248
bf_ofb:
	.long	94
	.long	1
	.long	16
	.long	8
	.quad	12
	.long	1
	.zero	4
	.quad	bf_init_key
	.quad	bf_ofb_cipher
	.quad	0
	.long	4168
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_bf_ofb
	.type	EVP_bf_ofb, @function
EVP_bf_ofb:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	bf_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_bf_ofb, .-EVP_bf_ofb
	.section	.data.rel.ro
	.align 32
	.type	bf_ecb, @object
	.size	bf_ecb, 248
bf_ecb:
	.long	92
	.long	8
	.long	16
	.long	0
	.quad	9
	.long	1
	.zero	4
	.quad	bf_init_key
	.quad	bf_ecb_cipher
	.quad	0
	.long	4168
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_bf_ecb
	.type	EVP_bf_ecb, @function
EVP_bf_ecb:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	bf_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_bf_ecb, .-EVP_bf_ecb
	.type	bf_init_key, @function
bf_init_key:
.LFB490:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	BF_set_key@PLT
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	bf_init_key, .-bf_init_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"e_rc2.c"
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
	.type	rc2_cbc_cipher, @function
rc2_cbc_cipher:
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
	leaq	4(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	RC2_cbc_encrypt@PLT
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
	leaq	4(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %r9d
	movq	%r12, %r8
	movq	%rax, %rdi
	call	RC2_cbc_encrypt@PLT
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
	.size	rc2_cbc_cipher, .-rc2_cbc_cipher
	.type	rc2_cfb64_cipher, @function
rc2_cfb64_cipher:
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
	leaq	4(%rax), %rcx
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdi, %r9
	movq	%r12, %r8
	movq	%rax, %rdi
	call	RC2_cfb64_encrypt@PLT
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
	.size	rc2_cfb64_cipher, .-rc2_cfb64_cipher
	.type	rc2_ecb_cipher, @function
rc2_ecb_cipher:
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
	leaq	4(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	RC2_ecb_encrypt@PLT
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
	.size	rc2_ecb_cipher, .-rc2_ecb_cipher
	.type	rc2_ofb_cipher, @function
rc2_ofb_cipher:
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
	leaq	4(%rax), %rdx
	leaq	-20(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	RC2_ofb64_encrypt@PLT
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
	leaq	4(%rax), %rcx
	movq	-64(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	RC2_ofb64_encrypt@PLT
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
	.size	rc2_ofb_cipher, .-rc2_ofb_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rc2_cbc, @object
	.size	rc2_cbc, 248
rc2_cbc:
	.long	37
	.long	8
	.long	16
	.long	8
	.quad	74
	.long	1
	.zero	4
	.quad	rc2_init_key
	.quad	rc2_cbc_cipher
	.quad	0
	.long	260
	.zero	4
	.quad	rc2_set_asn1_type_and_iv
	.quad	rc2_get_asn1_type_and_iv
	.quad	rc2_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_rc2_cbc
	.type	EVP_rc2_cbc, @function
EVP_rc2_cbc:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rc2_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	EVP_rc2_cbc, .-EVP_rc2_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	rc2_cfb64, @object
	.size	rc2_cfb64, 248
rc2_cfb64:
	.long	39
	.long	1
	.long	16
	.long	8
	.quad	75
	.long	1
	.zero	4
	.quad	rc2_init_key
	.quad	rc2_cfb64_cipher
	.quad	0
	.long	260
	.zero	4
	.quad	rc2_set_asn1_type_and_iv
	.quad	rc2_get_asn1_type_and_iv
	.quad	rc2_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_rc2_cfb64
	.type	EVP_rc2_cfb64, @function
EVP_rc2_cfb64:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rc2_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	EVP_rc2_cfb64, .-EVP_rc2_cfb64
	.section	.data.rel.ro.local
	.align 32
	.type	rc2_ofb, @object
	.size	rc2_ofb, 248
rc2_ofb:
	.long	40
	.long	1
	.long	16
	.long	8
	.quad	76
	.long	1
	.zero	4
	.quad	rc2_init_key
	.quad	rc2_ofb_cipher
	.quad	0
	.long	260
	.zero	4
	.quad	rc2_set_asn1_type_and_iv
	.quad	rc2_get_asn1_type_and_iv
	.quad	rc2_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_rc2_ofb
	.type	EVP_rc2_ofb, @function
EVP_rc2_ofb:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rc2_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_rc2_ofb, .-EVP_rc2_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	rc2_ecb, @object
	.size	rc2_ecb, 248
rc2_ecb:
	.long	38
	.long	8
	.long	16
	.long	0
	.quad	73
	.long	1
	.zero	4
	.quad	rc2_init_key
	.quad	rc2_ecb_cipher
	.quad	0
	.long	260
	.zero	4
	.quad	rc2_set_asn1_type_and_iv
	.quad	rc2_get_asn1_type_and_iv
	.quad	rc2_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_rc2_ecb
	.type	EVP_rc2_ecb, @function
EVP_rc2_ecb:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rc2_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_rc2_ecb, .-EVP_rc2_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	r2_64_cbc_cipher, @object
	.size	r2_64_cbc_cipher, 248
r2_64_cbc_cipher:
	.long	166
	.long	8
	.long	8
	.long	8
	.quad	74
	.long	1
	.zero	4
	.quad	rc2_init_key
	.quad	rc2_cbc_cipher
	.quad	0
	.long	260
	.zero	4
	.quad	rc2_set_asn1_type_and_iv
	.quad	rc2_get_asn1_type_and_iv
	.quad	rc2_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	r2_40_cbc_cipher, @object
	.size	r2_40_cbc_cipher, 248
r2_40_cbc_cipher:
	.long	98
	.long	8
	.long	5
	.long	8
	.quad	74
	.long	1
	.zero	4
	.quad	rc2_init_key
	.quad	rc2_cbc_cipher
	.quad	0
	.long	260
	.zero	4
	.quad	rc2_set_asn1_type_and_iv
	.quad	rc2_get_asn1_type_and_iv
	.quad	rc2_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_rc2_64_cbc
	.type	EVP_rc2_64_cbc, @function
EVP_rc2_64_cbc:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	r2_64_cbc_cipher(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_rc2_64_cbc, .-EVP_rc2_64_cbc
	.globl	EVP_rc2_40_cbc
	.type	EVP_rc2_40_cbc, @function
EVP_rc2_40_cbc:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	r2_40_cbc_cipher(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EVP_rc2_40_cbc, .-EVP_rc2_40_cbc
	.type	rc2_init_key, @function
rc2_init_key:
.LFB492:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movl	(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, %r12d
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	4(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	%r12d, %esi
	call	RC2_set_key@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	rc2_init_key, .-rc2_init_key
	.type	rc2_meth_to_magic, @function
rc2_meth_to_magic:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L42
	movl	$0, %eax
	jmp	.L47
.L42:
	movl	-4(%rbp), %eax
	cmpl	$128, %eax
	jne	.L44
	movl	$58, %eax
	jmp	.L47
.L44:
	movl	-4(%rbp), %eax
	cmpl	$64, %eax
	jne	.L45
	movl	$120, %eax
	jmp	.L47
.L45:
	movl	-4(%rbp), %eax
	cmpl	$40, %eax
	jne	.L46
	movl	$160, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	rc2_meth_to_magic, .-rc2_meth_to_magic
	.section	.rodata
.LC0:
	.string	"../crypto/evp/e_rc2.c"
	.text
	.type	rc2_magic_to_meth, @function
rc2_magic_to_meth:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$58, -4(%rbp)
	jne	.L49
	movl	$128, %eax
	jmp	.L50
.L49:
	cmpl	$120, -4(%rbp)
	jne	.L51
	movl	$64, %eax
	jmp	.L50
.L51:
	cmpl	$160, -4(%rbp)
	jne	.L52
	movl	$40, %eax
	jmp	.L50
.L52:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	rc2_magic_to_meth, .-rc2_magic_to_meth
	.section	.rodata
	.align 8
.LC1:
	.string	"assertion failed: l <= sizeof(iv)"
	.text
	.type	rc2_get_asn1_type_and_iv, @function
rc2_get_asn1_type_and_iv:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L54
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -8(%rbp)
	cmpl	$16, -8(%rbp)
	jbe	.L55
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L55:
	movl	-8(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get_int_octetstring@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	je	.L56
	movl	$-1, %eax
	jmp	.L61
.L56:
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	call	rc2_magic_to_meth
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L58
	movl	$-1, %eax
	jmp	.L61
.L58:
	cmpl	$0, -4(%rbp)
	jle	.L59
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L59
	movl	$-1, %eax
	jmp	.L61
.L59:
	movl	-12(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L60
	movl	-12(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jg	.L54
.L60:
	movl	$-1, %eax
	jmp	.L61
.L54:
	movl	-4(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	rc2_get_asn1_type_and_iv, .-rc2_get_asn1_type_and_iv
	.type	rc2_set_asn1_type_and_iv, @function
rc2_set_asn1_type_and_iv:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L63
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rc2_meth_to_magic
	cltq
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ASN1_TYPE_set_int_octetstring@PLT
	movl	%eax, -4(%rbp)
.L63:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	rc2_set_asn1_type_and_iv, .-rc2_set_asn1_type_and_iv
	.type	rc2_ctrl, @function
rc2_ctrl:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpl	$3, -28(%rbp)
	je	.L66
	cmpl	$3, -28(%rbp)
	jg	.L67
	cmpl	$0, -28(%rbp)
	je	.L68
	cmpl	$2, -28(%rbp)
	je	.L69
	jmp	.L67
.L68:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leal	0(,%rbx,8), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L66:
	cmpl	$0, -32(%rbp)
	jle	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L71:
	movl	$0, %eax
	jmp	.L70
.L67:
	movl	$-1, %eax
.L70:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	rc2_ctrl, .-rc2_ctrl
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"rc2_magic_to_meth"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

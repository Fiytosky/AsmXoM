	.file	"e_des3.c"
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
	.type	des_ede_ecb_cipher, @function
des_ede_ecb_cipher:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movl	4(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movq	-48(%rbp), %rax
	subq	%rax, -80(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L8
.L9:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %r12d
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	%r12d, %r9d
	movq	%r13, %r8
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	DES_ecb3_encrypt@PLT
	movq	-48(%rbp), %rax
	addq	%rax, -40(%rbp)
.L8:
	movq	-40(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L9
	movl	$1, %eax
.L7:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	des_ede_ecb_cipher, .-des_ede_ecb_cipher
	.type	des_ede_ofb_cipher, @function
des_ede_ofb_cipher:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	jmp	.L11
.L12:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	-36(%rbp), %rdx
	pushq	%rdx
	pushq	%rbx
	movq	%r13, %r9
	movq	%r12, %r8
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ede3_ofb64_encrypt@PLT
	addq	$16, %rsp
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -80(%rbp)
	addq	$1073741824, -72(%rbp)
	addq	$1073741824, -64(%rbp)
.L11:
	cmpq	$1073741823, -80(%rbp)
	ja	.L12
	cmpq	$0, -80(%rbp)
	je	.L13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -40(%rbp)
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	pushq	%rbx
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	DES_ede3_ofb64_encrypt@PLT
	addq	$16, %rsp
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L13:
	movl	$1, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	des_ede_ofb_cipher, .-des_ede_ofb_cipher
	.type	des_ede_cbc_cipher, @function
des_ede_cbc_cipher:
.LFB484:
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
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	384(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	$1, %eax
	jmp	.L17
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	256(%rax), %r9
	movq	-8(%rbp), %rax
	leaq	128(%rax), %r8
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rcx
	pushq	%rdi
	movq	%rdx, %rcx
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ede3_cbc_encrypt@PLT
	addq	$16, %rsp
	subq	$1073741824, -48(%rbp)
	addq	$1073741824, -40(%rbp)
	addq	$1073741824, -32(%rbp)
.L18:
	cmpq	$1073741823, -48(%rbp)
	ja	.L19
	cmpq	$0, -48(%rbp)
	je	.L20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	256(%rax), %r9
	movq	-8(%rbp), %rax
	leaq	128(%rax), %r10
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DES_ede3_cbc_encrypt@PLT
	addq	$16, %rsp
.L20:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	des_ede_cbc_cipher, .-des_ede_cbc_cipher
	.type	des_ede_cfb64_cipher, @function
des_ede_cfb64_cipher:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	jmp	.L22
.L23:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r14
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	leaq	-36(%rbp), %rdx
	pushq	%rdx
	pushq	%r12
	movq	%r14, %r9
	movq	%r13, %r8
	movl	$1073741824, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb64_encrypt@PLT
	addq	$32, %rsp
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	subq	$1073741824, -80(%rbp)
	addq	$1073741824, -72(%rbp)
	addq	$1073741824, -64(%rbp)
.L22:
	cmpq	$1073741823, -80(%rbp)
	ja	.L23
	cmpq	$0, -80(%rbp)
	je	.L24
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r14
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	pushq	%r12
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	DES_ede3_cfb64_encrypt@PLT
	addq	$32, %rsp
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L24:
	movl	$1, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	des_ede_cfb64_cipher, .-des_ede_cfb64_cipher
	.type	des_ede3_cfb1_cipher, @function
des_ede3_cfb1_cipher:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movb	$0, -42(%rbp)
	movq	-56(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_test_flags@PLT
	testl	%eax, %eax
	jne	.L27
	salq	$3, -80(%rbp)
.L27:
	movq	$0, -40(%rbp)
	jmp	.L28
.L29:
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	sall	$7, %eax
	movb	%al, -41(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	leaq	40(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r14
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	leaq	-42(%rbp), %rsi
	leaq	-41(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	pushq	%r13
	pushq	%r12
	movq	%r14, %r9
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb_encrypt@PLT
	addq	$32, %rsp
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	andl	$7, %eax
	movl	$-129, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	%eax, %esi
	movzbl	-42(%rbp), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %ecx
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -40(%rbp)
.L28:
	movq	-40(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L29
	movl	$1, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	des_ede3_cfb1_cipher, .-des_ede3_cfb1_cipher
	.type	des_ede3_cfb8_cipher, @function
des_ede3_cfb8_cipher:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	jmp	.L32
.L33:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	pushq	%r13
	pushq	%r12
	movq	%r14, %r9
	movq	%rdx, %r8
	movl	$1073741824, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb_encrypt@PLT
	addq	$32, %rsp
	subq	$1073741824, -64(%rbp)
	addq	$1073741824, -56(%rbp)
	addq	$1073741824, -48(%rbp)
.L32:
	cmpq	$1073741823, -64(%rbp)
	ja	.L33
	cmpq	$0, -64(%rbp)
	je	.L34
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	40(%rax), %r13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	256(%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	128(%rax), %r14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	pushq	%r13
	pushq	%r12
	movq	%r14, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	DES_ede3_cfb_encrypt@PLT
	addq	$32, %rsp
.L34:
	movl	$1, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	des_ede3_cfb8_cipher, .-des_ede3_cfb8_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	des_ede_cbc, @object
	.size	des_ede_cbc, 248
des_ede_cbc:
	.long	43
	.long	8
	.long	16
	.long	8
	.quad	514
	.long	1
	.zero	4
	.quad	des_ede_init_key
	.quad	des_ede_cbc_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede_cbc
	.type	EVP_des_ede_cbc, @function
EVP_des_ede_cbc:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_des_ede_cbc, .-EVP_des_ede_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede_cfb64, @object
	.size	des_ede_cfb64, 248
des_ede_cfb64:
	.long	60
	.long	1
	.long	16
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_ede_init_key
	.quad	des_ede_cfb64_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede_cfb64
	.type	EVP_des_ede_cfb64, @function
EVP_des_ede_cfb64:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_des_ede_cfb64, .-EVP_des_ede_cfb64
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede_ofb, @object
	.size	des_ede_ofb, 248
des_ede_ofb:
	.long	62
	.long	1
	.long	16
	.long	8
	.quad	516
	.long	1
	.zero	4
	.quad	des_ede_init_key
	.quad	des_ede_ofb_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede_ofb
	.type	EVP_des_ede_ofb, @function
EVP_des_ede_ofb:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_des_ede_ofb, .-EVP_des_ede_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede_ecb, @object
	.size	des_ede_ecb, 248
des_ede_ecb:
	.long	32
	.long	8
	.long	16
	.long	0
	.quad	513
	.long	1
	.zero	4
	.quad	des_ede_init_key
	.quad	des_ede_ecb_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede_ecb
	.type	EVP_des_ede_ecb, @function
EVP_des_ede_ecb:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EVP_des_ede_ecb, .-EVP_des_ede_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede3_cbc, @object
	.size	des_ede3_cbc, 248
des_ede3_cbc:
	.long	44
	.long	8
	.long	24
	.long	8
	.quad	514
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede_cbc_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_cbc
	.type	EVP_des_ede3_cbc, @function
EVP_des_ede3_cbc:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	EVP_des_ede3_cbc, .-EVP_des_ede3_cbc
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede3_cfb64, @object
	.size	des_ede3_cfb64, 248
des_ede3_cfb64:
	.long	61
	.long	1
	.long	24
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede_cfb64_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_cfb64
	.type	EVP_des_ede3_cfb64, @function
EVP_des_ede3_cfb64:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_cfb64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EVP_des_ede3_cfb64, .-EVP_des_ede3_cfb64
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede3_ofb, @object
	.size	des_ede3_ofb, 248
des_ede3_ofb:
	.long	63
	.long	1
	.long	24
	.long	8
	.quad	516
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede_ofb_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_ofb
	.type	EVP_des_ede3_ofb, @function
EVP_des_ede3_ofb:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	EVP_des_ede3_ofb, .-EVP_des_ede3_ofb
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede3_ecb, @object
	.size	des_ede3_ecb, 248
des_ede3_ecb:
	.long	33
	.long	8
	.long	24
	.long	0
	.quad	513
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede_ecb_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_ecb
	.type	EVP_des_ede3_ecb, @function
EVP_des_ede3_ecb:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	EVP_des_ede3_ecb, .-EVP_des_ede3_ecb
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede3_cfb1, @object
	.size	des_ede3_cfb1, 248
des_ede3_cfb1:
	.long	658
	.long	1
	.long	24
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede3_cfb1_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_cfb1
	.type	EVP_des_ede3_cfb1, @function
EVP_des_ede3_cfb1:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	EVP_des_ede3_cfb1, .-EVP_des_ede3_cfb1
	.section	.data.rel.ro.local
	.align 32
	.type	des_ede3_cfb8, @object
	.size	des_ede3_cfb8, 248
des_ede3_cfb8:
	.long	659
	.long	1
	.long	24
	.long	8
	.quad	515
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede3_cfb8_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	des3_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_cfb8
	.type	EVP_des_ede3_cfb8, @function
EVP_des_ede3_cfb8:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	EVP_des_ede3_cfb8, .-EVP_des_ede3_cfb8
	.type	des_ede_init_key, @function
des_ede_init_key:
.LFB498:
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
	movq	$0, 384(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-16(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	256(%rdx), %rcx
	movl	$128, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	des_ede_init_key, .-des_ede_init_key
	.type	des_ede3_init_key, @function
des_ede3_init_key:
.LFB499:
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
	movq	$0, 384(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-16(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movq	-16(%rbp), %rax
	leaq	256(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	des_ede3_init_key, .-des_ede3_init_key
	.type	des3_ctrl, @function
des3_ctrl:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$6, -28(%rbp)
	jne	.L61
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L62
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	testl	%eax, %eax
	jg	.L63
.L62:
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	cmpl	$15, -12(%rbp)
	jle	.L65
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
.L65:
	cmpl	$23, -12(%rbp)
	jle	.L66
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
.L66:
	movl	$1, %eax
	jmp	.L64
.L61:
	movl	$-1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	des3_ctrl, .-des3_ctrl
	.globl	EVP_des_ede
	.type	EVP_des_ede, @function
EVP_des_ede:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	EVP_des_ede, .-EVP_des_ede
	.globl	EVP_des_ede3
	.type	EVP_des_ede3, @function
EVP_des_ede3:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des_ede3_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	EVP_des_ede3, .-EVP_des_ede3
	.section	.rodata
	.align 8
	.type	wrap_iv, @object
	.size	wrap_iv, 8
wrap_iv:
	.base64	"St2iLHnoIQU="
	.text
	.type	des_ede3_unwrap, @function
des_ede3_unwrap:
.LFB503:
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
	movq	%rcx, -80(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$23, -80(%rbp)
	ja	.L72
	movl	$-1, %eax
	jmp	.L78
.L72:
	cmpq	$0, -64(%rbp)
	jne	.L74
	movq	-80(%rbp), %rax
	subl	$16, %eax
	jmp	.L78
.L74:
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	wrap_iv(%rip), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rdx
	leaq	-12(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L75
	movq	-80(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	subq	$8, -72(%rbp)
.L75:
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	movq	-80(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	leaq	-20(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	leaq	-12(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rcx
	leaq	-20(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	BUF_reverse@PLT
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	leaq	-12(%rbp), %rdx
	leaq	-12(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha1@PLT
	testq	%rax, %rax
	je	.L76
	leaq	-12(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L76
	movq	-80(%rbp), %rax
	subl	$16, %eax
	movl	%eax, -4(%rbp)
.L76:
	leaq	-12(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-48(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-20(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpl	$-1, -4(%rbp)
	jne	.L77
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L77:
	movl	-4(%rbp), %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	des_ede3_unwrap, .-des_ede3_unwrap
	.type	des_ede3_wrap, @function
des_ede3_wrap:
.LFB504:
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
	movq	%rcx, -64(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L80
	movq	-64(%rbp), %rax
	addl	$16, %eax
	jmp	.L84
.L80:
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha1@PLT
	testq	%rax, %rax
	jne	.L82
	movl	$-1, %eax
	jmp	.L84
.L82:
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	leaq	-32(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L83
	movl	$-1, %eax
	jmp	.L84
.L83:
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	wrap_iv(%rip), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede_cbc_cipher
	movq	-64(%rbp), %rax
	addl	$16, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	des_ede3_wrap, .-des_ede3_wrap
	.section	.rodata
.LC0:
	.string	"../crypto/evp/e_des3.c"
	.text
	.type	des_ede3_wrap_cipher, @function
des_ede3_wrap_cipher:
.LFB505:
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
	cmpq	$1073741823, -32(%rbp)
	ja	.L86
	movq	-32(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L87
.L86:
	movl	$-1, %eax
	jmp	.L88
.L87:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_is_partially_overlapping@PLT
	testl	%eax, %eax
	je	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L88
.L89:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L90
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede3_wrap
	jmp	.L88
.L90:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	des_ede3_unwrap
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	des_ede3_wrap_cipher, .-des_ede3_wrap_cipher
	.section	.data.rel.ro.local
	.align 32
	.type	des3_wrap, @object
	.size	des3_wrap, 248
des3_wrap:
	.long	246
	.long	8
	.long	24
	.long	0
	.quad	1114130
	.long	1
	.zero	4
	.quad	des_ede3_init_key
	.quad	des_ede3_wrap_cipher
	.quad	0
	.long	392
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_des_ede3_wrap
	.type	EVP_des_ede3_wrap, @function
EVP_des_ede3_wrap:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	des3_wrap(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	EVP_des_ede3_wrap, .-EVP_des_ede3_wrap
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"des_ede3_wrap_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

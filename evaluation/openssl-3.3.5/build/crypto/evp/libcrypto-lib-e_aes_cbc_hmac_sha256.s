	.file	"e_aes_cbc_hmac_sha256.c"
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
	.type	constant_time_msb, @function
constant_time_msb:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_lt, @function
constant_time_lt:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	xorl	-8(%rbp), %eax
	orl	%edx, %eax
	xorl	-4(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	constant_time_lt, .-constant_time_lt
	.type	constant_time_ge, @function
constant_time_ge:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_lt
	notl	%eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	constant_time_ge, .-constant_time_ge
	.type	value_barrier, @function
value_barrier:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	value_barrier
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	constant_time_select, .-constant_time_select
	.type	aesni_cbc_hmac_sha256_init_key, @function
aesni_cbc_hmac_sha256_init_key:
.LFB525:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L16
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movl	%eax, -20(%rbp)
	jmp	.L17
.L16:
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	leal	0(,%rax,8), %ecx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movl	%eax, -20(%rbp)
.L17:
	movq	-32(%rbp), %rax
	addq	$244, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 356(%rax)
	movq	%rbx, 364(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 372(%rax)
	movq	%rbx, 380(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 388(%rax)
	movq	%rbx, 396(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 404(%rax)
	movq	%rbx, 412(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 420(%rax)
	movq	%rbx, 428(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 532(%rax)
	movq	%rbx, 540(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 548(%rax)
	movq	%rbx, 556(%rax)
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 564(%rax)
	movq	%rbx, 572(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 584(%rax)
	movl	-20(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	aesni_cbc_hmac_sha256_init_key, .-aesni_cbc_hmac_sha256_init_key
	.type	sha256_update, @function
sha256_update:
.LFB526:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L20
	movl	$64, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L21
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L21:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA256_Update@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
.L20:
	movq	-40(%rbp), %rax
	andl	$63, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L22
	movq	-40(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_block_data_order@PLT
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movq	-40(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	salq	$3, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movq	-40(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L22
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
.L22:
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA256_Update@PLT
.L24:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	sha256_update, .-sha256_update
	.type	tls1_1_multi_block_encrypt, @function
tls1_1_multi_block_encrypt:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2144, %rsp
	movq	%rdi, -2104(%rbp)
	movq	%rsi, -2112(%rbp)
	movq	%rdx, -2120(%rbp)
	movq	%rcx, -2128(%rbp)
	movl	%r8d, -2132(%rbp)
	movl	-2132(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	-60(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leaq	-2096(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L26
	movl	$0, %eax
	jmp	.L55
.L26:
	leaq	-1072(%rbp), %rax
	andl	$31, %eax
	movl	$32, %edx
	subq	%rax, %rdx
	leaq	-1072(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-2128(%rbp), %rax
	movl	%eax, %edx
	movl	-2132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-2128(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-2132(%rbp), %eax
	addl	$1, %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L28
	movl	-8(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L28
	addl	$1, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L28:
	movl	-4(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -76(%rbp)
	movq	-2120(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-2120(%rbp), %rax
	movq	%rax, -784(%rbp)
	movq	-2112(%rbp), %rax
	addq	$21, %rax
	movq	%rax, -776(%rbp)
	movq	-776(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	%rdx, -752(%rbp)
	addq	$16, -40(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L29
.L30:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	-784(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$16, %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$16, -40(%rbp)
	addl	$1, -12(%rbp)
.L29:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L30
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	movq	(%rax), %rax
	movq	%rax, -2096(%rbp)
	movq	-2096(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
#APP
# 212 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L31
.L34:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L32
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L33
.L32:
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
.L33:
	movq	-2104(%rbp), %rax
	movl	468(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-2104(%rbp), %rax
	movl	472(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-2104(%rbp), %rax
	movl	476(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-2104(%rbp), %rax
	movl	480(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-2104(%rbp), %rax
	movl	484(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-2104(%rbp), %rax
	movl	488(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$40, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-2104(%rbp), %rax
	movl	492(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$48, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-2104(%rbp), %rax
	movl	496(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$56, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
#APP
# 231 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2096, %rdx
	movq	%rax, (%rdx)
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2088, %rdx
	movb	%al, (%rdx)
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2087, %rdx
	movb	%al, (%rdx)
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2086, %rdx
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$2085, %rax
	movb	%dl, (%rax)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$2084, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rax
	leaq	-2096(%rbp), %rdx
	movl	-12(%rbp), %ecx
	salq	$7, %rcx
	addq	%rcx, %rdx
	leaq	13(%rdx), %rcx
	movl	$51, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rax
	leaq	51(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	%rdx, (%rax)
	movl	-44(%rbp), %eax
	subl	$51, %eax
	shrl	$6, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$328, %rax
	movl	%edx, (%rax)
	leaq	-2096(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$464, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$1, (%rax)
	addl	$1, -12(%rbp)
.L31:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L34
	movl	-2132(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	subl	$51, %eax
	shrl	$6, %eax
	movl	%eax, -16(%rbp)
	cmpl	$32, -16(%rbp)
	jbe	.L35
	movl	$0, -12(%rbp)
	jmp	.L36
.L37:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$464, %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$32, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movl	$128, (%rax)
	addl	$1, -12(%rbp)
.L36:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L37
.L40:
	movl	-2132(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	movq	-2104(%rbp), %rcx
	movl	-2132(%rbp), %edx
	leaq	-784(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	movl	$0, -12(%rbp)
	jmp	.L38
.L39:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$464, %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$328, %rax
	movl	(%rax), %eax
	leal	-32(%rax), %edx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$328, %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$32, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movl	$128, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rsi
	leaq	-784(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$16, %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addl	$1, -12(%rbp)
.L38:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L39
	addl	$2048, -20(%rbp)
	subl	$32, -16(%rbp)
	cmpl	$32, -16(%rbp)
	ja	.L40
.L35:
	movl	-2132(%rbp), %edx
	leaq	-336(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	leaq	-2096(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L41
.L46:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L42
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L43
.L42:
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
.L43:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$328, %rax
	movl	(%rax), %eax
	sall	$6, %eax
	movl	%eax, -180(%rbp)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rdx
	movl	-180(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-180(%rbp), %eax
	subl	$51, %eax
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %edx
	leaq	-2096(%rbp), %rax
	movl	-12(%rbp), %ecx
	salq	$7, %rcx
	addq	%rax, %rcx
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-180(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	addq	%rdx, %rax
	subq	$2096, %rax
	movb	$-128, (%rax)
	addl	$77, -48(%rbp)
	sall	$3, -48(%rbp)
	cmpl	$55, -180(%rbp)
	ja	.L44
	movl	-48(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
#APP
# 305 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2036, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$1, (%rax)
	jmp	.L45
.L44:
	movl	-48(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %eax
#APP
# 312 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1972, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$2, (%rax)
.L45:
	leaq	-2096(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$464, %rax
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L41:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L46
	movl	-2132(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	leaq	-2096(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L47
.L48:
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
#APP
# 327 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2096, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 329 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2092, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	360(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
#APP
# 331 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2088, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	364(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
#APP
# 333 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2084, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	368(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
#APP
# 335 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2080, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	372(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$40, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
#APP
# 337 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2076, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	376(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$40, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$48, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
#APP
# 339 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2072, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	380(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$48, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
#APP
# 341 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2068, %rdx
	movl	%eax, (%rdx)
	movq	-2104(%rbp), %rax
	movl	384(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$56, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$2064, %rax
	movb	$-128, (%rax)
	movl	$768, -176(%rbp)
	movl	-176(%rbp), %eax
#APP
# 344 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2036, %rdx
	movl	%eax, (%rdx)
	leaq	-2096(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$464, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$1, (%rax)
	addl	$1, -12(%rbp)
.L47:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L48
	movl	-2132(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	movl	$0, -12(%rbp)
	jmp	.L49
.L54:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L50
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L51
.L50:
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
.L51:
	movq	-2112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-52(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	(%rax), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$776, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movq	%rcx, (%rax)
	movl	-52(%rbp), %eax
	addl	$21, %eax
	movl	%eax, %eax
	addq	%rax, -2112(%rbp)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
#APP
# 382 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %edx
	movq	-2112(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
#APP
# 383 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$4, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
#APP
# 384 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$8, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
#APP
# 385 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
#APP
# 386 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$16, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$40, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
#APP
# 387 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$20, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$48, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
#APP
# 388 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$24, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
#APP
# 389 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movq	-2112(%rbp), %rdx
	addq	$28, %rdx
	movl	%eax, (%rdx)
	addq	$32, -2112(%rbp)
	addl	$32, -52(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	andl	$15, %eax
	movl	%eax, -140(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L52
.L53:
	movq	-2112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -2112(%rbp)
	movl	-140(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -56(%rbp)
.L52:
	movl	-56(%rbp), %eax
	cmpl	%eax, -140(%rbp)
	jnb	.L53
	movl	-140(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	-20(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movl	%ecx, (%rax)
	addl	$16, -52(%rbp)
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	addq	$8, %rax
	movzbl	(%rax), %edx
	movq	-104(%rbp), %rax
	movb	%dl, (%rax)
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	addq	$9, %rax
	movq	-104(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-2104(%rbp), %rax
	addq	$508, %rax
	addq	$10, %rax
	movq	-104(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-52(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	addq	$4, %rax
	movl	-52(%rbp), %edx
	movb	%dl, (%rax)
	movl	-52(%rbp), %eax
	addl	$5, %eax
	movl	%eax, %eax
	addq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	addq	%rax, -2120(%rbp)
	addl	$1, -12(%rbp)
.L49:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L54
	movq	-2104(%rbp), %rcx
	movl	-2132(%rbp), %edx
	leaq	-784(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	leaq	-2096(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-72(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	tls1_1_multi_block_encrypt, .-tls1_1_multi_block_encrypt
	.type	aesni_cbc_hmac_sha256_cipher, @function
aesni_cbc_hmac_sha256_cipher:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	572(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	$-1, 584(%rax)
	movq	-352(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L59
	cmpq	$-1, -24(%rbp)
	jne	.L60
	movq	-352(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L61
.L60:
	movq	-24(%rbp), %rax
	addq	$48, %rax
	andq	$-16, %rax
	cmpq	%rax, -352(%rbp)
	je	.L62
	movl	$0, %eax
	jmp	.L58
.L62:
	movq	-88(%rbp), %rax
	movl	592(%rax), %eax
	cmpl	$769, %eax
	jbe	.L61
	movq	$16, -32(%rbp)
.L61:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	jne	.L63
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	.L64
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$2048, %eax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	andl	$1073741824, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L64
.L63:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L64
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$6, %rax
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L64
	movq	-344(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha256_update
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-344(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-88(%rbp), %rax
	leaq	468(%rax), %r9
	movq	-328(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-88(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	aesni_cbc_sha256_enc@PLT
	addq	$16, %rsp
	salq	$6, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	504(%rax), %eax
	movq	-208(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 504(%rax)
	salq	$3, -208(%rbp)
	movq	-208(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	500(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 500(%rax)
	movq	-88(%rbp), %rax
	movl	500(%rax), %eax
	movq	-208(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L66
	movq	-88(%rbp), %rax
	movl	504(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 504(%rax)
	jmp	.L66
.L64:
	movq	$0, -40(%rbp)
.L66:
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-88(%rbp), %rdx
	leaq	468(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha256_update
	movq	-24(%rbp), %rax
	cmpq	-352(%rbp), %rax
	je	.L67
	movq	-344(%rbp), %rax
	cmpq	-336(%rbp), %rax
	je	.L68
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-336(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L68:
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rdx
	movq	-336(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	356(%rdx), %rcx
	movq	364(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	372(%rdx), %rcx
	movq	380(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	388(%rdx), %rcx
	movq	396(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	404(%rdx), %rcx
	movq	412(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	420(%rdx), %rcx
	movq	428(%rdx), %rbx
	movq	%rcx, 532(%rax)
	movq	%rbx, 540(%rax)
	movq	436(%rdx), %rcx
	movq	444(%rdx), %rbx
	movq	%rcx, 548(%rax)
	movq	%rbx, 556(%rax)
	movq	452(%rdx), %rcx
	movq	460(%rdx), %rbx
	movq	%rcx, 564(%rax)
	movq	%rbx, 572(%rax)
	movq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-88(%rbp), %rax
	addq	$468, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_update
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rdx
	movq	-336(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	addq	$32, -24(%rbp)
	movq	-352(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.L69
.L70:
	movq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L69:
	movq	-24(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jb	.L70
	movq	-328(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-88(%rbp), %rdx
	movq	-352(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-336(%rbp), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-336(%rbp), %rdi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L71
.L67:
	movq	-328(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-88(%rbp), %rdx
	movq	-352(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-336(%rbp), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-344(%rbp), %rdi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L71
.L59:
	leaq	-320(%rbp), %rax
	addq	$63, %rax
	andq	$-64, %rax
	movq	%rax, -96(%rbp)
	movq	-328(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-88(%rbp), %rcx
	movq	-352(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	cmpq	$-1, -24(%rbp)
	je	.L72
	movl	$1, -100(%rbp)
	movq	-88(%rbp), %rax
	addq	$508, %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	592(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	592(%rax,%rdx), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	cmpl	$769, %eax
	jle	.L73
	movq	$16, -32(%rbp)
.L73:
	movq	-32(%rbp), %rax
	addq	$33, %rax
	cmpq	%rax, -352(%rbp)
	jnb	.L74
	movl	$0, %eax
	jmp	.L58
.L74:
	movq	-32(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-32(%rbp), %rax
	subq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movq	-352(%rbp), %rax
	subl	$33, %eax
	movl	%eax, -120(%rbp)
	movl	$255, %eax
	subl	-120(%rbp), %eax
	shrl	$24, %eax
	orl	%eax, -120(%rbp)
	andl	$255, -120(%rbp)
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_ge
	movl	%eax, %eax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	addl	$33, %eax
	movl	%eax, %edx
	movq	-352(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-88(%rbp), %rax
	movb	%cl, 592(%rax,%rdx)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movb	%cl, 592(%rax,%rdx)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 532(%rax)
	movq	%rbx, 540(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 548(%rax)
	movq	%rbx, 556(%rax)
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 564(%rax)
	movq	%rbx, 572(%rax)
	movq	-88(%rbp), %rax
	leaq	592(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha256_update
	subq	$32, -352(%rbp)
	cmpq	$319, -352(%rbp)
	jbe	.L76
	movq	-352(%rbp), %rax
	subq	$320, %rax
	andq	$-64, %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	572(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-336(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movq	-64(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -352(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -56(%rbp)
.L76:
	movq	-88(%rbp), %rax
	movl	500(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
#APP
# 580 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-88(%rbp), %rax
	movl	572(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L77
.L80:
	movq	-336(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	andq	%rax, -200(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	shrq	$56, %rax
	orq	-128(%rbp), %rax
	notq	%rax
	andl	$128, %eax
	orq	%rax, -200(%rbp)
	movl	-76(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-200(%rbp), %rdx
	movl	%edx, %ecx
	movq	-112(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, (%rdx,%rax)
	cmpl	$64, -76(%rbp)
	jne	.L86
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	addq	$7, %rax
	sarq	$63, %rax
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	movl	60(%rax), %edx
	movq	-128(%rbp), %rax
	andl	-132(%rbp), %eax
	orl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$72, %rax
	sarq	$63, %rax
	andq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	468(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	472(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movl	476(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	480(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	484(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-96(%rbp), %rax
	movl	20(%rax), %edx
	movq	-88(%rbp), %rax
	movl	488(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movl	24(%rax), %edx
	movq	-88(%rbp), %rax
	movl	492(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-96(%rbp), %rax
	movl	28(%rax), %edx
	movq	-88(%rbp), %rax
	movl	496(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	$0, -76(%rbp)
	jmp	.L79
.L86:
	nop
.L79:
	addq	$1, -64(%rbp)
.L77:
	movq	-64(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jb	.L80
	movl	-76(%rbp), %eax
	movq	%rax, -72(%rbp)
	jmp	.L81
.L82:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -72(%rbp)
	addq	$1, -64(%rbp)
.L81:
	cmpq	$63, -72(%rbp)
	jbe	.L82
	cmpl	$56, -76(%rbp)
	jbe	.L83
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	addq	$8, %rax
	sarq	$63, %rax
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	movl	60(%rax), %edx
	movq	-128(%rbp), %rax
	andl	-132(%rbp), %eax
	orl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	andq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	468(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	472(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movl	476(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	480(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	484(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-96(%rbp), %rax
	movl	20(%rax), %edx
	movq	-88(%rbp), %rax
	movl	488(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movl	24(%rax), %edx
	movq	-88(%rbp), %rax
	movl	492(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-96(%rbp), %rax
	movl	28(%rax), %edx
	movq	-88(%rbp), %rax
	movl	496(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-112(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	addq	$64, -64(%rbp)
.L83:
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	%edx, 60(%rax)
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	468(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	472(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movl	476(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	480(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	484(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-96(%rbp), %rax
	movl	20(%rax), %edx
	movq	-88(%rbp), %rax
	movl	488(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movl	24(%rax), %edx
	movq	-88(%rbp), %rax
	movl	492(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-96(%rbp), %rax
	movl	28(%rax), %edx
	movq	-88(%rbp), %rax
	movl	496(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
#APP
# 657 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
#APP
# 658 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 659 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
#APP
# 660 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
#APP
# 661 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-96(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
#APP
# 662 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
#APP
# 663 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-96(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
#APP
# 664 "../crypto/evp/e_aes_cbc_hmac_sha256.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 28(%rax)
	addq	$32, -352(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	356(%rdx), %rcx
	movq	364(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	372(%rdx), %rcx
	movq	380(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	388(%rdx), %rcx
	movq	396(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	404(%rdx), %rcx
	movq	412(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	420(%rdx), %rcx
	movq	428(%rdx), %rbx
	movq	%rcx, 532(%rax)
	movq	%rbx, 540(%rax)
	movq	436(%rdx), %rcx
	movq	444(%rdx), %rbx
	movq	%rcx, 548(%rax)
	movq	%rbx, 556(%rax)
	movq	452(%rdx), %rcx
	movq	460(%rdx), %rbx
	movq	%rcx, 564(%rax)
	movq	%rbx, 572(%rax)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	468(%rdx), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -352(%rbp)
	movl	-120(%rbp), %eax
	movq	-352(%rbp), %rdx
	subq	%rax, %rdx
	subq	$33, %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-336(%rbp), %rax
	subq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L84
.L85:
	movq	-176(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -188(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$32, %eax
	sarl	$31, %eax
	movl	%eax, -192(%rbp)
	movl	-188(%rbp), %eax
	xorl	-116(%rbp), %eax
	movl	-192(%rbp), %edx
	notl	%edx
	andl	%edx, %eax
	orl	%eax, -76(%rbp)
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$1, %eax
	sarl	$31, %eax
	andl	%eax, -192(%rbp)
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	-188(%rbp), %eax
	andl	-192(%rbp), %eax
	orl	%eax, -76(%rbp)
	movl	-192(%rbp), %eax
	andl	$1, %eax
	addq	%rax, -72(%rbp)
	addq	$1, -64(%rbp)
.L84:
	movl	-120(%rbp), %eax
	addl	$32, %eax
	movl	%eax, %eax
	cmpq	%rax, -64(%rbp)
	jb	.L85
	movl	-76(%rbp), %eax
	negl	%eax
	sarl	$31, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	notl	%eax
	andl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	jmp	.L58
.L72:
	movq	-88(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-352(%rbp), %rdx
	movq	-336(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
.L71:
	movl	$1, %eax
.L58:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	aesni_cbc_hmac_sha256_cipher, .-aesni_cbc_hmac_sha256_cipher
	.type	aesni_cbc_hmac_sha256_ctrl, @function
aesni_cbc_hmac_sha256_ctrl:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movl	%edx, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -48(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$28, -172(%rbp)
	je	.L88
	cmpl	$28, -172(%rbp)
	jg	.L89
	cmpl	$26, -172(%rbp)
	je	.L90
	cmpl	$26, -172(%rbp)
	jg	.L89
	cmpl	$25, -172(%rbp)
	je	.L91
	cmpl	$25, -172(%rbp)
	jg	.L89
	cmpl	$22, -172(%rbp)
	je	.L92
	cmpl	$23, -172(%rbp)
	jne	.L89
	leaq	-160(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$0, -176(%rbp)
	jns	.L93
	movl	$-1, %eax
	jmp	.L101
.L93:
	cmpl	$64, -52(%rbp)
	jbe	.L95
	movq	-48(%rbp), %rax
	addq	$244, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	244(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movq	-48(%rbp), %rax
	leaq	244(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	jmp	.L96
.L95:
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L96:
	movl	$0, -20(%rbp)
	jmp	.L97
.L98:
	movl	-20(%rbp), %eax
	movzbl	-160(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -20(%rbp)
.L97:
	cmpl	$63, -20(%rbp)
	jbe	.L98
	movq	-48(%rbp), %rax
	addq	$244, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-48(%rbp), %rax
	leaq	244(%rax), %rcx
	leaq	-160(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movl	$0, -20(%rbp)
	jmp	.L99
.L100:
	movl	-20(%rbp), %eax
	movzbl	-160(%rbp,%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -20(%rbp)
.L99:
	cmpl	$63, -20(%rbp)
	jbe	.L100
	movq	-48(%rbp), %rax
	addq	$356, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-48(%rbp), %rax
	leaq	356(%rax), %rcx
	leaq	-160(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	leaq	-160(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	jmp	.L101
.L92:
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpl	$13, -176(%rbp)
	je	.L102
	movl	$-1, %eax
	jmp	.L101
.L102:
	movl	-176(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-176(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L103
	movl	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 584(%rax)
	movl	-176(%rbp), %eax
	cltq
	leaq	-4(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-176(%rbp), %eax
	cltq
	leaq	-3(%rax), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 592(%rax)
	movq	-48(%rbp), %rax
	movl	592(%rax), %eax
	cmpl	$769, %eax
	jbe	.L104
	cmpl	$15, -24(%rbp)
	ja	.L105
	movl	$0, %eax
	jmp	.L101
.L105:
	subl	$16, -24(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movl	-176(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-176(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
.L104:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 532(%rax)
	movq	%rbx, 540(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 548(%rax)
	movq	%rbx, 556(%rax)
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 564(%rax)
	movq	%rbx, 572(%rax)
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	468(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movl	-24(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	subl	-24(%rbp), %eax
	jmp	.L101
.L103:
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	592(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 584(%rax)
	movl	$32, %eax
	jmp	.L101
.L88:
	movl	-176(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	addl	$21, %eax
	jmp	.L101
.L91:
	movq	-184(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$1, -28(%rbp)
	cmpl	$0, -176(%rbp)
	jns	.L106
	movl	$-1, %eax
	jmp	.L101
.L106:
	cmpl	$31, -52(%rbp)
	ja	.L107
	movl	$-1, %eax
	jmp	.L101
.L107:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L108
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cmpl	$769, %eax
	jg	.L109
	movl	$-1, %eax
	jmp	.L101
.L109:
	cmpl	$0, -40(%rbp)
	je	.L110
	cmpl	$4095, -40(%rbp)
	ja	.L111
	movl	$0, %eax
	jmp	.L101
.L111:
	cmpl	$8191, -40(%rbp)
	jbe	.L112
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L112
	movl	$2, -28(%rbp)
	jmp	.L112
.L110:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L113
	cmpl	$2, -28(%rbp)
	ja	.L113
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, -40(%rbp)
	jmp	.L112
.L113:
	movl	$-1, %eax
	jmp	.L101
.L112:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 532(%rax)
	movq	%rbx, 540(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 548(%rax)
	movq	%rbx, 556(%rax)
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 564(%rax)
	movq	%rbx, 572(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	468(%rdx), %rcx
	movl	$13, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movl	-28(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -76(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %edx
	movl	-32(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jnb	.L114
	movl	-36(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L114
	addl	$1, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.L114:
	movl	-32(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -80(%rbp)
	movl	-28(%rbp), %eax
	movl	-80(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-36(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	movl	%eax, %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	addl	$21, %eax
	movl	%eax, -80(%rbp)
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	-80(%rbp), %eax
	jmp	.L101
.L108:
	movl	$-1, %eax
	jmp	.L101
.L90:
	movq	-184(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	tls1_1_multi_block_encrypt
	jmp	.L101
.L89:
	movl	$-1, %eax
.L101:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	aesni_cbc_hmac_sha256_ctrl, .-aesni_cbc_hmac_sha256_ctrl
	.section	.data.rel,"aw"
	.align 32
	.type	aesni_128_cbc_hmac_sha256_cipher, @object
	.size	aesni_128_cbc_hmac_sha256_cipher, 248
aesni_128_cbc_hmac_sha256_cipher:
	.long	948
	.long	16
	.long	16
	.long	16
	.quad	6291458
	.long	1
	.zero	4
	.quad	aesni_cbc_hmac_sha256_init_key
	.quad	aesni_cbc_hmac_sha256_cipher
	.quad	0
	.long	608
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	aesni_cbc_hmac_sha256_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aesni_256_cbc_hmac_sha256_cipher, @object
	.size	aesni_256_cbc_hmac_sha256_cipher, 248
aesni_256_cbc_hmac_sha256_cipher:
	.long	950
	.long	16
	.long	32
	.long	16
	.quad	6291458
	.long	1
	.zero	4
	.quad	aesni_cbc_hmac_sha256_init_key
	.quad	aesni_cbc_hmac_sha256_cipher
	.quad	0
	.long	608
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	aesni_cbc_hmac_sha256_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_cbc_hmac_sha256
	.type	EVP_aes_128_cbc_hmac_sha256, @function
EVP_aes_128_cbc_hmac_sha256:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L116
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	aesni_cbc_sha256_enc@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L116
	leaq	aesni_128_cbc_hmac_sha256_cipher(%rip), %rax
	jmp	.L118
.L116:
	movl	$0, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	EVP_aes_128_cbc_hmac_sha256, .-EVP_aes_128_cbc_hmac_sha256
	.globl	EVP_aes_256_cbc_hmac_sha256
	.type	EVP_aes_256_cbc_hmac_sha256, @function
EVP_aes_256_cbc_hmac_sha256:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L120
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	aesni_cbc_sha256_enc@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L120
	leaq	aesni_256_cbc_hmac_sha256_cipher(%rip), %rax
	jmp	.L122
.L120:
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	EVP_aes_256_cbc_hmac_sha256, .-EVP_aes_256_cbc_hmac_sha256
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

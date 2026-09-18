	.file	"e_aes_cbc_hmac_sha1.c"
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
.LFB457:
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
.LFE457:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_lt, @function
constant_time_lt:
.LFB461:
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
.LFE461:
	.size	constant_time_lt, .-constant_time_lt
	.type	constant_time_ge, @function
constant_time_ge:
.LFB469:
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
.LFE469:
	.size	constant_time_ge, .-constant_time_ge
	.type	value_barrier, @function
value_barrier:
.LFB484:
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
.LFE484:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB489:
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
.LFE489:
	.size	constant_time_select, .-constant_time_select
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/evp/e_aes_cbc_hmac_sha1.c"
	.text
	.type	aesni_cbc_hmac_sha1_init_key, @function
aesni_cbc_hmac_sha1_init_key:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L16
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpl	$0, -76(%rbp)
	je	.L18
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movl	%eax, -20(%rbp)
	jmp	.L19
.L18:
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movl	%eax, -20(%rbp)
.L19:
	movq	-32(%rbp), %rax
	addq	$244, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 340(%rax)
	movq	%rbx, 348(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 356(%rax)
	movq	%rbx, 364(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 372(%rax)
	movq	%rbx, 380(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 388(%rax)
	movq	%rbx, 396(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 404(%rax)
	movq	%rbx, 412(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 420(%rax)
	movq	%rbx, 428(%rax)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 536(%rax)
	movl	-20(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	aesni_cbc_hmac_sha1_init_key, .-aesni_cbc_hmac_sha1_init_key
	.type	sha1_update, @function
sha1_update:
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
	movl	92(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L21
	movl	$64, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L22
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L22:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
.L21:
	movq	-40(%rbp), %rax
	andl	$63, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L23
	movq	-40(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_block_data_order@PLT
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movq	-40(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	salq	$3, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movq	-40(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L23
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
.L23:
	cmpq	$0, -16(%rbp)
	je	.L25
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
.L25:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	sha1_update, .-sha1_update
	.type	tls1_1_multi_block_encrypt, @function
tls1_1_multi_block_encrypt:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2032, %rsp
	movq	%rdi, -1992(%rbp)
	movq	%rsi, -2000(%rbp)
	movq	%rdx, -2008(%rbp)
	movq	%rcx, -2016(%rbp)
	movl	%r8d, -2020(%rbp)
	movl	-2020(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	-60(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leaq	-1984(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L27
	movl	$0, %eax
	jmp	.L56
.L27:
	leaq	-960(%rbp), %rax
	andl	$31, %eax
	movl	$32, %edx
	subq	%rax, %rdx
	leaq	-960(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-2016(%rbp), %rax
	movl	%eax, %edx
	movl	-2020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-2016(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-2020(%rbp), %eax
	addl	$1, %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L29
	movl	-8(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L29
	addl	$1, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L29:
	movl	-4(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -76(%rbp)
	movq	-2008(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-2008(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	-2000(%rbp), %rax
	addq	$21, %rax
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	%rdx, -736(%rbp)
	addq	$16, -40(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L30
.L31:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	-768(%rbp), %rcx
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
.L30:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L31
	movq	-1992(%rbp), %rax
	addq	$464, %rax
	movq	(%rax), %rax
	movq	%rax, -1984(%rbp)
	movq	-1984(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
#APP
# 217 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L32
.L35:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L33
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L34
.L33:
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
.L34:
	movq	-1992(%rbp), %rax
	movl	436(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-1992(%rbp), %rax
	movl	440(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-1992(%rbp), %rax
	movl	444(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-1992(%rbp), %rax
	movl	448(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-1992(%rbp), %rax
	movl	452(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
#APP
# 233 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1984, %rdx
	movq	%rax, (%rdx)
	movq	-1992(%rbp), %rax
	addq	$464, %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1976, %rdx
	movb	%al, (%rdx)
	movq	-1992(%rbp), %rax
	addq	$464, %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1975, %rdx
	movb	%al, (%rdx)
	movq	-1992(%rbp), %rax
	addq	$464, %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1974, %rdx
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$1973, %rax
	movb	%dl, (%rax)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$1972, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rax
	leaq	-1984(%rbp), %rdx
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
	subq	$320, %rax
	movq	(%rax), %rax
	leaq	51(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	%rdx, (%rax)
	movl	-44(%rbp), %eax
	subl	$51, %eax
	shrl	$6, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$312, %rax
	movl	%edx, (%rax)
	leaq	-1984(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$448, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$440, %rax
	movl	$1, (%rax)
	addl	$1, -12(%rbp)
.L32:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L35
	movl	-2020(%rbp), %edx
	leaq	-448(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	subl	$51, %eax
	shrl	$6, %eax
	movl	%eax, -16(%rbp)
	cmpl	$32, -16(%rbp)
	jbe	.L36
	movl	$0, -12(%rbp)
	jmp	.L37
.L38:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$448, %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$440, %rax
	movl	$32, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$752, %rax
	movl	$128, (%rax)
	addl	$1, -12(%rbp)
.L37:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L38
.L41:
	movl	-2020(%rbp), %edx
	leaq	-448(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	movq	-1992(%rbp), %rcx
	movl	-2020(%rbp), %edx
	leaq	-768(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	movl	$0, -12(%rbp)
	jmp	.L39
.L40:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$448, %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$312, %rax
	movl	(%rax), %eax
	leal	-32(%rax), %edx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$312, %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$440, %rax
	movl	$32, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$752, %rax
	movl	$128, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rsi
	leaq	-768(%rbp), %rcx
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
.L39:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L40
	addl	$2048, -20(%rbp)
	subl	$32, -16(%rbp)
	cmpl	$32, -16(%rbp)
	ja	.L41
.L36:
	movl	-2020(%rbp), %edx
	leaq	-320(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	leaq	-1984(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L42
.L47:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L43
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L44
.L43:
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
.L44:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$312, %rax
	movl	(%rax), %eax
	sall	$6, %eax
	movl	%eax, -156(%rbp)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$320, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-156(%rbp), %eax
	subl	$51, %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %edx
	leaq	-1984(%rbp), %rax
	movl	-12(%rbp), %ecx
	salq	$7, %rcx
	addq	%rax, %rcx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-156(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	addq	%rdx, %rax
	subq	$1984, %rax
	movb	$-128, (%rax)
	addl	$77, -48(%rbp)
	sall	$3, -48(%rbp)
	cmpl	$55, -156(%rbp)
	ja	.L45
	movl	-48(%rbp), %eax
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
#APP
# 307 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1924, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$440, %rax
	movl	$1, (%rax)
	jmp	.L46
.L45:
	movl	-48(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
#APP
# 314 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1860, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$440, %rax
	movl	$2, (%rax)
.L46:
	leaq	-1984(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$448, %rax
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L42:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L47
	movl	-2020(%rbp), %edx
	leaq	-448(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	leaq	-1984(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L48
.L49:
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
#APP
# 329 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1984, %rdx
	movl	%eax, (%rdx)
	movq	-1992(%rbp), %rax
	movl	340(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
#APP
# 331 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1980, %rdx
	movl	%eax, (%rdx)
	movq	-1992(%rbp), %rax
	movl	344(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
#APP
# 333 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1976, %rdx
	movl	%eax, (%rdx)
	movq	-1992(%rbp), %rax
	movl	348(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
#APP
# 335 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1972, %rdx
	movl	%eax, (%rdx)
	movq	-1992(%rbp), %rax
	movl	352(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 337 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1968, %rdx
	movl	%eax, (%rdx)
	movq	-1992(%rbp), %rax
	movl	356(%rax), %edx
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$1964, %rax
	movb	$-128, (%rax)
	movl	$672, -152(%rbp)
	movl	-152(%rbp), %eax
#APP
# 340 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1924, %rdx
	movl	%eax, (%rdx)
	leaq	-1984(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$448, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$440, %rax
	movl	$1, (%rax)
	addl	$1, -12(%rbp)
.L48:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L49
	movl	-2020(%rbp), %edx
	leaq	-448(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	movl	$0, -12(%rbp)
	jmp	.L50
.L55:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L51
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L52
.L51:
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
.L52:
	movq	-2000(%rbp), %rax
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
	subq	$768, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$760, %rax
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
	subq	$760, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$768, %rax
	movq	%rcx, (%rax)
	movl	-52(%rbp), %eax
	addl	$21, %eax
	movl	%eax, %eax
	addq	%rax, -2000(%rbp)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
#APP
# 372 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %edx
	movq	-2000(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
#APP
# 373 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movq	-2000(%rbp), %rdx
	addq	$4, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
#APP
# 374 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movq	-2000(%rbp), %rdx
	addq	$8, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
#APP
# 375 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	movq	-2000(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
#APP
# 376 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	movq	-2000(%rbp), %rdx
	addq	$16, %rdx
	movl	%eax, (%rdx)
	addq	$20, -2000(%rbp)
	addl	$20, -52(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	andl	$15, %eax
	movl	%eax, -128(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L53
.L54:
	movq	-2000(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -2000(%rbp)
	movl	-128(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -56(%rbp)
.L53:
	movl	-56(%rbp), %eax
	cmpl	%eax, -128(%rbp)
	jnb	.L54
	movl	-128(%rbp), %edx
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
	subq	$752, %rax
	movl	%ecx, (%rax)
	addl	$16, -52(%rbp)
	movq	-1992(%rbp), %rax
	addq	$464, %rax
	addq	$8, %rax
	movzbl	(%rax), %edx
	movq	-104(%rbp), %rax
	movb	%dl, (%rax)
	movq	-1992(%rbp), %rax
	addq	$464, %rax
	addq	$9, %rax
	movq	-104(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-1992(%rbp), %rax
	addq	$464, %rax
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
	addq	%rax, -2008(%rbp)
	addl	$1, -12(%rbp)
.L50:
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L55
	movq	-1992(%rbp), %rcx
	movl	-2020(%rbp), %edx
	leaq	-768(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	leaq	-1984(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-72(%rbp), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	tls1_1_multi_block_encrypt, .-tls1_1_multi_block_encrypt
	.type	aesni_cbc_hmac_sha1_cipher, @function
aesni_cbc_hmac_sha1_cipher:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	536(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	528(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	$-1, 536(%rax)
	movq	-288(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L60
	cmpq	$-1, -24(%rbp)
	jne	.L61
	movq	-288(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L62
.L61:
	movq	-24(%rbp), %rax
	addq	$36, %rax
	andq	$-16, %rax
	cmpq	%rax, -288(%rbp)
	je	.L63
	movl	$0, %eax
	jmp	.L59
.L63:
	movq	-88(%rbp), %rax
	movl	544(%rax), %eax
	cmpl	$769, %eax
	jbe	.L62
	movq	$16, -32(%rbp)
.L62:
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
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L64
	movq	-280(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha1_update
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-280(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-88(%rbp), %rax
	leaq	436(%rax), %r9
	movq	-264(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-88(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	aesni_cbc_sha1_enc@PLT
	addq	$16, %rsp
	salq	$6, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-200(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	460(%rax), %eax
	movq	-200(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 460(%rax)
	salq	$3, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	456(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-88(%rbp), %rax
	movl	456(%rax), %eax
	movq	-200(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L66
	movq	-88(%rbp), %rax
	movl	460(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 460(%rax)
	jmp	.L66
.L64:
	movq	$0, -40(%rbp)
.L66:
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-88(%rbp), %rdx
	leaq	436(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha1_update
	movq	-24(%rbp), %rax
	cmpq	-288(%rbp), %rax
	je	.L67
	movq	-280(%rbp), %rax
	cmpq	-272(%rbp), %rax
	je	.L68
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-272(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L68:
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rdx
	movq	-272(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	356(%rdx), %rcx
	movq	364(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	372(%rdx), %rcx
	movq	380(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	388(%rdx), %rcx
	movq	396(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	404(%rdx), %rcx
	movq	412(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	420(%rdx), %rcx
	movq	428(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	-272(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-88(%rbp), %rax
	addq	$436, %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_update
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rdx
	movq	-272(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	addq	$20, -24(%rbp)
	movq	-288(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.L69
.L70:
	movq	-272(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L69:
	movq	-24(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jb	.L70
	movq	-264(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-88(%rbp), %rdx
	movq	-288(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-272(%rbp), %rdi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L71
.L67:
	movq	-264(%rbp), %rax
	leaq	40(%rax), %r8
	movq	-88(%rbp), %rdx
	movq	-288(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-280(%rbp), %rdi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L71
.L60:
	leaq	-256(%rbp), %rax
	addq	$31, %rax
	andq	$-32, %rax
	movq	%rax, -96(%rbp)
	cmpq	$-1, -24(%rbp)
	je	.L72
	movl	$1, -100(%rbp)
	movq	-88(%rbp), %rax
	addq	$464, %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	544(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	544(%rax,%rdx), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	cmpl	$769, %eax
	jle	.L73
	cmpq	$36, -288(%rbp)
	ja	.L74
	movl	$0, %eax
	jmp	.L59
.L74:
	movq	-264(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-280(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$16, -280(%rbp)
	addq	$16, -272(%rbp)
	subq	$16, -288(%rbp)
	jmp	.L76
.L73:
	cmpq	$20, -288(%rbp)
	ja	.L76
	movl	$0, %eax
	jmp	.L59
.L76:
	movq	-264(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-88(%rbp), %rcx
	movq	-288(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	movq	-288(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movq	-288(%rbp), %rax
	subl	$21, %eax
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
	addl	$21, %eax
	movl	%eax, %edx
	movq	-288(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-88(%rbp), %rax
	movb	%cl, 544(%rax,%rdx)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movb	%cl, 544(%rax,%rdx)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	-88(%rbp), %rax
	leaq	544(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha1_update
	subq	$20, -288(%rbp)
	cmpq	$319, -288(%rbp)
	jbe	.L77
	movq	-288(%rbp), %rax
	subq	$320, %rax
	andq	$-64, %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	528(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movq	-64(%rbp), %rax
	addq	%rax, -272(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -288(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -56(%rbp)
.L77:
	movq	-88(%rbp), %rax
	movl	456(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
#APP
# 599 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
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
	movq	-88(%rbp), %rax
	movl	528(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L78
.L81:
	movq	-272(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -192(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	andq	%rax, -192(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	shrq	$56, %rax
	orq	-128(%rbp), %rax
	notq	%rax
	andl	$128, %eax
	orq	%rax, -192(%rbp)
	movl	-76(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-192(%rbp), %rdx
	movl	%edx, %ecx
	movq	-112(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, (%rdx,%rax)
	cmpl	$64, -76(%rbp)
	jne	.L87
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
	leaq	436(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$72, %rax
	sarq	$63, %rax
	andq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	436(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	448(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	452(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$0, -76(%rbp)
	jmp	.L80
.L87:
	nop
.L80:
	addq	$1, -64(%rbp)
.L78:
	movq	-64(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jb	.L81
	movl	-76(%rbp), %eax
	movq	%rax, -72(%rbp)
	jmp	.L82
.L83:
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -72(%rbp)
	addq	$1, -64(%rbp)
.L82:
	cmpq	$63, -72(%rbp)
	jbe	.L83
	cmpl	$56, -76(%rbp)
	jbe	.L84
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
	leaq	436(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	andq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	436(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	448(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	452(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-112(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	addq	$64, -64(%rbp)
.L84:
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	%edx, 60(%rax)
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	436(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	448(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	452(%rax), %eax
	movq	-128(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
#APP
# 664 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
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
# 665 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
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
# 666 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
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
# 667 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
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
# 668 "../crypto/evp/e_aes_cbc_hmac_sha1.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	addq	$20, -288(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	340(%rdx), %rcx
	movq	348(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	356(%rdx), %rcx
	movq	364(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	372(%rdx), %rcx
	movq	380(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	388(%rdx), %rcx
	movq	396(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	404(%rdx), %rcx
	movq	412(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	420(%rdx), %rcx
	movq	428(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	436(%rdx), %rcx
	movl	$20, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -272(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -288(%rbp)
	movl	-120(%rbp), %eax
	movq	-288(%rbp), %rdx
	subq	%rax, %rdx
	subq	$21, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-272(%rbp), %rax
	subq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L85
.L86:
	movq	-168(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -180(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-176(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$20, %eax
	sarl	$31, %eax
	movl	%eax, -184(%rbp)
	movl	-180(%rbp), %eax
	xorl	-116(%rbp), %eax
	movl	-184(%rbp), %edx
	notl	%edx
	andl	%edx, %eax
	orl	%eax, -76(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$1, %eax
	sarl	$31, %eax
	andl	%eax, -184(%rbp)
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	-180(%rbp), %eax
	andl	-184(%rbp), %eax
	orl	%eax, -76(%rbp)
	movl	-184(%rbp), %eax
	andl	$1, %eax
	addq	%rax, -72(%rbp)
	addq	$1, -64(%rbp)
.L85:
	movl	-120(%rbp), %eax
	addl	$20, %eax
	movl	%eax, %eax
	cmpq	%rax, -64(%rbp)
	jb	.L86
	movl	-76(%rbp), %eax
	negl	%eax
	sarl	$31, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	notl	%eax
	andl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	jmp	.L59
.L72:
	movq	-264(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-88(%rbp), %rcx
	movq	-288(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	movq	-88(%rbp), %rax
	leaq	436(%rax), %rcx
	movq	-288(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
.L71:
	movl	$1, %eax
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	aesni_cbc_hmac_sha1_cipher, .-aesni_cbc_hmac_sha1_cipher
	.type	aesni_cbc_hmac_sha1_ctrl, @function
aesni_cbc_hmac_sha1_ctrl:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movl	%edx, -160(%rbp)
	movq	%rcx, -168(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -48(%rbp)
	cmpl	$28, -156(%rbp)
	je	.L89
	cmpl	$28, -156(%rbp)
	jg	.L90
	cmpl	$26, -156(%rbp)
	je	.L91
	cmpl	$26, -156(%rbp)
	jg	.L90
	cmpl	$25, -156(%rbp)
	je	.L92
	cmpl	$25, -156(%rbp)
	jg	.L90
	cmpl	$22, -156(%rbp)
	je	.L93
	cmpl	$23, -156(%rbp)
	jne	.L90
	leaq	-144(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$64, -160(%rbp)
	jle	.L94
	movq	-48(%rbp), %rax
	addq	$244, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	244(%rax), %rcx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movq	-48(%rbp), %rax
	leaq	244(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	jmp	.L95
.L94:
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L95:
	movl	$0, -20(%rbp)
	jmp	.L96
.L97:
	movl	-20(%rbp), %eax
	movzbl	-144(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movb	%dl, -144(%rbp,%rax)
	addl	$1, -20(%rbp)
.L96:
	cmpl	$63, -20(%rbp)
	jbe	.L97
	movq	-48(%rbp), %rax
	addq	$244, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-48(%rbp), %rax
	leaq	244(%rax), %rcx
	leaq	-144(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movl	$0, -20(%rbp)
	jmp	.L98
.L99:
	movl	-20(%rbp), %eax
	movzbl	-144(%rbp,%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movb	%dl, -144(%rbp,%rax)
	addl	$1, -20(%rbp)
.L98:
	cmpl	$63, -20(%rbp)
	jbe	.L99
	movq	-48(%rbp), %rax
	addq	$340, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-48(%rbp), %rax
	leaq	340(%rax), %rcx
	leaq	-144(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	leaq	-144(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	jmp	.L100
.L93:
	movq	-168(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$13, -160(%rbp)
	je	.L101
	movl	$-1, %eax
	jmp	.L100
.L101:
	movl	-160(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L102
	movl	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 536(%rax)
	movl	-160(%rbp), %eax
	cltq
	leaq	-4(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	-3(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 544(%rax)
	movq	-48(%rbp), %rax
	movl	544(%rax), %eax
	cmpl	$769, %eax
	jbe	.L103
	cmpl	$15, -24(%rbp)
	ja	.L104
	movl	$0, %eax
	jmp	.L100
.L104:
	subl	$16, -24(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movl	-160(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-160(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
.L103:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	436(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movl	-24(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	subl	-24(%rbp), %eax
	jmp	.L100
.L102:
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	544(%rax), %rcx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 536(%rax)
	movl	$20, %eax
	jmp	.L100
.L89:
	movl	-160(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	addl	$21, %eax
	jmp	.L100
.L92:
	movq	-168(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -28(%rbp)
	cmpl	$31, -160(%rbp)
	jg	.L105
	movl	$-1, %eax
	jmp	.L100
.L105:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L106
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cmpl	$769, %eax
	jg	.L107
	movl	$-1, %eax
	jmp	.L100
.L107:
	cmpl	$0, -40(%rbp)
	je	.L108
	cmpl	$4095, -40(%rbp)
	ja	.L109
	movl	$0, %eax
	jmp	.L100
.L109:
	cmpl	$8191, -40(%rbp)
	jbe	.L110
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L110
	movl	$2, -28(%rbp)
	jmp	.L110
.L108:
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L111
	cmpl	$2, -28(%rbp)
	ja	.L111
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, -40(%rbp)
	jmp	.L110
.L111:
	movl	$-1, %eax
	jmp	.L100
.L110:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	244(%rdx), %rcx
	movq	252(%rdx), %rbx
	movq	%rcx, 436(%rax)
	movq	%rbx, 444(%rax)
	movq	260(%rdx), %rcx
	movq	268(%rdx), %rbx
	movq	%rcx, 452(%rax)
	movq	%rbx, 460(%rax)
	movq	276(%rdx), %rcx
	movq	284(%rdx), %rbx
	movq	%rcx, 468(%rax)
	movq	%rbx, 476(%rax)
	movq	292(%rdx), %rcx
	movq	300(%rdx), %rbx
	movq	%rcx, 484(%rax)
	movq	%rbx, 492(%rax)
	movq	308(%rdx), %rcx
	movq	316(%rdx), %rbx
	movq	%rcx, 500(%rax)
	movq	%rbx, 508(%rax)
	movq	324(%rdx), %rcx
	movq	332(%rdx), %rbx
	movq	%rcx, 516(%rax)
	movq	%rbx, 524(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	436(%rdx), %rcx
	movl	$13, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movl	-28(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -68(%rbp)
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
	jnb	.L112
	movl	-36(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L112
	addl	$1, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.L112:
	movl	-32(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -72(%rbp)
	movl	-28(%rbp), %eax
	movl	-72(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-36(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	movl	%eax, %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	addl	$21, %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	-72(%rbp), %eax
	jmp	.L100
.L106:
	movl	$-1, %eax
	jmp	.L100
.L91:
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	tls1_1_multi_block_encrypt
	jmp	.L100
.L90:
	movl	$-1, %eax
.L100:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	aesni_cbc_hmac_sha1_ctrl, .-aesni_cbc_hmac_sha1_ctrl
	.section	.data.rel,"aw"
	.align 32
	.type	aesni_128_cbc_hmac_sha1_cipher, @object
	.size	aesni_128_cbc_hmac_sha1_cipher, 248
aesni_128_cbc_hmac_sha1_cipher:
	.long	916
	.long	16
	.long	16
	.long	16
	.quad	6291458
	.long	1
	.zero	4
	.quad	aesni_cbc_hmac_sha1_init_key
	.quad	aesni_cbc_hmac_sha1_cipher
	.quad	0
	.long	560
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	aesni_cbc_hmac_sha1_ctrl
	.quad	0
	.zero	152
	.align 32
	.type	aesni_256_cbc_hmac_sha1_cipher, @object
	.size	aesni_256_cbc_hmac_sha1_cipher, 248
aesni_256_cbc_hmac_sha1_cipher:
	.long	918
	.long	16
	.long	32
	.long	16
	.quad	6291458
	.long	1
	.zero	4
	.quad	aesni_cbc_hmac_sha1_init_key
	.quad	aesni_cbc_hmac_sha1_cipher
	.quad	0
	.long	560
	.zero	4
	.quad	EVP_CIPHER_set_asn1_iv
	.quad	EVP_CIPHER_get_asn1_iv
	.quad	aesni_cbc_hmac_sha1_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_aes_128_cbc_hmac_sha1
	.type	EVP_aes_128_cbc_hmac_sha1, @function
EVP_aes_128_cbc_hmac_sha1:
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
	je	.L114
	leaq	aesni_128_cbc_hmac_sha1_cipher(%rip), %rax
	jmp	.L116
.L114:
	movl	$0, %eax
.L116:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	EVP_aes_128_cbc_hmac_sha1, .-EVP_aes_128_cbc_hmac_sha1
	.globl	EVP_aes_256_cbc_hmac_sha1
	.type	EVP_aes_256_cbc_hmac_sha1, @function
EVP_aes_256_cbc_hmac_sha1:
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
	je	.L118
	leaq	aesni_256_cbc_hmac_sha1_cipher(%rip), %rax
	jmp	.L120
.L118:
	movl	$0, %eax
.L120:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	EVP_aes_256_cbc_hmac_sha1, .-EVP_aes_256_cbc_hmac_sha1
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"aesni_cbc_hmac_sha1_init_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

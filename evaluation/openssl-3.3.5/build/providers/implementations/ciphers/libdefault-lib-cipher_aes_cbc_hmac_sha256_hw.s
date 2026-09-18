	.file	"cipher_aes_cbc_hmac_sha256_hw.c"
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
	.globl	ossl_cipher_capable_aes_cbc_hmac_sha256
	.type	ossl_cipher_capable_aes_cbc_hmac_sha256, @function
ossl_cipher_capable_aes_cbc_hmac_sha256:
.LFB500:
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
	je	.L16
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
	je	.L16
	movl	$1, %eax
	jmp	.L18
.L16:
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_cipher_capable_aes_cbc_hmac_sha256, .-ossl_cipher_capable_aes_cbc_hmac_sha256
	.type	aesni_cbc_hmac_sha256_init_key, @function
aesni_cbc_hmac_sha256_init_key:
.LFB501:
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
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L20
	movq	-32(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movl	%eax, -20(%rbp)
	jmp	.L21
.L20:
	movq	-32(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movl	%eax, -20(%rbp)
.L21:
	movq	-40(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 616(%rax)
	movq	%rbx, 624(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 632(%rax)
	movq	%rbx, 640(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 648(%rax)
	movq	%rbx, 656(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 664(%rax)
	movq	%rbx, 672(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 680(%rax)
	movq	%rbx, 688(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 792(%rax)
	movq	%rbx, 800(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 808(%rax)
	movq	%rbx, 816(%rax)
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 824(%rax)
	movq	%rbx, 832(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 440(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 144(%rax)
	movq	-56(%rbp), %rax
	movq	$48, 152(%rax)
	movl	-20(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	aesni_cbc_hmac_sha256_init_key, .-aesni_cbc_hmac_sha256_init_key
	.type	sha256_update, @function
sha256_update:
.LFB502:
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
	je	.L24
	movl	$64, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L25
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L25:
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
.L24:
	movq	-40(%rbp), %rax
	andl	$63, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L26
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
	jnb	.L26
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
.L26:
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA256_Update@PLT
.L28:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	sha256_update, .-sha256_update
	.type	tls1_multi_block_encrypt, @function
tls1_multi_block_encrypt:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2160, %rsp
	movq	%rdi, -2120(%rbp)
	movq	%rsi, -2128(%rbp)
	movq	%rdx, -2136(%rbp)
	movq	%rcx, -2144(%rbp)
	movl	%r8d, -2148(%rbp)
	movq	-2120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-2120(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-2148(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	-76(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leaq	-2112(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	184(%rax), %rax
	movq	-40(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L30
	movl	$0, %eax
	jmp	.L59
.L30:
	leaq	-1088(%rbp), %rax
	andl	$31, %eax
	movl	$32, %edx
	subq	%rax, %rdx
	leaq	-1088(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-2144(%rbp), %rax
	movl	%eax, %edx
	movl	-2148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-2144(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-2148(%rbp), %eax
	addl	$1, %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L32
	movl	-8(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L32
	addl	$1, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L32:
	movl	-4(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -92(%rbp)
	movq	-2136(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-2136(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	-2128(%rbp), %rax
	addq	$21, %rax
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	%rdx, -768(%rbp)
	addq	$16, -40(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L33
.L34:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$800, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movq	(%rax), %rdx
	movl	-92(%rbp), %eax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	-800(%rbp), %rcx
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
.L33:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L34
	movq	-72(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rax
	movq	%rax, -2112(%rbp)
	movq	-2112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
#APP
# 183 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L35
.L38:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L36
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L37
.L36:
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
.L37:
	movq	-72(%rbp), %rax
	movl	728(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-72(%rbp), %rax
	movl	732(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	736(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	740(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	744(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	748(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$40, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	752(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$48, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	756(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$56, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %edx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
#APP
# 203 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2112, %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$768, %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2104, %rdx
	movb	%al, (%rdx)
	movq	-72(%rbp), %rax
	addq	$768, %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2103, %rdx
	movb	%al, (%rdx)
	movq	-72(%rbp), %rax
	addq	$768, %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2102, %rdx
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$2101, %rax
	movb	%dl, (%rax)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$2100, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rax
	leaq	-2112(%rbp), %rdx
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
	subq	$352, %rax
	movq	(%rax), %rax
	leaq	51(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	%rdx, (%rax)
	movl	-44(%rbp), %eax
	subl	$51, %eax
	shrl	$6, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$344, %rax
	movl	%edx, (%rax)
	leaq	-2112(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$480, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$472, %rax
	movl	$1, (%rax)
	addl	$1, -12(%rbp)
.L35:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L38
	movl	-2148(%rbp), %edx
	leaq	-480(%rbp), %rcx
	movq	-88(%rbp), %rax
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
	jbe	.L39
	movl	$0, -12(%rbp)
	jmp	.L40
.L41:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$480, %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$472, %rax
	movl	$32, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movl	$128, (%rax)
	addl	$1, -12(%rbp)
.L40:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L41
.L44:
	movl	-2148(%rbp), %edx
	leaq	-480(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	movq	-64(%rbp), %rax
	leaq	192(%rax), %rcx
	movl	-2148(%rbp), %edx
	leaq	-800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	movl	$0, -12(%rbp)
	jmp	.L42
.L43:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$480, %rdx
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$344, %rax
	movl	(%rax), %eax
	leal	-32(%rax), %edx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$344, %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$472, %rax
	movl	$32, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$800, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$800, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movq	(%rax), %rax
	leaq	2048(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$784, %rax
	movl	$128, (%rax)
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rsi
	leaq	-800(%rbp), %rcx
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
.L42:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L43
	addl	$2048, -20(%rbp)
	subl	$32, -16(%rbp)
	cmpl	$32, -16(%rbp)
	ja	.L44
.L39:
	movl	-2148(%rbp), %edx
	leaq	-352(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	leaq	-2112(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L45
.L50:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L46
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L47
.L46:
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
.L47:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$344, %rax
	movl	(%rax), %eax
	sall	$6, %eax
	movl	%eax, -196(%rbp)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$352, %rax
	movq	(%rax), %rdx
	movl	-196(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-196(%rbp), %eax
	subl	$51, %eax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %edx
	leaq	-2112(%rbp), %rax
	movl	-12(%rbp), %ecx
	salq	$7, %rcx
	addq	%rax, %rcx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-196(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	addq	%rdx, %rax
	subq	$2112, %rax
	movb	$-128, (%rax)
	addl	$77, -48(%rbp)
	sall	$3, -48(%rbp)
	cmpl	$55, -196(%rbp)
	ja	.L48
	movl	-48(%rbp), %eax
	movl	%eax, -216(%rbp)
	movl	-216(%rbp), %eax
#APP
# 277 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -216(%rbp)
	movl	-216(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2052, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$472, %rax
	movl	$1, (%rax)
	jmp	.L49
.L48:
	movl	-48(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
#APP
# 284 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1988, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$472, %rax
	movl	$2, (%rax)
.L49:
	leaq	-2112(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$480, %rax
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L45:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L50
	movl	-2148(%rbp), %edx
	leaq	-480(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	leaq	-2112(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L51
.L52:
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
#APP
# 299 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2112, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	616(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
#APP
# 301 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2108, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	620(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
#APP
# 303 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2104, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	624(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
#APP
# 305 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2100, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	628(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
#APP
# 307 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2096, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	632(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$40, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
#APP
# 309 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2092, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	636(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$40, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$48, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -184(%rbp)
	movl	-184(%rbp), %eax
#APP
# 311 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -184(%rbp)
	movl	-184(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2088, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	640(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$48, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %eax
#APP
# 313 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2084, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	644(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$56, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$2080, %rax
	movb	$-128, (%rax)
	movl	$768, -192(%rbp)
	movl	-192(%rbp), %eax
#APP
# 316 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -192(%rbp)
	movl	-192(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2052, %rdx
	movl	%eax, (%rdx)
	leaq	-2112(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$480, %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$472, %rax
	movl	$1, (%rax)
	addl	$1, -12(%rbp)
.L51:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L52
	movl	-2148(%rbp), %edx
	leaq	-480(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_multi_block@PLT
	movl	$0, -12(%rbp)
	jmp	.L53
.L58:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L54
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L55
.L54:
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
.L55:
	movq	-2128(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-52(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$800, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$792, %rax
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
	subq	$792, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$800, %rax
	movq	%rcx, (%rax)
	movl	-52(%rbp), %eax
	addl	$21, %eax
	movl	%eax, %eax
	addq	%rax, -2128(%rbp)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
#APP
# 354 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %edx
	movq	-2128(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
#APP
# 355 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$4, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
#APP
# 356 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$8, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
#APP
# 357 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
#APP
# 358 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$16, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$40, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
#APP
# 359 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$20, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$48, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 360 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$24, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
#APP
# 361 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	movq	-2128(%rbp), %rdx
	addq	$28, %rdx
	movl	%eax, (%rdx)
	addq	$32, -2128(%rbp)
	addl	$32, -52(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	andl	$15, %eax
	movl	%eax, -156(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L56
.L57:
	movq	-2128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -2128(%rbp)
	movl	-156(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -56(%rbp)
.L56:
	movl	-56(%rbp), %eax
	cmpl	%eax, -156(%rbp)
	jnb	.L57
	movl	-156(%rbp), %edx
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
	subq	$784, %rax
	movl	%ecx, (%rax)
	addl	$16, -52(%rbp)
	movq	-72(%rbp), %rax
	addq	$768, %rax
	addq	$8, %rax
	movzbl	(%rax), %edx
	movq	-120(%rbp), %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	addq	$768, %rax
	addq	$9, %rax
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-72(%rbp), %rax
	addq	$768, %rax
	addq	$10, %rax
	movq	-120(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-52(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-120(%rbp), %rax
	addq	$4, %rax
	movl	-52(%rbp), %edx
	movb	%dl, (%rax)
	movl	-52(%rbp), %eax
	addl	$5, %eax
	movl	%eax, %eax
	addq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	addq	%rax, -2136(%rbp)
	addl	$1, -12(%rbp)
.L53:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L58
	movq	-64(%rbp), %rax
	leaq	192(%rax), %rcx
	movl	-2148(%rbp), %edx
	leaq	-800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	leaq	-2112(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-88(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 488(%rax)
	movq	-32(%rbp), %rax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	tls1_multi_block_encrypt, .-tls1_multi_block_encrypt
	.type	aesni_cbc_hmac_sha256_cipher, @function
aesni_cbc_hmac_sha256_cipher:
.LFB504:
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
	movq	%rax, -88(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-96(%rbp), %rax
	movl	832(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	$-1, 440(%rax)
	movq	-352(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-88(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L63
	cmpq	$-1, -24(%rbp)
	jne	.L64
	movq	-352(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L65
.L64:
	movq	-24(%rbp), %rax
	addq	$48, %rax
	andq	$-16, %rax
	cmpq	%rax, -352(%rbp)
	je	.L66
	movl	$0, %eax
	jmp	.L62
.L66:
	movq	-88(%rbp), %rax
	movl	448(%rax), %eax
	cmpl	$769, %eax
	jbe	.L65
	movq	$16, -32(%rbp)
.L65:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	jne	.L67
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	.L68
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$2048, %eax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	andl	$1073741824, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L68
.L67:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L68
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$6, %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.L68
	movq	-344(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha256_update
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-344(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-96(%rbp), %rax
	leaq	728(%rax), %r9
	movq	-88(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-216(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	aesni_cbc_sha256_enc@PLT
	addq	$16, %rsp
	salq	$6, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-216(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movl	764(%rax), %eax
	movq	-216(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 764(%rax)
	salq	$3, -216(%rbp)
	movq	-216(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	760(%rax), %eax
	addl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 760(%rax)
	movq	-96(%rbp), %rax
	movl	760(%rax), %eax
	movq	-216(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L70
	movq	-96(%rbp), %rax
	movl	764(%rax), %eax
	leal	1(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 764(%rax)
	jmp	.L70
.L68:
	movq	$0, -48(%rbp)
.L70:
	movq	-32(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-96(%rbp), %rdx
	leaq	728(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha256_update
	movq	-24(%rbp), %rax
	cmpq	-352(%rbp), %rax
	je	.L71
	movq	-344(%rbp), %rax
	cmpq	-336(%rbp), %rax
	je	.L72
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-336(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L72:
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rdx
	movq	-336(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	616(%rdx), %rcx
	movq	624(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	632(%rdx), %rcx
	movq	640(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	648(%rdx), %rcx
	movq	656(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	664(%rdx), %rcx
	movq	672(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	680(%rdx), %rcx
	movq	688(%rdx), %rbx
	movq	%rcx, 792(%rax)
	movq	%rbx, 800(%rax)
	movq	696(%rdx), %rcx
	movq	704(%rdx), %rbx
	movq	%rcx, 808(%rax)
	movq	%rbx, 816(%rax)
	movq	712(%rdx), %rcx
	movq	720(%rdx), %rbx
	movq	%rcx, 824(%rax)
	movq	%rbx, 832(%rax)
	movq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rax
	addq	$728, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_update
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rdx
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
	movl	%eax, -220(%rbp)
	jmp	.L73
.L74:
	movq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-220(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L73:
	movq	-24(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jb	.L74
	movq	-88(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-352(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-336(%rbp), %rsi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-336(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L75
.L71:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-352(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-336(%rbp), %rsi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-344(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L75
.L63:
	leaq	-320(%rbp), %rax
	addq	$63, %rax
	andq	$-64, %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-352(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	cmpq	$-1, -24(%rbp)
	je	.L76
	movl	$1, -108(%rbp)
	movq	-96(%rbp), %rax
	addq	$768, %rax
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	448(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	448(%rax,%rdx), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	cmpl	$769, %eax
	jle	.L77
	movq	$16, -32(%rbp)
.L77:
	movq	-32(%rbp), %rax
	addq	$33, %rax
	cmpq	%rax, -352(%rbp)
	jnb	.L78
	movl	$0, %eax
	jmp	.L62
.L78:
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
	movl	%eax, -124(%rbp)
	movq	-352(%rbp), %rax
	subl	$33, %eax
	movl	%eax, -128(%rbp)
	movl	$255, %eax
	subl	-128(%rbp), %eax
	shrl	$24, %eax
	orl	%eax, -128(%rbp)
	andl	$255, -128(%rbp)
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_ge
	movl	%eax, %eax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	%eax, %edx
	movl	-108(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -108(%rbp)
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movl	-128(%rbp), %edx
	movl	-124(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
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
	movb	%cl, 448(%rax,%rdx)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movb	%cl, 448(%rax,%rdx)
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 792(%rax)
	movq	%rbx, 800(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 808(%rax)
	movq	%rbx, 816(%rax)
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 824(%rax)
	movq	%rbx, 832(%rax)
	movq	-88(%rbp), %rax
	leaq	448(%rax), %rsi
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha256_update
	subq	$32, -352(%rbp)
	cmpq	$319, -352(%rbp)
	jbe	.L80
	movq	-352(%rbp), %rax
	subq	$320, %rax
	andq	$-64, %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movl	832(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
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
.L80:
	movq	-96(%rbp), %rax
	movl	760(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
#APP
# 549 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-96(%rbp), %rax
	movl	832(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L81
.L84:
	movq	-336(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -208(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	%rax, -208(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	shrq	$56, %rax
	orq	-136(%rbp), %rax
	notq	%rax
	andl	$128, %eax
	orq	%rax, -208(%rbp)
	movl	-76(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-208(%rbp), %rdx
	movl	%edx, %ecx
	movq	-120(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, (%rdx,%rax)
	cmpl	$64, -76(%rbp)
	jne	.L90
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	addq	$7, %rax
	sarq	$63, %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movl	60(%rax), %edx
	movq	-136(%rbp), %rax
	andl	-140(%rbp), %eax
	orl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$72, %rax
	sarq	$63, %rax
	andq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	728(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	732(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	736(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	movq	-96(%rbp), %rax
	movl	740(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	744(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movq	-96(%rbp), %rax
	movl	748(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-104(%rbp), %rax
	movl	24(%rax), %edx
	movq	-96(%rbp), %rax
	movl	752(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-104(%rbp), %rax
	movl	28(%rax), %edx
	movq	-96(%rbp), %rax
	movl	756(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	$0, -76(%rbp)
	jmp	.L83
.L90:
	nop
.L83:
	addq	$1, -64(%rbp)
.L81:
	movq	-64(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jb	.L84
	movl	-76(%rbp), %eax
	movq	%rax, -72(%rbp)
	jmp	.L85
.L86:
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -72(%rbp)
	addq	$1, -64(%rbp)
.L85:
	cmpq	$63, -72(%rbp)
	jbe	.L86
	cmpl	$56, -76(%rbp)
	jbe	.L87
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	addq	$8, %rax
	sarq	$63, %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movl	60(%rax), %edx
	movq	-136(%rbp), %rax
	andl	-140(%rbp), %eax
	orl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	andq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	728(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	732(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	736(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	movq	-96(%rbp), %rax
	movl	740(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	744(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movq	-96(%rbp), %rax
	movl	748(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-104(%rbp), %rax
	movl	24(%rax), %edx
	movq	-96(%rbp), %rax
	movl	752(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-104(%rbp), %rax
	movl	28(%rax), %edx
	movq	-96(%rbp), %rax
	movl	756(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-120(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	addq	$64, -64(%rbp)
.L87:
	movq	-120(%rbp), %rax
	movl	-140(%rbp), %edx
	movl	%edx, 60(%rax)
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	728(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	732(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	736(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	movq	-96(%rbp), %rax
	movl	740(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	744(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movq	-96(%rbp), %rax
	movl	748(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-104(%rbp), %rax
	movl	24(%rax), %edx
	movq	-96(%rbp), %rax
	movl	752(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-104(%rbp), %rax
	movl	28(%rax), %edx
	movq	-96(%rbp), %rax
	movl	756(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 626 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
#APP
# 627 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
#APP
# 628 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
#APP
# 629 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
#APP
# 630 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
#APP
# 631 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-104(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
#APP
# 632 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
#APP
# 633 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 28(%rax)
	addq	$32, -352(%rbp)
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	616(%rdx), %rcx
	movq	624(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	632(%rdx), %rcx
	movq	640(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	648(%rdx), %rcx
	movq	656(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	664(%rdx), %rcx
	movq	672(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	680(%rdx), %rcx
	movq	688(%rdx), %rbx
	movq	%rcx, 792(%rax)
	movq	%rbx, 800(%rax)
	movq	696(%rdx), %rcx
	movq	704(%rdx), %rbx
	movq	%rcx, 808(%rax)
	movq	%rbx, 816(%rax)
	movq	712(%rdx), %rcx
	movq	720(%rdx), %rbx
	movq	%rcx, 824(%rax)
	movq	%rbx, 832(%rax)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	728(%rdx), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -352(%rbp)
	movl	-128(%rbp), %eax
	movq	-352(%rbp), %rdx
	subq	%rax, %rdx
	subq	$33, %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-336(%rbp), %rax
	subq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L88
.L89:
	movq	-184(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -196(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-192(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$32, %eax
	sarl	$31, %eax
	movl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	xorl	-124(%rbp), %eax
	movl	-200(%rbp), %edx
	notl	%edx
	andl	%edx, %eax
	orl	%eax, -76(%rbp)
	movq	-192(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$1, %eax
	sarl	$31, %eax
	andl	%eax, -200(%rbp)
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	-196(%rbp), %eax
	andl	-200(%rbp), %eax
	orl	%eax, -76(%rbp)
	movl	-200(%rbp), %eax
	andl	$1, %eax
	addq	%rax, -72(%rbp)
	addq	$1, -64(%rbp)
.L88:
	movl	-128(%rbp), %eax
	addl	$32, %eax
	movl	%eax, %eax
	cmpq	%rax, -64(%rbp)
	jb	.L89
	movl	-76(%rbp), %eax
	negl	%eax
	sarl	$31, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	notl	%eax
	andl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	jmp	.L62
.L76:
	movq	-96(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-352(%rbp), %rdx
	movq	-336(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
.L75:
	movl	$1, %eax
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	aesni_cbc_hmac_sha256_cipher, .-aesni_cbc_hmac_sha256_cipher
	.type	aesni_cbc_hmac_sha256_set_mac_key, @function
aesni_cbc_hmac_sha256_set_mac_key:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$64, -104(%rbp)
	jbe	.L92
	movq	-16(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-16(%rbp), %rax
	leaq	504(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movq	-16(%rbp), %rax
	leaq	504(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	jmp	.L93
.L92:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L93:
	movl	$0, -4(%rbp)
	jmp	.L94
.L95:
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L94:
	cmpl	$63, -4(%rbp)
	jbe	.L95
	movq	-16(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-16(%rbp), %rax
	leaq	504(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movl	$0, -4(%rbp)
	jmp	.L96
.L97:
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L96:
	cmpl	$63, -4(%rbp)
	jbe	.L97
	movq	-16(%rbp), %rax
	addq	$616, %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	movq	-16(%rbp), %rax
	leaq	616(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	aesni_cbc_hmac_sha256_set_mac_key, .-aesni_cbc_hmac_sha256_set_mac_key
	.type	aesni_cbc_hmac_sha256_set_tls1_aad, @function
aesni_cbc_hmac_sha256_set_tls1_aad:
.LFB506:
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
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$13, -68(%rbp)
	je	.L99
	movl	$-1, %eax
	jmp	.L100
.L99:
	movl	-68(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L101
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rdx, 440(%rax)
	movl	-68(%rbp), %eax
	cltq
	leaq	-4(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	cltq
	leaq	-3(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 448(%rax)
	movq	-32(%rbp), %rax
	movl	448(%rax), %eax
	cmpl	$769, %eax
	jbe	.L102
	cmpl	$15, -20(%rbp)
	ja	.L103
	movl	$0, %eax
	jmp	.L100
.L103:
	subl	$16, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movl	-68(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
.L102:
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 792(%rax)
	movq	%rbx, 800(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 808(%rax)
	movq	%rbx, 816(%rax)
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 824(%rax)
	movq	%rbx, 832(%rax)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	728(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movl	-20(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 496(%rax)
	movl	$1, %eax
	jmp	.L100
.L101:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	448(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 440(%rax)
	movq	-32(%rbp), %rax
	movq	$32, 496(%rax)
	movl	$1, %eax
.L100:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	aesni_cbc_hmac_sha256_set_tls1_aad, .-aesni_cbc_hmac_sha256_set_tls1_aad
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha256_hw.c"
	.align 8
.LC1:
	.string	"assertion failed: ctx->multiblock_max_send_fragment != 0"
	.text
	.type	aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize, @function
aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize:
.LFB507:
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
	movq	480(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$760, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L105:
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	addl	$48, %eax
	andl	$-16, %eax
	addl	$21, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize, .-aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize
	.type	aesni_cbc_hmac_sha256_tls1_multiblock_aad, @function
aesni_cbc_hmac_sha256_tls1_multiblock_aad:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -20(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L108
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cmpl	$769, %eax
	jg	.L109
	movl	$-1, %eax
	jmp	.L110
.L109:
	cmpl	$0, -32(%rbp)
	je	.L111
	cmpl	$4095, -32(%rbp)
	ja	.L112
	movl	$0, %eax
	jmp	.L110
.L112:
	cmpl	$8191, -32(%rbp)
	jbe	.L113
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L113
	movl	$2, -20(%rbp)
	jmp	.L113
.L111:
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L114
	cmpl	$2, -20(%rbp)
	ja	.L114
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, -32(%rbp)
	jmp	.L113
.L114:
	movl	$-1, %eax
	jmp	.L110
.L113:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 792(%rax)
	movq	%rbx, 800(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 808(%rax)
	movq	%rbx, 816(%rax)
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 824(%rax)
	movq	%rbx, 832(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	728(%rdx), %rcx
	movl	$13, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha256_update
	movl	-20(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -52(%rbp)
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %edx
	movl	-24(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jnb	.L115
	movl	-28(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L115
	addl	$1, -24(%rbp)
	movl	-28(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.L115:
	movl	-24(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	addl	$48, %eax
	andl	$-16, %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	addl	$21, %eax
	movl	%eax, -56(%rbp)
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 472(%rax)
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, 476(%rax)
	movl	$1, %eax
	jmp	.L110
.L108:
	movl	$-1, %eax
.L110:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	aesni_cbc_hmac_sha256_tls1_multiblock_aad, .-aesni_cbc_hmac_sha256_tls1_multiblock_aad
	.type	aesni_cbc_hmac_sha256_tls1_multiblock_encrypt, @function
aesni_cbc_hmac_sha256_tls1_multiblock_encrypt:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	tls1_multi_block_encrypt
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	aesni_cbc_hmac_sha256_tls1_multiblock_encrypt, .-aesni_cbc_hmac_sha256_tls1_multiblock_encrypt
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cipher_hw_aes_hmac_sha256, @object
	.size	cipher_hw_aes_hmac_sha256, 64
cipher_hw_aes_hmac_sha256:
	.quad	aesni_cbc_hmac_sha256_init_key
	.quad	aesni_cbc_hmac_sha256_cipher
	.zero	8
	.quad	aesni_cbc_hmac_sha256_set_mac_key
	.quad	aesni_cbc_hmac_sha256_set_tls1_aad
	.quad	aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize
	.quad	aesni_cbc_hmac_sha256_tls1_multiblock_aad
	.quad	aesni_cbc_hmac_sha256_tls1_multiblock_encrypt
	.text
	.globl	ossl_prov_cipher_hw_aes_cbc_hmac_sha256
	.type	ossl_prov_cipher_hw_aes_cbc_hmac_sha256, @function
ossl_prov_cipher_hw_aes_cbc_hmac_sha256:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	cipher_hw_aes_hmac_sha256(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ossl_prov_cipher_hw_aes_cbc_hmac_sha256, .-ossl_prov_cipher_hw_aes_cbc_hmac_sha256
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

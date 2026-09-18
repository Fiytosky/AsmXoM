	.file	"cipher_aes_cbc_hmac_sha1_hw.c"
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
	.globl	ossl_cipher_capable_aes_cbc_hmac_sha1
	.type	ossl_cipher_capable_aes_cbc_hmac_sha1, @function
ossl_cipher_capable_aes_cbc_hmac_sha1:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_cipher_capable_aes_cbc_hmac_sha1, .-ossl_cipher_capable_aes_cbc_hmac_sha1
	.type	aesni_cbc_hmac_sha1_init_key, @function
aesni_cbc_hmac_sha1_init_key:
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
	je	.L18
	movq	-32(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-72(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movl	%eax, -20(%rbp)
	jmp	.L19
.L18:
	movq	-32(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-72(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_decrypt_key@PLT
	movl	%eax, -20(%rbp)
.L19:
	movq	-40(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 600(%rax)
	movq	%rbx, 608(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 616(%rax)
	movq	%rbx, 624(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 632(%rax)
	movq	%rbx, 640(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 648(%rax)
	movq	%rbx, 656(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 664(%rax)
	movq	%rbx, 672(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 680(%rax)
	movq	%rbx, 688(%rax)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 440(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 144(%rax)
	movq	-56(%rbp), %rax
	movq	$36, 152(%rax)
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
	.size	aesni_cbc_hmac_sha1_init_key, .-aesni_cbc_hmac_sha1_init_key
	.type	sha1_update, @function
sha1_update:
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
	movl	92(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	movl	$64, %eax
	subq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L23
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L23:
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
.L22:
	movq	-40(%rbp), %rax
	andl	$63, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L24
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
	jnb	.L24
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
.L24:
	cmpq	$0, -16(%rbp)
	je	.L26
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	sha1_update, .-sha1_update
	.type	tls1_multi_block_encrypt, @function
tls1_multi_block_encrypt:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2048, %rsp
	movq	%rdi, -2008(%rbp)
	movq	%rsi, -2016(%rbp)
	movq	%rdx, -2024(%rbp)
	movq	%rcx, -2032(%rbp)
	movl	%r8d, -2036(%rbp)
	movq	-2008(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-2008(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-2036(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	-76(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leaq	-2000(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	184(%rax), %rax
	movq	-40(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L28
	movl	$0, %eax
	jmp	.L57
.L28:
	leaq	-976(%rbp), %rax
	andl	$31, %eax
	movl	$32, %edx
	subq	%rax, %rdx
	leaq	-976(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-2032(%rbp), %rax
	movl	%eax, %edx
	movl	-2036(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-2032(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-2036(%rbp), %eax
	addl	$1, %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L30
	movl	-8(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L30
	addl	$1, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L30:
	movl	-4(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	addl	$21, %eax
	movl	%eax, -92(%rbp)
	movq	-2024(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-2024(%rbp), %rax
	movq	%rax, -784(%rbp)
	movq	-2016(%rbp), %rax
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
	jmp	.L31
.L32:
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
	movl	-92(%rbp), %eax
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
.L31:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L32
	movq	-72(%rbp), %rax
	addq	$724, %rax
	movq	(%rax), %rax
	movq	%rax, -2000(%rbp)
	movq	-2000(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
#APP
# 179 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L33
.L36:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L34
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L35
.L34:
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
.L35:
	movq	-72(%rbp), %rax
	movl	696(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-72(%rbp), %rax
	movl	700(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	704(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	708(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	712(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %edx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
#APP
# 195 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2000, %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$724, %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1992, %rdx
	movb	%al, (%rdx)
	movq	-72(%rbp), %rax
	addq	$724, %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1991, %rdx
	movb	%al, (%rdx)
	movq	-72(%rbp), %rax
	addq	$724, %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1990, %rdx
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$1989, %rax
	movb	%dl, (%rax)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$1988, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rax
	leaq	-2000(%rbp), %rdx
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
	leaq	-2000(%rbp), %rax
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
.L33:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L36
	movl	-2036(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-88(%rbp), %rax
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
	jbe	.L37
	movl	$0, -12(%rbp)
	jmp	.L38
.L39:
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
.L38:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L39
.L42:
	movl	-2036(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	movq	-64(%rbp), %rax
	leaq	192(%rax), %rcx
	movl	-2036(%rbp), %edx
	leaq	-784(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	movl	$0, -12(%rbp)
	jmp	.L40
.L41:
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
.L40:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L41
	addl	$2048, -20(%rbp)
	subl	$32, -16(%rbp)
	cmpl	$32, -16(%rbp)
	ja	.L42
.L37:
	movl	-2036(%rbp), %edx
	leaq	-336(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	leaq	-2000(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L43
.L48:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L44
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L45
.L44:
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
.L45:
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$328, %rax
	movl	(%rax), %eax
	sall	$6, %eax
	movl	%eax, -172(%rbp)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movq	(%rax), %rdx
	movl	-172(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-172(%rbp), %eax
	subl	$51, %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %edx
	leaq	-2000(%rbp), %rax
	movl	-12(%rbp), %ecx
	salq	$7, %rcx
	addq	%rax, %rcx
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-172(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	addq	%rdx, %rax
	subq	$2000, %rax
	movb	$-128, (%rax)
	addl	$77, -48(%rbp)
	sall	$3, -48(%rbp)
	cmpl	$55, -172(%rbp)
	ja	.L46
	movl	-48(%rbp), %eax
	movl	%eax, -192(%rbp)
	movl	-192(%rbp), %eax
#APP
# 269 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -192(%rbp)
	movl	-192(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1940, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$1, (%rax)
	jmp	.L47
.L46:
	movl	-48(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %eax
#APP
# 276 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1876, %rdx
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$456, %rax
	movl	$2, (%rax)
.L47:
	leaq	-2000(%rbp), %rax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$464, %rax
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L43:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L48
	movl	-2036(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	leaq	-2000(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
	jmp	.L49
.L50:
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 291 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$2000, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	600(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
#APP
# 293 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1996, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	604(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$8, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
#APP
# 295 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1992, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	608(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$16, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
#APP
# 297 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1988, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	612(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$24, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
#APP
# 299 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1984, %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	616(%rax), %edx
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %ecx
	addq	$32, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %eax
	salq	$7, %rax
	addq	%rbp, %rax
	subq	$1980, %rax
	movb	$-128, (%rax)
	movl	$672, -168(%rbp)
	movl	-168(%rbp), %eax
#APP
# 302 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
	movl	-12(%rbp), %edx
	salq	$7, %rdx
	addq	%rbp, %rdx
	subq	$1940, %rdx
	movl	%eax, (%rdx)
	leaq	-2000(%rbp), %rax
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
.L49:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L50
	movl	-2036(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_multi_block@PLT
	movl	$0, -12(%rbp)
	jmp	.L51
.L56:
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L52
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L53
.L52:
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
.L53:
	movq	-2016(%rbp), %rax
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
	addq	%rax, -2016(%rbp)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
#APP
# 334 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %edx
	movq	-2016(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$8, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
#APP
# 335 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movq	-2016(%rbp), %rdx
	addq	$4, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
#APP
# 336 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movq	-2016(%rbp), %rdx
	addq	$8, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$24, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
#APP
# 337 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movq	-2016(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	addq	$32, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
#APP
# 338 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movq	-2016(%rbp), %rdx
	addq	$16, %rdx
	movl	%eax, (%rdx)
	addq	$20, -2016(%rbp)
	addl	$20, -52(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	andl	$15, %eax
	movl	%eax, -144(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L54
.L55:
	movq	-2016(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -2016(%rbp)
	movl	-144(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -56(%rbp)
.L54:
	movl	-56(%rbp), %eax
	cmpl	%eax, -144(%rbp)
	jnb	.L55
	movl	-144(%rbp), %edx
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
	movq	-72(%rbp), %rax
	addq	$724, %rax
	addq	$8, %rax
	movzbl	(%rax), %edx
	movq	-120(%rbp), %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	addq	$724, %rax
	addq	$9, %rax
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-72(%rbp), %rax
	addq	$724, %rax
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
	addq	%rax, -2024(%rbp)
	addl	$1, -12(%rbp)
.L51:
	movl	-12(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L56
	movq	-64(%rbp), %rax
	leaq	192(%rax), %rcx
	movl	-2036(%rbp), %edx
	leaq	-784(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aesni_multi_cbc_encrypt@PLT
	leaq	-2000(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-88(%rbp), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 488(%rax)
	movq	-32(%rbp), %rax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	tls1_multi_block_encrypt, .-tls1_multi_block_encrypt
	.type	aesni_cbc_hmac_sha1_cipher, @function
aesni_cbc_hmac_sha1_cipher:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-96(%rbp), %rax
	movl	788(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	$-1, 440(%rax)
	movq	-304(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-88(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L61
	cmpq	$-1, -24(%rbp)
	jne	.L62
	movq	-304(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L63
.L62:
	movq	-24(%rbp), %rax
	addq	$36, %rax
	andq	$-16, %rax
	cmpq	%rax, -304(%rbp)
	je	.L64
	movl	$0, %eax
	jmp	.L60
.L64:
	movq	-88(%rbp), %rax
	movl	448(%rax), %eax
	cmpl	$769, %eax
	jbe	.L63
	movq	$16, -32(%rbp)
.L63:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L65
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$6, %rax
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L65
	movq	-296(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha1_update
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-296(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-96(%rbp), %rax
	leaq	696(%rax), %r9
	movq	-88(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-208(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	aesni_cbc_sha1_enc@PLT
	addq	$16, %rsp
	salq	$6, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-208(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movl	720(%rax), %eax
	movq	-208(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 720(%rax)
	salq	$3, -208(%rbp)
	movq	-208(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	716(%rax), %eax
	addl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 716(%rax)
	movq	-96(%rbp), %rax
	movl	716(%rax), %eax
	movq	-208(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L67
	movq	-96(%rbp), %rax
	movl	720(%rax), %eax
	leal	1(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 720(%rax)
	jmp	.L67
.L65:
	movq	$0, -48(%rbp)
.L67:
	movq	-32(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-296(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-96(%rbp), %rdx
	leaq	696(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha1_update
	movq	-24(%rbp), %rax
	cmpq	-304(%rbp), %rax
	je	.L68
	movq	-296(%rbp), %rax
	cmpq	-288(%rbp), %rax
	je	.L69
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-296(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-288(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L69:
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rdx
	movq	-288(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	616(%rdx), %rcx
	movq	624(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	632(%rdx), %rcx
	movq	640(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	648(%rdx), %rcx
	movq	656(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	664(%rdx), %rcx
	movq	672(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	680(%rdx), %rcx
	movq	688(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	-288(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rax
	addq	$696, %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_update
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rdx
	movq	-288(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	addq	$20, -24(%rbp)
	movq	-304(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.L70
.L71:
	movq	-288(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L70:
	movq	-24(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jb	.L71
	movq	-88(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-304(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-288(%rbp), %rsi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-288(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L72
.L68:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-304(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-288(%rbp), %rsi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-296(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$1, %r9d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_cbc_encrypt@PLT
	jmp	.L72
.L61:
	leaq	-272(%rbp), %rax
	addq	$31, %rax
	andq	$-32, %rax
	movq	%rax, -104(%rbp)
	cmpq	$-1, -24(%rbp)
	je	.L73
	movl	$1, -108(%rbp)
	movq	-96(%rbp), %rax
	addq	$724, %rax
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
	jle	.L74
	cmpq	$36, -304(%rbp)
	ja	.L75
	movl	$0, %eax
	jmp	.L60
.L75:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-296(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$16, -296(%rbp)
	addq	$16, -288(%rbp)
	subq	$16, -304(%rbp)
	jmp	.L77
.L74:
	cmpq	$20, -304(%rbp)
	ja	.L77
	movl	$0, %eax
	jmp	.L60
.L77:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-304(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	movq	-304(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	movq	-304(%rbp), %rax
	subl	$21, %eax
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
	addl	$21, %eax
	movl	%eax, %edx
	movq	-304(%rbp), %rax
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
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	-88(%rbp), %rax
	leaq	448(%rax), %rsi
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sha1_update
	subq	$20, -304(%rbp)
	cmpq	$319, -304(%rbp)
	jbe	.L78
	movq	-304(%rbp), %rax
	subq	$320, %rax
	andq	$-64, %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movl	788(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movq	-64(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -304(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -56(%rbp)
.L78:
	movq	-96(%rbp), %rax
	movl	716(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
#APP
# 513 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
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
	movq	-96(%rbp), %rax
	movl	788(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L79
.L82:
	movq	-288(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	%rax, -200(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	shrq	$56, %rax
	orq	-136(%rbp), %rax
	notq	%rax
	andl	$128, %eax
	orq	%rax, -200(%rbp)
	movl	-76(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-200(%rbp), %rdx
	movl	%edx, %ecx
	movq	-120(%rbp), %rdx
	movl	%eax, %eax
	movb	%cl, (%rdx,%rax)
	cmpl	$64, -76(%rbp)
	jne	.L88
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
	leaq	696(%rax), %rcx
	movq	-120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$72, %rax
	sarq	$63, %rax
	andq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	696(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	700(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	704(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	movq	-96(%rbp), %rax
	movl	708(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	712(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$0, -76(%rbp)
	jmp	.L81
.L88:
	nop
.L81:
	addq	$1, -64(%rbp)
.L79:
	movq	-64(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jb	.L82
	movl	-76(%rbp), %eax
	movq	%rax, -72(%rbp)
	jmp	.L83
.L84:
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -72(%rbp)
	addq	$1, -64(%rbp)
.L83:
	cmpq	$63, -72(%rbp)
	jbe	.L84
	cmpl	$56, -76(%rbp)
	jbe	.L85
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
	leaq	696(%rax), %rcx
	movq	-120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	andq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	696(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	700(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	704(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	movq	-96(%rbp), %rax
	movl	708(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	712(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-120(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	addq	$64, -64(%rbp)
.L85:
	movq	-120(%rbp), %rax
	movl	-140(%rbp), %edx
	movl	%edx, 60(%rax)
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_block_data_order@PLT
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$73, %rax
	sarq	$63, %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	696(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	700(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	704(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	movq	-96(%rbp), %rax
	movl	708(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-104(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	712(%rax), %eax
	movq	-136(%rbp), %rcx
	andl	%ecx, %eax
	orl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
#APP
# 578 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
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
# 579 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
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
# 580 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
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
# 581 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
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
# 582 "../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	addq	$20, -304(%rbp)
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	600(%rdx), %rcx
	movq	608(%rdx), %rbx
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	616(%rdx), %rcx
	movq	624(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	632(%rdx), %rcx
	movq	640(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	648(%rdx), %rcx
	movq	656(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	664(%rdx), %rcx
	movq	672(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	680(%rdx), %rcx
	movq	688(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	696(%rdx), %rcx
	movl	$20, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -304(%rbp)
	movl	-128(%rbp), %eax
	movq	-304(%rbp), %rdx
	subq	%rax, %rdx
	subq	$21, %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-288(%rbp), %rax
	subq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L86
.L87:
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
	subl	$20, %eax
	sarl	$31, %eax
	movl	%eax, -192(%rbp)
	movl	-188(%rbp), %eax
	xorl	-124(%rbp), %eax
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
	movq	-104(%rbp), %rdx
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
.L86:
	movl	-128(%rbp), %eax
	addl	$20, %eax
	movl	%eax, %eax
	cmpq	%rax, -64(%rbp)
	jb	.L87
	movl	-76(%rbp), %eax
	negl	%eax
	sarl	$31, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	notl	%eax
	andl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	jmp	.L60
.L73:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-88(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-304(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aesni_cbc_encrypt@PLT
	movq	-96(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-304(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
.L72:
	movl	$1, %eax
.L60:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	aesni_cbc_hmac_sha1_cipher, .-aesni_cbc_hmac_sha1_cipher
	.type	aesni_cbc_hmac_sha1_set_mac_key, @function
aesni_cbc_hmac_sha1_set_mac_key:
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
	jbe	.L90
	movq	-16(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-16(%rbp), %rax
	leaq	504(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movq	-16(%rbp), %rax
	leaq	504(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	jmp	.L91
.L90:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L91:
	movl	$0, -4(%rbp)
	jmp	.L92
.L93:
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L92:
	cmpl	$63, -4(%rbp)
	jbe	.L93
	movq	-16(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-16(%rbp), %rax
	leaq	504(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movl	$0, -4(%rbp)
	jmp	.L94
.L95:
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L94:
	cmpl	$63, -4(%rbp)
	jbe	.L95
	movq	-16(%rbp), %rax
	addq	$600, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movq	-16(%rbp), %rax
	leaq	600(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
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
	.size	aesni_cbc_hmac_sha1_set_mac_key, .-aesni_cbc_hmac_sha1_set_mac_key
	.type	aesni_cbc_hmac_sha1_set_tls1_aad, @function
aesni_cbc_hmac_sha1_set_tls1_aad:
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
	je	.L97
	movl	$-1, %eax
	jmp	.L98
.L97:
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
	je	.L99
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
	jbe	.L100
	cmpl	$15, -20(%rbp)
	ja	.L101
	movl	$0, %eax
	jmp	.L98
.L101:
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
.L100:
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
	movl	-20(%rbp), %eax
	addl	$36, %eax
	andl	$-16, %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 496(%rax)
	movl	$1, %eax
	jmp	.L98
.L99:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	448(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 440(%rax)
	movq	-32(%rbp), %rax
	movq	$20, 496(%rax)
	movl	$1, %eax
.L98:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	aesni_cbc_hmac_sha1_set_tls1_aad, .-aesni_cbc_hmac_sha1_set_tls1_aad
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c"
	.align 8
.LC1:
	.string	"assertion failed: ctx->multiblock_max_send_fragment != 0"
	.text
	.type	aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize, @function
aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize:
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
	jne	.L103
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$707, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L103:
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	addl	$36, %eax
	andl	$-16, %eax
	addl	$21, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize, .-aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize
	.type	aesni_cbc_hmac_sha1_tls1_multiblock_aad, @function
aesni_cbc_hmac_sha1_tls1_multiblock_aad:
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
	movq	-80(%rbp), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 472(%rax)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L106
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
	jg	.L107
	movl	$-1, %eax
	jmp	.L108
.L107:
	cmpl	$0, -32(%rbp)
	je	.L109
	cmpl	$4095, -32(%rbp)
	ja	.L110
	movl	$0, %eax
	jmp	.L108
.L110:
	cmpl	$8191, -32(%rbp)
	jbe	.L111
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L111
	movl	$2, -20(%rbp)
	jmp	.L111
.L109:
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$2, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L112
	cmpl	$2, -20(%rbp)
	ja	.L112
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, -32(%rbp)
	jmp	.L111
.L112:
	movl	$-1, %eax
	jmp	.L108
.L111:
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	504(%rdx), %rcx
	movq	512(%rdx), %rbx
	movq	%rcx, 696(%rax)
	movq	%rbx, 704(%rax)
	movq	520(%rdx), %rcx
	movq	528(%rdx), %rbx
	movq	%rcx, 712(%rax)
	movq	%rbx, 720(%rax)
	movq	536(%rdx), %rcx
	movq	544(%rdx), %rbx
	movq	%rcx, 728(%rax)
	movq	%rbx, 736(%rax)
	movq	552(%rdx), %rcx
	movq	560(%rdx), %rbx
	movq	%rcx, 744(%rax)
	movq	%rbx, 752(%rax)
	movq	568(%rdx), %rcx
	movq	576(%rdx), %rbx
	movq	%rcx, 760(%rax)
	movq	%rbx, 768(%rax)
	movq	584(%rdx), %rcx
	movq	592(%rdx), %rbx
	movq	%rcx, 776(%rax)
	movq	%rbx, 784(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	696(%rdx), %rcx
	movl	$13, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	sha1_update
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
	jnb	.L113
	movl	-28(%rbp), %eax
	addl	$22, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jnb	.L113
	addl	$1, -24(%rbp)
	movl	-28(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.L113:
	movl	-24(%rbp), %eax
	addl	$36, %eax
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
	addl	$36, %eax
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
	jmp	.L108
.L106:
	movl	$-1, %eax
.L108:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	aesni_cbc_hmac_sha1_tls1_multiblock_aad, .-aesni_cbc_hmac_sha1_tls1_multiblock_aad
	.type	aesni_cbc_hmac_sha1_tls1_multiblock_encrypt, @function
aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:
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
	.size	aesni_cbc_hmac_sha1_tls1_multiblock_encrypt, .-aesni_cbc_hmac_sha1_tls1_multiblock_encrypt
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cipher_hw_aes_hmac_sha1, @object
	.size	cipher_hw_aes_hmac_sha1, 64
cipher_hw_aes_hmac_sha1:
	.quad	aesni_cbc_hmac_sha1_init_key
	.quad	aesni_cbc_hmac_sha1_cipher
	.zero	8
	.quad	aesni_cbc_hmac_sha1_set_mac_key
	.quad	aesni_cbc_hmac_sha1_set_tls1_aad
	.quad	aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize
	.quad	aesni_cbc_hmac_sha1_tls1_multiblock_aad
	.quad	aesni_cbc_hmac_sha1_tls1_multiblock_encrypt
	.text
	.globl	ossl_prov_cipher_hw_aes_cbc_hmac_sha1
	.type	ossl_prov_cipher_hw_aes_cbc_hmac_sha1, @function
ossl_prov_cipher_hw_aes_cbc_hmac_sha1:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	cipher_hw_aes_hmac_sha1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ossl_prov_cipher_hw_aes_cbc_hmac_sha1, .-ossl_prov_cipher_hw_aes_cbc_hmac_sha1
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

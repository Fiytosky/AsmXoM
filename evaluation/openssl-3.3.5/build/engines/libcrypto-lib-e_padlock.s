	.file	"e_padlock.c"
	.text
	.globl	engine_load_padlock_int
	.type	engine_load_padlock_int, @function
engine_load_padlock_int:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_padlock
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L1
.L4:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	engine_load_padlock_int, .-engine_load_padlock_int
	.section	.data.rel.local,"aw"
	.align 32
	.type	padlock_rand, @object
	.size	padlock_rand, 48
padlock_rand:
	.quad	0
	.quad	padlock_rand_bytes
	.quad	0
	.quad	0
	.quad	padlock_rand_bytes
	.quad	padlock_rand_status
	.section	.rodata
.LC0:
	.string	"padlock"
	.section	.data.rel.local
	.align 8
	.type	padlock_id, @object
	.size	padlock_id, 8
padlock_id:
	.quad	.LC0
	.local	padlock_name
	.comm	padlock_name,100,32
	.local	padlock_use_ace
	.comm	padlock_use_ace,4,4
	.local	padlock_use_rng
	.comm	padlock_use_rng,4,4
	.section	.rodata
.LC1:
	.string	"ACE"
.LC2:
	.string	"no-ACE"
.LC3:
	.string	"RNG"
.LC4:
	.string	"no-RNG"
.LC5:
	.string	"VIA PadLock (%s, %s)"
	.text
	.type	padlock_bind_helper, @function
padlock_bind_helper:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	padlock_available
	movl	$0, padlock_use_rng(%rip)
	movl	padlock_use_ace(%rip), %eax
	testl	%eax, %eax
	je	.L6
	leaq	.LC1(%rip), %rdx
	jmp	.L7
.L6:
	leaq	.LC2(%rip), %rdx
.L7:
	movl	padlock_use_rng(%rip), %eax
	testl	%eax, %eax
	je	.L8
	leaq	.LC3(%rip), %rax
	jmp	.L9
.L8:
	leaq	.LC4(%rip), %rax
.L9:
	leaq	.LC5(%rip), %rsi
	leaq	padlock_name(%rip), %rdi
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$100, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	padlock_id(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	je	.L10
	leaq	padlock_name(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	je	.L10
	leaq	padlock_init(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_init_function@PLT
	testl	%eax, %eax
	je	.L10
	movl	padlock_use_ace(%rip), %eax
	testl	%eax, %eax
	je	.L11
	leaq	padlock_ciphers(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_ciphers@PLT
	testl	%eax, %eax
	je	.L10
.L11:
	movl	padlock_use_rng(%rip), %eax
	testl	%eax, %eax
	je	.L12
	leaq	padlock_rand(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_RAND@PLT
	testl	%eax, %eax
	jne	.L12
.L10:
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	padlock_bind_helper, .-padlock_bind_helper
	.type	ENGINE_padlock, @function
ENGINE_padlock:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	padlock_bind_helper
	testl	%eax, %eax
	jne	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-8(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ENGINE_padlock, .-ENGINE_padlock
	.type	padlock_init, @function
padlock_init:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	padlock_use_rng(%rip), %eax
	testl	%eax, %eax
	jne	.L19
	movl	padlock_use_ace(%rip), %eax
	testl	%eax, %eax
	je	.L20
.L19:
	movl	$1, %eax
	jmp	.L22
.L20:
	movl	$0, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	padlock_init, .-padlock_init
	.type	padlock_available, @function
padlock_available:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	padlock_capability@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, padlock_use_ace(%rip)
	movl	-4(%rbp), %eax
	andl	$12, %eax
	cmpl	$12, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, padlock_use_rng(%rip)
	movl	padlock_use_ace(%rip), %edx
	movl	padlock_use_rng(%rip), %eax
	addl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	padlock_available, .-padlock_available
	.section	.rodata
	.align 32
	.type	padlock_cipher_nids, @object
	.size	padlock_cipher_nids, 60
padlock_cipher_nids:
	.long	418
	.long	419
	.long	421
	.long	420
	.long	904
	.long	422
	.long	423
	.long	425
	.long	424
	.long	905
	.long	426
	.long	427
	.long	429
	.long	428
	.long	906
	.data
	.align 4
	.type	padlock_cipher_nids_num, @object
	.size	padlock_cipher_nids_num, 4
padlock_cipher_nids_num:
	.long	15
	.text
	.type	padlock_ecb_cipher, @function
padlock_ecb_cipher:
.LFB476:
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
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	andl	$15, %eax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	leaq	(%rbx,%rax), %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	padlock_ecb_encrypt@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	padlock_ecb_cipher, .-padlock_ecb_cipher
	.type	padlock_cbc_cipher, @function
padlock_cbc_cipher:
.LFB477:
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
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	andl	$15, %eax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv@PLT
	movq	-24(%rbp), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	padlock_cbc_encrypt@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L28
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L28:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	padlock_cbc_cipher, .-padlock_cbc_cipher
	.type	padlock_cfb_cipher, @function
padlock_cfb_cipher:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	andl	$15, %eax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	addq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, -48(%rbp)
	cmpq	$15, -24(%rbp)
	jbe	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L38
	jmp	.L35
.L37:
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %esi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
	subq	$1, -96(%rbp)
.L35:
	cmpq	$15, -24(%rbp)
	ja	.L36
	cmpq	$0, -96(%rbp)
	jne	.L37
	jmp	.L36
.L39:
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -80(%rbp)
	xorb	-49(%rbp), %dl
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movb	%al, (%rdx)
	subq	$1, -96(%rbp)
.L38:
	cmpq	$15, -24(%rbp)
	ja	.L36
	cmpq	$0, -96(%rbp)
	jne	.L39
.L36:
	movq	-24(%rbp), %rax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L31:
	cmpq	$0, -96(%rbp)
	jne	.L40
	movl	$1, %eax
	jmp	.L33
.L40:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv@PLT
	movq	-40(%rbp), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-96(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L41
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	padlock_cfb_encrypt@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L33
.L42:
	movq	-24(%rbp), %rax
	subq	%rax, -96(%rbp)
.L41:
	cmpq	$0, -96(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movq	-40(%rbp), %rax
	movzbl	17(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L44
	movq	-40(%rbp), %rax
	movzbl	17(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 17(%rax)
	call	padlock_reload_key@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	padlock_aes_block@PLT
	movq	-40(%rbp), %rax
	movzbl	17(%rax), %edx
	orl	$2, %edx
	movb	%dl, 17(%rax)
	call	padlock_reload_key@PLT
	jmp	.L45
.L46:
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -50(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -80(%rbp)
	xorb	-50(%rbp), %dl
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	-50(%rbp), %edx
	movb	%dl, (%rax)
	subq	$1, -96(%rbp)
.L45:
	cmpq	$0, -96(%rbp)
	jne	.L46
	jmp	.L43
.L44:
	call	padlock_reload_key@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	padlock_aes_block@PLT
	call	padlock_reload_key@PLT
	jmp	.L47
.L48:
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -32(%rbp)
	subq	$1, -96(%rbp)
.L47:
	cmpq	$0, -96(%rbp)
	jne	.L48
.L43:
	movq	-40(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, %eax
.L33:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	padlock_cfb_cipher, .-padlock_cfb_cipher
	.type	padlock_ofb_cipher, @function
padlock_ofb_cipher:
.LFB479:
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
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	andl	$15, %eax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	addq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L50
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, -48(%rbp)
	cmpq	$15, -24(%rbp)
	jbe	.L53
	movl	$0, %eax
	jmp	.L52
.L55:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %esi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
	subq	$1, -80(%rbp)
.L53:
	cmpq	$15, -24(%rbp)
	ja	.L54
	cmpq	$0, -80(%rbp)
	jne	.L55
.L54:
	movq	-24(%rbp), %rax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
.L50:
	cmpq	$0, -80(%rbp)
	jne	.L56
	movl	$1, %eax
	jmp	.L52
.L56:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv@PLT
	movq	-40(%rbp), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-80(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L57
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	padlock_ofb_encrypt@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L52
.L58:
	movq	-24(%rbp), %rax
	subq	%rax, -80(%rbp)
.L57:
	cmpq	$0, -80(%rbp)
	je	.L59
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	call	padlock_reload_key@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	padlock_aes_block@PLT
	call	padlock_reload_key@PLT
	jmp	.L60
.L61:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -32(%rbp)
	subq	$1, -80(%rbp)
.L60:
	cmpq	$0, -80(%rbp)
	jne	.L61
.L59:
	movq	-40(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, %eax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	padlock_ofb_cipher, .-padlock_ofb_cipher
	.type	padlock_ctr32_encrypt_glue, @function
padlock_ctr32_encrypt_glue:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	padlock_ctr32_encrypt@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	padlock_ctr32_encrypt_glue, .-padlock_ctr32_encrypt_glue
	.type	padlock_ctr_cipher, @function
padlock_ctr_cipher:
.LFB481:
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
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	andl	$15, %eax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_num@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L64
	movl	$0, %eax
	jmp	.L66
.L64:
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_buf_noconst@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	padlock_ctr32_encrypt_glue(%rip), %rdi
	pushq	%rdi
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	movq	%rbx, %r9
	movq	%rax, %rdi
	call	CRYPTO_ctr128_encrypt_ctr32@PLT
	addq	$16, %rsp
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_num@PLT
	movl	$1, %eax
.L66:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	padlock_ctr_cipher, .-padlock_ctr_cipher
	.local	_hidden_aes_128_ecb
	.comm	_hidden_aes_128_ecb,8,8
	.type	padlock_aes_128_ecb, @function
padlock_aes_128_ecb:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_128_ecb(%rip), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$16, %edx
	movl	$16, %esi
	movl	$418, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_128_ecb(%rip)
	movq	_hidden_aes_128_ecb(%rip), %rax
	testq	%rax, %rax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	leaq	padlock_ecb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L69
	movq	_hidden_aes_128_ecb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L68
.L69:
	movq	_hidden_aes_128_ecb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_128_ecb(%rip)
.L68:
	movq	_hidden_aes_128_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	padlock_aes_128_ecb, .-padlock_aes_128_ecb
	.local	_hidden_aes_128_cbc
	.comm	_hidden_aes_128_cbc,8,8
	.type	padlock_aes_128_cbc, @function
padlock_aes_128_cbc:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_128_cbc(%rip), %rax
	testq	%rax, %rax
	jne	.L72
	movl	$16, %edx
	movl	$16, %esi
	movl	$419, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_128_cbc(%rip)
	movq	_hidden_aes_128_cbc(%rip), %rax
	testq	%rax, %rax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	leaq	padlock_cbc_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L73
	movq	_hidden_aes_128_cbc(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L72
.L73:
	movq	_hidden_aes_128_cbc(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_128_cbc(%rip)
.L72:
	movq	_hidden_aes_128_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	padlock_aes_128_cbc, .-padlock_aes_128_cbc
	.local	_hidden_aes_128_cfb
	.comm	_hidden_aes_128_cfb,8,8
	.type	padlock_aes_128_cfb, @function
padlock_aes_128_cfb:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_128_cfb(%rip), %rax
	testq	%rax, %rax
	jne	.L76
	movl	$16, %edx
	movl	$1, %esi
	movl	$421, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_128_cfb(%rip)
	movq	_hidden_aes_128_cfb(%rip), %rax
	testq	%rax, %rax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	leaq	padlock_cfb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L77
	movq	_hidden_aes_128_cfb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L76
.L77:
	movq	_hidden_aes_128_cfb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_128_cfb(%rip)
.L76:
	movq	_hidden_aes_128_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	padlock_aes_128_cfb, .-padlock_aes_128_cfb
	.local	_hidden_aes_128_ofb
	.comm	_hidden_aes_128_ofb,8,8
	.type	padlock_aes_128_ofb, @function
padlock_aes_128_ofb:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_128_ofb(%rip), %rax
	testq	%rax, %rax
	jne	.L80
	movl	$16, %edx
	movl	$1, %esi
	movl	$420, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_128_ofb(%rip)
	movq	_hidden_aes_128_ofb(%rip), %rax
	testq	%rax, %rax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	leaq	padlock_ofb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L81
	movq	_hidden_aes_128_ofb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L80
.L81:
	movq	_hidden_aes_128_ofb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_128_ofb(%rip)
.L80:
	movq	_hidden_aes_128_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	padlock_aes_128_ofb, .-padlock_aes_128_ofb
	.local	_hidden_aes_128_ctr
	.comm	_hidden_aes_128_ctr,8,8
	.type	padlock_aes_128_ctr, @function
padlock_aes_128_ctr:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_128_ctr(%rip), %rax
	testq	%rax, %rax
	jne	.L84
	movl	$16, %edx
	movl	$1, %esi
	movl	$904, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_128_ctr(%rip)
	movq	_hidden_aes_128_ctr(%rip), %rax
	testq	%rax, %rax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	leaq	padlock_ctr_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L85
	movq	_hidden_aes_128_ctr(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L84
.L85:
	movq	_hidden_aes_128_ctr(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_128_ctr(%rip)
.L84:
	movq	_hidden_aes_128_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	padlock_aes_128_ctr, .-padlock_aes_128_ctr
	.local	_hidden_aes_192_ecb
	.comm	_hidden_aes_192_ecb,8,8
	.type	padlock_aes_192_ecb, @function
padlock_aes_192_ecb:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_192_ecb(%rip), %rax
	testq	%rax, %rax
	jne	.L88
	movl	$24, %edx
	movl	$16, %esi
	movl	$422, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_192_ecb(%rip)
	movq	_hidden_aes_192_ecb(%rip), %rax
	testq	%rax, %rax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	leaq	padlock_ecb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L89
	movq	_hidden_aes_192_ecb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L88
.L89:
	movq	_hidden_aes_192_ecb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_192_ecb(%rip)
.L88:
	movq	_hidden_aes_192_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	padlock_aes_192_ecb, .-padlock_aes_192_ecb
	.local	_hidden_aes_192_cbc
	.comm	_hidden_aes_192_cbc,8,8
	.type	padlock_aes_192_cbc, @function
padlock_aes_192_cbc:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_192_cbc(%rip), %rax
	testq	%rax, %rax
	jne	.L92
	movl	$24, %edx
	movl	$16, %esi
	movl	$423, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_192_cbc(%rip)
	movq	_hidden_aes_192_cbc(%rip), %rax
	testq	%rax, %rax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	leaq	padlock_cbc_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L93
	movq	_hidden_aes_192_cbc(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L92
.L93:
	movq	_hidden_aes_192_cbc(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_192_cbc(%rip)
.L92:
	movq	_hidden_aes_192_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	padlock_aes_192_cbc, .-padlock_aes_192_cbc
	.local	_hidden_aes_192_cfb
	.comm	_hidden_aes_192_cfb,8,8
	.type	padlock_aes_192_cfb, @function
padlock_aes_192_cfb:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_192_cfb(%rip), %rax
	testq	%rax, %rax
	jne	.L96
	movl	$24, %edx
	movl	$1, %esi
	movl	$425, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_192_cfb(%rip)
	movq	_hidden_aes_192_cfb(%rip), %rax
	testq	%rax, %rax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	leaq	padlock_cfb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L97
	movq	_hidden_aes_192_cfb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L96
.L97:
	movq	_hidden_aes_192_cfb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_192_cfb(%rip)
.L96:
	movq	_hidden_aes_192_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	padlock_aes_192_cfb, .-padlock_aes_192_cfb
	.local	_hidden_aes_192_ofb
	.comm	_hidden_aes_192_ofb,8,8
	.type	padlock_aes_192_ofb, @function
padlock_aes_192_ofb:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_192_ofb(%rip), %rax
	testq	%rax, %rax
	jne	.L100
	movl	$24, %edx
	movl	$1, %esi
	movl	$424, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_192_ofb(%rip)
	movq	_hidden_aes_192_ofb(%rip), %rax
	testq	%rax, %rax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	leaq	padlock_ofb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L101
	movq	_hidden_aes_192_ofb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L100
.L101:
	movq	_hidden_aes_192_ofb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_192_ofb(%rip)
.L100:
	movq	_hidden_aes_192_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	padlock_aes_192_ofb, .-padlock_aes_192_ofb
	.local	_hidden_aes_192_ctr
	.comm	_hidden_aes_192_ctr,8,8
	.type	padlock_aes_192_ctr, @function
padlock_aes_192_ctr:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_192_ctr(%rip), %rax
	testq	%rax, %rax
	jne	.L104
	movl	$24, %edx
	movl	$1, %esi
	movl	$905, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_192_ctr(%rip)
	movq	_hidden_aes_192_ctr(%rip), %rax
	testq	%rax, %rax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	leaq	padlock_ctr_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L105
	movq	_hidden_aes_192_ctr(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L104
.L105:
	movq	_hidden_aes_192_ctr(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_192_ctr(%rip)
.L104:
	movq	_hidden_aes_192_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	padlock_aes_192_ctr, .-padlock_aes_192_ctr
	.local	_hidden_aes_256_ecb
	.comm	_hidden_aes_256_ecb,8,8
	.type	padlock_aes_256_ecb, @function
padlock_aes_256_ecb:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_256_ecb(%rip), %rax
	testq	%rax, %rax
	jne	.L108
	movl	$32, %edx
	movl	$16, %esi
	movl	$426, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_256_ecb(%rip)
	movq	_hidden_aes_256_ecb(%rip), %rax
	testq	%rax, %rax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	leaq	padlock_ecb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L109
	movq	_hidden_aes_256_ecb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L108
.L109:
	movq	_hidden_aes_256_ecb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_256_ecb(%rip)
.L108:
	movq	_hidden_aes_256_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	padlock_aes_256_ecb, .-padlock_aes_256_ecb
	.local	_hidden_aes_256_cbc
	.comm	_hidden_aes_256_cbc,8,8
	.type	padlock_aes_256_cbc, @function
padlock_aes_256_cbc:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_256_cbc(%rip), %rax
	testq	%rax, %rax
	jne	.L112
	movl	$32, %edx
	movl	$16, %esi
	movl	$427, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_256_cbc(%rip)
	movq	_hidden_aes_256_cbc(%rip), %rax
	testq	%rax, %rax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	leaq	padlock_cbc_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L113
	movq	_hidden_aes_256_cbc(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L112
.L113:
	movq	_hidden_aes_256_cbc(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_256_cbc(%rip)
.L112:
	movq	_hidden_aes_256_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	padlock_aes_256_cbc, .-padlock_aes_256_cbc
	.local	_hidden_aes_256_cfb
	.comm	_hidden_aes_256_cfb,8,8
	.type	padlock_aes_256_cfb, @function
padlock_aes_256_cfb:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_256_cfb(%rip), %rax
	testq	%rax, %rax
	jne	.L116
	movl	$32, %edx
	movl	$1, %esi
	movl	$429, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_256_cfb(%rip)
	movq	_hidden_aes_256_cfb(%rip), %rax
	testq	%rax, %rax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	leaq	padlock_cfb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L117
	movq	_hidden_aes_256_cfb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L116
.L117:
	movq	_hidden_aes_256_cfb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_256_cfb(%rip)
.L116:
	movq	_hidden_aes_256_cfb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	padlock_aes_256_cfb, .-padlock_aes_256_cfb
	.local	_hidden_aes_256_ofb
	.comm	_hidden_aes_256_ofb,8,8
	.type	padlock_aes_256_ofb, @function
padlock_aes_256_ofb:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_256_ofb(%rip), %rax
	testq	%rax, %rax
	jne	.L120
	movl	$32, %edx
	movl	$1, %esi
	movl	$428, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_256_ofb(%rip)
	movq	_hidden_aes_256_ofb(%rip), %rax
	testq	%rax, %rax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	leaq	padlock_ofb_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L121
	movq	_hidden_aes_256_ofb(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L120
.L121:
	movq	_hidden_aes_256_ofb(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_256_ofb(%rip)
.L120:
	movq	_hidden_aes_256_ofb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	padlock_aes_256_ofb, .-padlock_aes_256_ofb
	.local	_hidden_aes_256_ctr
	.comm	_hidden_aes_256_ctr,8,8
	.type	padlock_aes_256_ctr, @function
padlock_aes_256_ctr:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hidden_aes_256_ctr(%rip), %rax
	testq	%rax, %rax
	jne	.L124
	movl	$32, %edx
	movl	$1, %esi
	movl	$906, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, _hidden_aes_256_ctr(%rip)
	movq	_hidden_aes_256_ctr(%rip), %rax
	testq	%rax, %rax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	leaq	padlock_aes_init_key(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	leaq	padlock_ctr_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	movq	EVP_CIPHER_set_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_set_asn1_params@PLT
	testl	%eax, %eax
	je	.L125
	movq	_hidden_aes_256_ctr(%rip), %rax
	movq	EVP_CIPHER_get_asn1_iv@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_get_asn1_params@PLT
	testl	%eax, %eax
	jne	.L124
.L125:
	movq	_hidden_aes_256_ctr(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, _hidden_aes_256_ctr(%rip)
.L124:
	movq	_hidden_aes_256_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	padlock_aes_256_ctr, .-padlock_aes_256_ctr
	.type	padlock_ciphers, @function
padlock_ciphers:
.LFB497:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L128
	movq	-24(%rbp), %rax
	leaq	padlock_cipher_nids(%rip), %rdx
	movq	%rdx, (%rax)
	movl	padlock_cipher_nids_num(%rip), %eax
	jmp	.L129
.L128:
	cmpl	$906, -28(%rbp)
	je	.L130
	cmpl	$906, -28(%rbp)
	jg	.L131
	cmpl	$905, -28(%rbp)
	je	.L132
	cmpl	$905, -28(%rbp)
	jg	.L131
	cmpl	$904, -28(%rbp)
	je	.L133
	cmpl	$904, -28(%rbp)
	jg	.L131
	cmpl	$429, -28(%rbp)
	je	.L134
	cmpl	$429, -28(%rbp)
	jg	.L131
	cmpl	$428, -28(%rbp)
	je	.L135
	cmpl	$428, -28(%rbp)
	jg	.L131
	cmpl	$427, -28(%rbp)
	je	.L136
	cmpl	$427, -28(%rbp)
	jg	.L131
	cmpl	$426, -28(%rbp)
	je	.L137
	cmpl	$426, -28(%rbp)
	jg	.L131
	cmpl	$425, -28(%rbp)
	je	.L138
	cmpl	$425, -28(%rbp)
	jg	.L131
	cmpl	$424, -28(%rbp)
	je	.L139
	cmpl	$424, -28(%rbp)
	jg	.L131
	cmpl	$423, -28(%rbp)
	je	.L140
	cmpl	$423, -28(%rbp)
	jg	.L131
	cmpl	$422, -28(%rbp)
	je	.L141
	cmpl	$422, -28(%rbp)
	jg	.L131
	cmpl	$421, -28(%rbp)
	je	.L142
	cmpl	$421, -28(%rbp)
	jg	.L131
	cmpl	$420, -28(%rbp)
	je	.L143
	cmpl	$420, -28(%rbp)
	jg	.L131
	cmpl	$418, -28(%rbp)
	je	.L144
	cmpl	$419, -28(%rbp)
	je	.L145
	jmp	.L131
.L144:
	call	padlock_aes_128_ecb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L145:
	call	padlock_aes_128_cbc
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L142:
	call	padlock_aes_128_cfb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L143:
	call	padlock_aes_128_ofb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L133:
	call	padlock_aes_128_ctr
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L141:
	call	padlock_aes_192_ecb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L140:
	call	padlock_aes_192_cbc
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L138:
	call	padlock_aes_192_cfb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L139:
	call	padlock_aes_192_ofb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L132:
	call	padlock_aes_192_ctr
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L137:
	call	padlock_aes_256_ecb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L136:
	call	padlock_aes_256_cbc
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L134:
	call	padlock_aes_256_cfb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L135:
	call	padlock_aes_256_ofb
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L130:
	call	padlock_aes_256_ctr
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L146
.L131:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L129
.L146:
	movl	$1, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	padlock_ciphers, .-padlock_ciphers
	.type	padlock_aes_init_key, @function
padlock_aes_init_key:
.LFB498:
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
	call	EVP_CIPHER_CTX_get_key_length@PLT
	sall	$3, %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L148
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	andl	$15, %eax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	addq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$276, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$4, -32(%rbp)
	je	.L150
	cmpq	$5, -32(%rbp)
	jne	.L151
.L150:
	movq	-40(%rbp), %rax
	movzbl	17(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 17(%rax)
	jmp	.L152
.L151:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	sete	%dl
	movq	-40(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	17(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 17(%rax)
.L152:
	movl	-20(%rbp), %eax
	addl	$-128, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	addl	$10, %eax
	sall	$4, %eax
	sarb	$4, %al
	movq	-40(%rbp), %rdx
	andl	$15, %eax
	movl	%eax, %ecx
	movzbl	16(%rdx), %eax
	andl	$-16, %eax
	orl	%ecx, %eax
	movb	%al, 16(%rdx)
	movl	-20(%rbp), %eax
	addl	$-128, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	sall	$6, %eax
	sarb	$6, %al
	movq	-40(%rbp), %rdx
	andl	$3, %eax
	leal	0(,%rax,4), %ecx
	movzbl	17(%rdx), %eax
	andl	$-13, %eax
	orl	%ecx, %eax
	movb	%al, 17(%rdx)
	cmpl	$256, -20(%rbp)
	je	.L153
	cmpl	$256, -20(%rbp)
	jg	.L154
	cmpl	$128, -20(%rbp)
	je	.L155
	cmpl	$192, -20(%rbp)
	je	.L153
	jmp	.L154
.L155:
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %edx
	andl	$127, %edx
	movb	%dl, 16(%rax)
	jmp	.L156
.L153:
	cmpq	$1, -32(%rbp)
	je	.L157
	cmpq	$2, -32(%rbp)
	jne	.L158
.L157:
	cmpl	$0, -76(%rbp)
	jne	.L158
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	jmp	.L159
.L158:
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
.L159:
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	padlock_key_bswap@PLT
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 16(%rax)
	jmp	.L156
.L154:
	movl	$0, %eax
	jmp	.L149
.L156:
	call	padlock_reload_key@PLT
	movl	$1, %eax
.L149:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	padlock_aes_init_key, .-padlock_aes_init_key
	.type	padlock_rand_bytes, @function
padlock_rand_bytes:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	jmp	.L161
.L167:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	padlock_xstore@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L162
	movl	$0, %eax
	jmp	.L174
.L162:
	movl	-4(%rbp), %eax
	andl	$31744, %eax
	testl	%eax, %eax
	je	.L164
	movl	$0, %eax
	jmp	.L174
.L164:
	movl	-4(%rbp), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L165
	jmp	.L161
.L165:
	movl	-4(%rbp), %eax
	andl	$31, %eax
	cmpl	$8, %eax
	je	.L166
	movl	$0, %eax
	jmp	.L174
.L166:
	addq	$8, -24(%rbp)
	subl	$8, -28(%rbp)
.L161:
	cmpl	$7, -28(%rbp)
	jg	.L167
	jmp	.L168
.L173:
	leaq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	padlock_xstore@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L174
.L169:
	movl	-4(%rbp), %eax
	andl	$31744, %eax
	testl	%eax, %eax
	je	.L170
	movl	$0, %eax
	jmp	.L174
.L170:
	movl	-4(%rbp), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L171
	jmp	.L168
.L171:
	movl	-4(%rbp), %eax
	andl	$31, %eax
	cmpl	$1, %eax
	je	.L172
	movl	$0, %eax
	jmp	.L174
.L172:
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	subl	$1, -28(%rbp)
.L168:
	cmpl	$0, -28(%rbp)
	jg	.L173
	leaq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	padlock_rand_bytes, .-padlock_rand_bytes
	.type	padlock_rand_status, @function
padlock_rand_status:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	padlock_rand_status, .-padlock_rand_status
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

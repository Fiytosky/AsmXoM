	.file	"rsa_enc.c"
	.text
	.type	constant_time_msb, @function
constant_time_msb:
.LFB358:
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
.LFE358:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_msb_s, @function
constant_time_msb_s:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	constant_time_msb_s, .-constant_time_msb_s
	.type	value_barrier, @function
value_barrier:
.LFB385:
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
.LFE385:
	.size	value_barrier, .-value_barrier
	.type	value_barrier_s, @function
value_barrier_s:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	value_barrier_s, .-value_barrier_s
	.type	constant_time_select, @function
constant_time_select:
.LFB390:
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
.LFE390:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_s, @function
constant_time_select_s:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_s
	andq	-24(%rbp), %rax
	movq	%rax, %rbx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	call	value_barrier_s
	andq	-32(%rbp), %rax
	orq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	constant_time_select_s, .-constant_time_select_s
	.type	constant_time_select_int, @function
constant_time_select_int:
.LFB393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	constant_time_select_int, .-constant_time_select_int
	.section	.rodata
.LC0:
	.string	"pkcs1"
.LC1:
	.string	"none"
.LC2:
	.string	"oaep"
.LC3:
	.string	"oeap"
.LC4:
	.string	"x931"
	.section	.data.rel.local,"aw"
	.align 32
	.type	padding_item, @object
	.size	padding_item, 96
padding_item:
	.long	1
	.zero	4
	.quad	.LC0
	.long	3
	.zero	4
	.quad	.LC1
	.long	4
	.zero	4
	.quad	.LC2
	.long	4
	.zero	4
	.quad	.LC3
	.long	5
	.zero	4
	.quad	.LC4
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
.LC5:
	.string	"../providers/implementations/asymciphers/rsa_enc.c"
	.text
	.type	rsa_newctx, @function
rsa_newctx:
.LFB401:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	leaq	.LC5(%rip), %rax
	movl	$88, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	rsa_newctx, .-rsa_newctx
	.type	rsa_init, @function
rsa_init:
.LFB402:
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
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L20
	cmpq	$0, -8(%rbp)
	je	.L20
	cmpq	$0, -32(%rbp)
	jne	.L21
.L20:
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_key@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L22
.L24:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 64(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	nop
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsa_set_ctx_params
	jmp	.L22
.L25:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	rsa_init, .-rsa_init
	.type	rsa_encrypt_init, @function
rsa_encrypt_init:
.LFB403:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$512, %ecx
	movq	%rax, %rdi
	call	rsa_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	rsa_encrypt_init, .-rsa_encrypt_init
	.type	rsa_decrypt_init, @function
rsa_decrypt_init:
.LFB404:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1024, %ecx
	movq	%rax, %rdi
	call	rsa_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	rsa_decrypt_init, .-rsa_decrypt_init
	.section	.rodata
.LC6:
	.string	"SHA-1"
	.text
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	cmpq	$0, -24(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L34:
	cmpq	$0, -64(%rbp)
	jne	.L35
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L33
.L35:
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L36
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L36:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$4, %eax
	jne	.L37
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	.LC5(%rip), %rcx
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L33
.L38:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L39:
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rax
	movq	40(%rax), %r9
	movq	-96(%rbp), %rax
	movl	%eax, %r11d
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rsi
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%r10
	movl	%r11d, %r8d
	movq	%rax, %rdi
	call	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex@PLT
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L40
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$186, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L33
.L40:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edi
	call	RSA_public_encrypt@PLT
	movl	%eax, -4(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$191, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L41
.L37:
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_public_encrypt@PLT
	movl	%eax, -4(%rbp)
.L41:
	cmpl	$0, -4(%rbp)
	jns	.L42
	movl	-4(%rbp), %eax
	jmp	.L33
.L42:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	rsa_encrypt, .-rsa_encrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	movq	%rax, -40(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$7, %eax
	jne	.L46
	cmpq	$0, -64(%rbp)
	jne	.L47
	movq	-72(%rbp), %rax
	movq	$48, (%rax)
	movl	$1, %eax
	jmp	.L45
.L47:
	cmpq	$47, -80(%rbp)
	ja	.L48
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L46:
	cmpq	$0, -64(%rbp)
	jne	.L49
	cmpq	$0, -40(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$226, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L50:
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L45
.L49:
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L48
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L48:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$4, %eax
	je	.L51
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$7, %eax
	jne	.L52
.L51:
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$243, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L45
.L53:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rsi
	call	RSA_private_decrypt@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	cmpl	%eax, -20(%rbp)
	je	.L54
	leaq	.LC5(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$252, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L54:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$4, %eax
	jne	.L55
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	leaq	.LC5(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L56:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movl	%eax, %r11d
	movq	-80(%rbp), %rax
	movl	%eax, %r10d
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%r8
	movq	%rdi, %r9
	movl	%ebx, %r8d
	movl	%r11d, %ecx
	movl	%r10d, %esi
	movq	%rax, %rdi
	call	RSA_padding_check_PKCS1_OAEP_mgf1@PLT
	addq	$32, %rsp
	movl	%eax, -20(%rbp)
	jmp	.L57
.L55:
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC5(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$275, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L45
.L58:
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %r9d
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	subq	$8, %rsp
	pushq	%r8
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_padding_check_PKCS1_type_2_TLS@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
.L57:
	leaq	.LC5(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$282, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L59
.L52:
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L60
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L60
	movl	$8, -24(%rbp)
	jmp	.L61
.L60:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -24(%rbp)
.L61:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movl	-24(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_private_decrypt@PLT
	movl	%eax, -20(%rbp)
.L59:
	movl	-20(%rbp), %eax
	movslq	%eax, %r12
	movq	-72(%rbp), %rax
	movq	(%rax), %rbx
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	constant_time_msb_s
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_s
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_msb
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
.L45:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	rsa_decrypt, .-rsa_decrypt
	.type	rsa_freectx, @function
rsa_freectx:
.LFB407:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC5(%rip), %rcx
	movl	$304, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC5(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$306, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	rsa_freectx, .-rsa_freectx
	.type	rsa_dupctx, @function
rsa_dupctx:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	leaq	.LC5(%rip), %rax
	movl	$317, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L65
.L66:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rdx
	movq	%rdx, 64(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	testl	%eax, %eax
	jne	.L67
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L65
.L67:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	jne	.L68
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$329, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L65
.L68:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	jne	.L69
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L65
.L69:
	movq	-32(%rbp), %rax
.L65:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	rsa_dupctx, .-rsa_dupctx
	.section	.rodata
.LC7:
	.string	"pad-mode"
.LC8:
	.string	"digest"
.LC9:
	.string	""
.LC10:
	.string	"mgf1-digest"
.LC11:
	.string	"oaep-label"
.LC12:
	.string	"tls-client-version"
.LC13:
	.string	"tls-negotiated-version"
.LC14:
	.string	"implicit-rejection"
	.text
	.type	rsa_get_ctx_params, @function
rsa_get_ctx_params:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	leaq	.LC7(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L73
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L74
	cmpl	$4, %eax
	je	.L75
	jmp	.L96
.L74:
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L72
.L75:
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L78
.L81:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	padding_item(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %eax
	jne	.L79
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+padding_item(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L80
.L79:
	addl	$1, -4(%rbp)
.L78:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	padding_item(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L81
.L80:
	cmpq	$0, -16(%rbp)
	je	.L82
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L72
.L82:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L96:
	movl	$0, %eax
	jmp	.L72
.L97:
	nop
	jmp	.L73
.L98:
	nop
.L73:
	leaq	.LC8(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L84
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	jmp	.L86
.L85:
	leaq	.LC9(%rip), %rax
.L86:
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L72
.L84:
	leaq	.LC10(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L87
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L88
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L89
.L88:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L89:
	cmpq	$0, -24(%rbp)
	je	.L90
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	jmp	.L91
.L90:
	leaq	.LC9(%rip), %rax
.L91:
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L72
.L87:
	leaq	.LC11(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L92
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L72
.L92:
	leaq	.LC12(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L93
	movq	-32(%rbp), %rax
	movl	56(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L72
.L93:
	leaq	.LC13(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L94
	movq	-32(%rbp), %rax
	movl	60(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L72
.L94:
	leaq	.LC14(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L95
	movq	-32(%rbp), %rax
	movl	64(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L72
.L95:
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	rsa_get_ctx_params, .-rsa_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 320
known_gettable_ctx_params:
	.quad	.LC8
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	7
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	rsa_gettable_ctx_params, @function
rsa_gettable_ctx_params:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	rsa_gettable_ctx_params, .-rsa_gettable_ctx_params
	.section	.rodata
.LC15:
	.string	"digest-props"
.LC16:
	.string	"SHA1"
.LC17:
	.string	"mgf1-properties"
	.text
	.type	rsa_set_ctx_params, @function
rsa_set_ctx_params:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -344(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L134
.L102:
	cmpq	$0, -400(%rbp)
	jne	.L104
	movl	$1, %eax
	jmp	.L134
.L104:
	leaq	.LC8(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L105
	leaq	-80(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-344(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L134
.L106:
	leaq	.LC15(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L107
	leaq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-344(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L134
.L107:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-336(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	movl	$0, %eax
	jmp	.L134
.L105:
	leaq	.LC7(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L108
	movl	$0, -348(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L109
	cmpl	$4, %eax
	je	.L110
	jmp	.L135
.L109:
	leaq	-348(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L134
.L110:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movl	$0, %eax
	jmp	.L134
.L115:
	movl	$0, -4(%rbp)
	jmp	.L116
.L119:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+padding_item(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L117
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	padding_item(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -348(%rbp)
	nop
	jmp	.L114
.L117:
	addl	$1, -4(%rbp)
.L116:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	padding_item(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L119
	jmp	.L114
.L135:
	movl	$0, %eax
	jmp	.L134
.L136:
	nop
.L114:
	movl	-348(%rbp), %eax
	cmpl	$6, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L134
.L120:
	movl	-348(%rbp), %eax
	cmpl	$4, %eax
	jne	.L121
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-336(%rbp), %rdx
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movl	$0, %eax
	jmp	.L134
.L121:
	movl	-348(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
.L108:
	leaq	.LC10(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L122
	leaq	-80(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-344(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L134
.L123:
	leaq	.LC17(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L124
	leaq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-344(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, %eax
	jmp	.L134
.L124:
	movq	$0, -344(%rbp)
.L125:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-344(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L122
	movl	$0, %eax
	jmp	.L134
.L122:
	leaq	.LC11(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L126
	movq	$0, -360(%rbp)
	leaq	-368(%rbp), %rdx
	leaq	-360(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L127
	movl	$0, %eax
	jmp	.L134
.L127:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC5(%rip), %rcx
	movl	$544, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-360(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-368(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
.L126:
	leaq	.LC12(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L128
	leaq	-372(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L134
.L129:
	movl	-372(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 56(%rax)
.L128:
	leaq	.LC13(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L130
	leaq	-376(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L134
.L131:
	movl	-376(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 60(%rax)
.L130:
	leaq	.LC14(%rip), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L132
	leaq	-380(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	movl	-380(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 64(%rax)
.L132:
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	rsa_set_ctx_params, .-rsa_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 400
known_settable_ctx_params:
	.quad	.LC8
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC15
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC17
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	rsa_settable_ctx_params, @function
rsa_settable_ctx_params:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	rsa_settable_ctx_params, .-rsa_settable_ctx_params
	.globl	ossl_rsa_asym_cipher_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_asym_cipher_functions, @object
	.size	ossl_rsa_asym_cipher_functions, 192
ossl_rsa_asym_cipher_functions:
	.long	1
	.zero	4
	.quad	rsa_newctx
	.long	2
	.zero	4
	.quad	rsa_encrypt_init
	.long	3
	.zero	4
	.quad	rsa_encrypt
	.long	4
	.zero	4
	.quad	rsa_decrypt_init
	.long	5
	.zero	4
	.quad	rsa_decrypt
	.long	6
	.zero	4
	.quad	rsa_freectx
	.long	7
	.zero	4
	.quad	rsa_dupctx
	.long	8
	.zero	4
	.quad	rsa_get_ctx_params
	.long	9
	.zero	4
	.quad	rsa_gettable_ctx_params
	.long	10
	.zero	4
	.quad	rsa_set_ctx_params
	.long	11
	.zero	4
	.quad	rsa_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 9
__func__.3:
	.string	"rsa_init"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 12
__func__.2:
	.string	"rsa_encrypt"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"rsa_decrypt"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"rsa_get_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

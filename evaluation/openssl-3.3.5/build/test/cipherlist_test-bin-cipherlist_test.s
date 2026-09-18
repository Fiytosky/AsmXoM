	.file	"cipherlist_test.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	ossl_check_SSL_CIPHER_sk_type, @function
ossl_check_SSL_CIPHER_sk_type:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ossl_check_SSL_CIPHER_sk_type, .-ossl_check_SSL_CIPHER_sk_type
	.section	.rodata
.LC0:
	.string	"../test/cipherlist_test.c"
	.text
	.type	tear_down, @function
tear_down:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	tear_down, .-tear_down
	.section	.rodata
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC2:
	.string	"fixture->server = SSL_CTX_new(TLS_server_method())"
	.align 8
.LC3:
	.string	"fixture->client = SSL_CTX_new(TLS_client_method())"
	.text
	.type	set_up, @function
set_up:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$45, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	call	TLS_server_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	call	TLS_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L13
.L15:
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	set_up, .-set_up
	.section	.rodata
	.align 32
	.type	default_ciphers_in_order, @object
	.size	default_ciphers_in_order, 120
default_ciphers_in_order:
	.long	50336514
	.long	50336515
	.long	50336513
	.long	50380844
	.long	50380848
	.long	50331807
	.long	50384041
	.long	50384040
	.long	50384042
	.long	50380843
	.long	50380847
	.long	50331806
	.long	50380836
	.long	50380840
	.long	50331755
	.long	50380835
	.long	50380839
	.long	50331751
	.long	50380810
	.long	50380820
	.long	50331705
	.long	50380809
	.long	50380819
	.long	50331699
	.long	50331805
	.long	50331804
	.long	50331709
	.long	50331708
	.long	50331701
	.long	50331695
.LC4:
	.string	"ssl = SSL_new(ctx)"
	.align 8
.LC5:
	.string	"ciphers = SSL_get1_supported_ciphers(ssl)"
.LC6:
	.string	"num_expected_ciphers"
.LC7:
	.string	"num_ciphers"
.LC8:
	.string	"expected_cipher_id"
.LC9:
	.string	"cipher_id"
.LC10:
	.string	"Wrong cipher at position %d"
	.text
	.type	test_default_cipherlist, @function
test_default_cipherlist:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$158, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_supported_ciphers@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movl	$30, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	$0, -12(%rbp)
	jmp	.L23
.L25:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	default_ciphers_in_order(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L24
	movl	-12(%rbp), %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L21
.L24:
	addl	$1, -12(%rbp)
.L23:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L25
	movl	$1, -16(%rbp)
	jmp	.L21
.L26:
	nop
	jmp	.L21
.L27:
	nop
.L21:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	-16(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_default_cipherlist, .-test_default_cipherlist
	.type	execute_test, @function
execute_test:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	test_default_cipherlist
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	test_default_cipherlist
	testl	%eax, %eax
	je	.L29
	movl	$1, %eax
	jmp	.L31
.L29:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	execute_test, .-execute_test
	.type	test_default_cipherlist_implicit, @function
test_default_cipherlist_implicit:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.3(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	cmpq	$0, -16(%rbp)
	je	.L35
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L35:
	movl	-4(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	test_default_cipherlist_implicit, .-test_default_cipherlist_implicit
	.section	.rodata
.LC11:
	.string	"DEFAULT"
	.align 8
.LC12:
	.string	"SSL_CTX_set_cipher_list(fixture->server, \"DEFAULT\")"
	.align 8
.LC13:
	.string	"SSL_CTX_set_cipher_list(fixture->client, \"DEFAULT\")"
	.text
	.type	test_default_cipherlist_explicit, @function
test_default_cipherlist_explicit:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L40:
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L41:
	movl	-12(%rbp), %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_default_cipherlist_explicit, .-test_default_cipherlist_explicit
	.section	.rodata
.LC14:
	.string	"no-such"
.LC15:
	.string	"0"
	.align 8
.LC16:
	.string	"SSL_CTX_set_cipher_list(fixture->server, \"no-such\")"
.LC17:
	.string	"SSL_R_NO_CIPHER_MATCH"
	.align 8
.LC18:
	.string	"ERR_GET_REASON(ERR_get_error())"
.LC19:
	.string	"s"
	.align 8
.LC20:
	.string	"SSL_set_cipher_list(s, \"no-such\")"
	.text
	.type	test_default_cipherlist_clear, @function
test_default_cipherlist_clear:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L51
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$185, %r9d
	movl	%esi, %r8d
	movl	$225, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L52
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$230, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	leaq	.LC14(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$233, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$185, %r9d
	movl	%esi, %r8d
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	$1, -12(%rbp)
	jmp	.L46
.L51:
	nop
	jmp	.L46
.L52:
	nop
	jmp	.L46
.L53:
	nop
	jmp	.L46
.L54:
	nop
	jmp	.L46
.L55:
	nop
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	-12(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	test_default_cipherlist_clear, .-test_default_cipherlist_clear
	.section	.rodata
.LC21:
	.string	"TLS_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC22:
	.string	"SSL_CTX_set_cipher_list(fixture->server, TLS1_RFC_RSA_WITH_AES_128_SHA)"
	.align 8
.LC23:
	.string	"SSL_CTX_set_cipher_list(fixture->client, TLS1_RFC_RSA_WITH_AES_128_SHA)"
	.text
	.type	test_stdname_cipherlist, @function
test_stdname_cipherlist:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$252, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movl	$1, -4(%rbp)
	jmp	.L61
.L62:
	nop
.L61:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -16(%rbp)
	movl	-4(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_stdname_cipherlist, .-test_stdname_cipherlist
	.section	.rodata
	.align 8
.LC24:
	.string	"test_default_cipherlist_implicit"
	.align 8
.LC25:
	.string	"test_default_cipherlist_explicit"
.LC26:
	.string	"test_default_cipherlist_clear"
.LC27:
	.string	"test_stdname_cipherlist"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_default_cipherlist_implicit(%rip), %rdx
	leaq	.LC24(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_default_cipherlist_explicit(%rip), %rdx
	leaq	.LC25(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_default_cipherlist_clear(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_stdname_cipherlist(%rip), %rdx
	leaq	.LC27(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 33
__func__.3:
	.string	"test_default_cipherlist_implicit"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 33
__func__.2:
	.string	"test_default_cipherlist_explicit"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 30
__func__.1:
	.string	"test_default_cipherlist_clear"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"test_stdname_cipherlist"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

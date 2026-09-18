	.file	"cipherbytes_test.c"
	.text
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
	.local	ctx
	.comm	ctx,8,8
	.local	s
	.comm	s,8,8
	.section	.rodata
.LC0:
	.string	"0"
	.align 8
.LC1:
	.string	"SSL_bytes_to_cipher_list(s, bytes, 0, 0, &sk, &scsv)"
.LC2:
	.string	"../test/cipherbytes_test.c"
.LC3:
	.string	"sk"
.LC4:
	.string	"scsv"
	.text
	.type	test_empty, @function
test_empty:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movb	$0, -25(%rbp)
	movl	$0, -4(%rbp)
	movq	s(%rip), %rax
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-25(%rbp), %rsi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	SSL_bytes_to_cipher_list@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$33, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$34, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, -4(%rbp)
	jmp	.L8
.L10:
	nop
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_empty, .-test_empty
	.section	.rodata
	.align 8
.LC5:
	.string	"SSL_bytes_to_cipher_list(s, bytes, sizeof(bytes), 0, &sk, &scsv)"
.LC6:
	.string	"1"
.LC7:
	.string	"sk_SSL_CIPHER_num(sk)"
.LC8:
	.string	"sk_SSL_CIPHER_num(scsv)"
.LC9:
	.string	"AES128-SHA"
.LC10:
	.string	"\"AES128-SHA\""
	.align 8
.LC11:
	.string	"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(sk, 0))"
	.text
	.type	test_unsupported, @function
test_unsupported:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$788533184, -30(%rbp)
	movw	$1, -26(%rbp)
	movl	$0, -4(%rbp)
	movq	s(%rip), %rax
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-30(%rbp), %rsi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	SSL_bytes_to_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$52, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$54, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L16
	movl	$1, -4(%rbp)
	jmp	.L14
.L16:
	nop
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_unsupported, .-test_unsupported
	.section	.rodata
	.align 8
.LC12:
	.string	"SSL_bytes_to_cipher_list(s, bytes, sizeof(bytes), 1, &sk, &scsv)"
.LC13:
	.string	"2"
.LC14:
	.string	"AES256-SHA"
.LC15:
	.string	"DHE-RSA-AES128-SHA"
	.text
	.type	test_v2, @function
test_v2:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movabsq	$140737508605952, %rax
	movq	%rax, -33(%rbp)
	movb	$51, -25(%rbp)
	movl	$0, -4(%rbp)
	movq	s(%rip), %rax
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-33(%rbp), %rsi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	SSL_bytes_to_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$1, -4(%rbp)
	jmp	.L20
.L24:
	nop
	jmp	.L20
.L25:
	nop
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_v2, .-test_v2
	.section	.rodata
.LC16:
	.string	"3"
.LC17:
	.string	"\"DHE-RSA-AES128-SHA\""
	.align 8
.LC18:
	.string	"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(sk, 1))"
.LC19:
	.string	"DHE-RSA-AES256-GCM-SHA384"
.LC20:
	.string	"\"DHE-RSA-AES256-GCM-SHA384\""
	.align 8
.LC21:
	.string	"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(sk, 2))"
	.align 8
.LC22:
	.string	"TLS_EMPTY_RENEGOTIATION_INFO_SCSV"
	.align 8
.LC23:
	.string	"\"TLS_EMPTY_RENEGOTIATION_INFO_SCSV\""
	.align 8
.LC24:
	.string	"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(scsv, 0))"
.LC25:
	.string	"TLS_FALLBACK_SCSV"
.LC26:
	.string	"\"TLS_FALLBACK_SCSV\""
	.align 8
.LC27:
	.string	"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(scsv, 1))"
	.text
	.type	test_v3, @function
test_v3:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$-71882770833461504, %rax
	movq	%rax, -34(%rbp)
	movw	$86, -26(%rbp)
	movl	$0, -4(%rbp)
	movq	s(%rip), %rax
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-34(%rbp), %rsi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	SSL_bytes_to_cipher_list@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$115, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$2, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rdi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rdi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	$1, -4(%rbp)
	jmp	.L29
.L31:
	nop
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	test_v3, .-test_v3
	.section	.rodata
	.align 8
.LC28:
	.string	"ctx = SSL_CTX_new(TLS_server_method())"
.LC29:
	.string	"s = SSL_new(ctx)"
.LC30:
	.string	"test_empty"
.LC31:
	.string	"test_unsupported"
.LC32:
	.string	"test_v2"
.LC33:
	.string	"test_v3"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TLS_server_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, ctx(%rip)
	movq	ctx(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$134, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, s(%rip)
	movq	s(%rip), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$135, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L35
.L34:
	leaq	test_empty(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unsupported(%rip), %rdx
	leaq	.LC31(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_v2(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_v3(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	s(%rip), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

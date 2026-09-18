	.file	"dtls_mtu_test.c"
	.text
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB468:
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
.LFE468:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB625:
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
.LFE625:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB626:
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
.LFE626:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB641:
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
.LFE641:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB642:
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
.LFE642:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB718:
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
.LFE718:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB719:
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
.LFE719:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	debug
	.comm	debug,4,4
	.section	.rodata
.LC0:
	.string	"psk"
	.text
	.type	clnt_psk_callback, @function
clnt_psk_callback:
.LFB754:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-28(%rbp), %ecx
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	cmpl	$20, -32(%rbp)
	jbe	.L16
	movl	$20, -32(%rbp)
.L16:
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	clnt_psk_callback, .-clnt_psk_callback
	.type	srvr_psk_callback, @function
srvr_psk_callback:
.LFB755:
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
	cmpl	$20, -28(%rbp)
	jbe	.L19
	movl	$20, -28(%rbp)
.L19:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	srvr_psk_callback, .-srvr_psk_callback
	.section	.rodata
	.align 8
.LC1:
	.string	"create_ssl_objects(ctx, ctx, &srvr_ssl, &clnt_ssl, NULL, NULL)"
.LC2:
	.string	"../test/dtls_mtu_test.c"
	.align 8
.LC3:
	.string	"SSL_set_cipher_list(srvr_ssl, cs)"
	.align 8
.LC4:
	.string	"SSL_set_cipher_list(clnt_ssl, cs)"
	.align 8
.LC5:
	.string	"sc_bio = SSL_get_rbio(srvr_ssl)"
	.align 8
.LC6:
	.string	"create_ssl_connection(clnt_ssl, srvr_ssl, SSL_ERROR_NONE)"
.LC7:
	.string	"Channel established"
.LC8:
	.string	"-noEtM"
.LC9:
	.string	""
	.align 8
.LC10:
	.string	"%s%s MTU for record mtu %d = %lu"
.LC11:
	.string	"0"
.LC12:
	.string	"mtus[i]"
.LC13:
	.string	"Cipher %s MTU %d"
.LC14:
	.string	"(int)s"
.LC15:
	.string	"SSL_write(clnt_ssl, buf, s)"
.LC16:
	.string	"record %zu for payload %zu"
	.align 8
.LC17:
	.string	"s <= mtus[i] && reclen > (size_t)(500 + i)"
	.align 8
.LC18:
	.string	"%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d"
	.align 8
.LC19:
	.string	"s > mtus[i] && reclen <= (size_t)(500 + i)"
	.align 8
.LC20:
	.string	"clnt_sc = SSL_CONNECTION_FROM_SSL_ONLY(clnt_ssl)"
	.text
	.type	mtu_test, @function
mtu_test:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$952, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -936(%rbp)
	movq	%rsi, -944(%rbp)
	movl	%edx, -948(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -36(%rbp)
	leaq	-928(%rbp), %rax
	movl	$600, %edx
	movl	$90, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-936(%rbp), %rsi
	movq	-936(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	cmpl	$0, -948(%rbp)
	je	.L24
	movq	-72(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
.L24:
	movq	-72(%rbp), %rax
	movq	-944(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movq	-80(%rbp), %rax
	movq	-944(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$71, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L27
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L27:
	movl	$0, -20(%rbp)
	jmp	.L28
.L33:
	movl	-20(%rbp), %eax
	addl	$500, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$17, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	DTLS_get_data_mtu@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -320(%rbp,%rdx,8)
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L29
	movl	-20(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rcx
	movl	-20(%rbp), %eax
	leal	500(%rax), %r8d
	cmpl	$0, -948(%rbp)
	je	.L30
	leaq	.LC8(%rip), %rax
	jmp	.L31
.L30:
	leaq	.LC9(%rip), %rax
.L31:
	movq	-944(%rbp), %rdx
	leaq	.LC10(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$85, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
.L29:
	movl	-20(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	jne	.L32
	movl	-20(%rbp), %eax
	leal	500(%rax), %ecx
	movq	-944(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$89, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L23
.L32:
	addl	$1, -20(%rbp)
.L28:
	cmpl	$29, -20(%rbp)
	jle	.L33
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$1000, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-320(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L34
.L45:
	movq	-32(%rbp), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	leaq	-928(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L53
	leaq	-928(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$600, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cltq
	movq	%rax, -64(%rbp)
	movl	debug(%rip), %eax
	testl	%eax, %eax
	je	.L36
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$108, %esi
	movl	$0, %eax
	call	test_info@PLT
.L36:
	movl	$0, -20(%rbp)
	jmp	.L37
.L44:
	movl	-20(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	jb	.L38
	movl	-20(%rbp), %eax
	addl	$500, %eax
	cltq
	cmpq	-64(%rbp), %rax
	jnb	.L38
	movl	$1, %ecx
	jmp	.L39
.L38:
	movl	$0, %ecx
.L39:
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L40
	movl	-20(%rbp), %eax
	leal	500(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %r8
	movq	-32(%rbp), %rsi
	movq	-944(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rcx
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$0, %eax
	call	test_error@PLT
	addq	$16, %rsp
	jmp	.L23
.L40:
	movl	-20(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L41
	movl	-20(%rbp), %eax
	addl	$500, %eax
	cltq
	cmpq	-64(%rbp), %rax
	jb	.L41
	movl	$1, %ecx
	jmp	.L42
.L41:
	movl	$0, %ecx
.L42:
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L43
	movl	-20(%rbp), %eax
	leal	500(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	movq	-320(%rbp,%rax,8), %r8
	movq	-32(%rbp), %rsi
	movq	-944(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rcx
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$129, %esi
	movl	$0, %eax
	call	test_error@PLT
	addq	$16, %rsp
	jmp	.L23
.L43:
	addl	$1, -20(%rbp)
.L37:
	cmpl	$29, -20(%rbp)
	jle	.L44
	addq	$1, -32(%rbp)
.L34:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L45
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L46
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L47
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L48
.L47:
	movq	$0, -48(%rbp)
	jmp	.L48
.L46:
	movq	$0, -48(%rbp)
.L48:
	movq	-48(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$136, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	288(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L55
	movl	$2, -36(%rbp)
	jmp	.L23
.L51:
	nop
	jmp	.L23
.L52:
	nop
	jmp	.L23
.L53:
	nop
	jmp	.L23
.L54:
	nop
	jmp	.L23
.L55:
	nop
.L23:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	mtu_test, .-mtu_test
	.section	.rodata
	.align 8
.LC21:
	.string	"ctx = SSL_CTX_new(DTLS_method())"
.LC22:
	.string	"PSK"
	.align 8
.LC23:
	.string	"SSL_CTX_set_cipher_list(ctx, \"PSK\")"
.LC24:
	.string	"PSK-"
	.align 8
.LC25:
	.string	"ret = mtu_test(ctx, cipher_name, 0)"
.LC26:
	.string	"%s OK"
	.align 8
.LC27:
	.string	"ret = mtu_test(ctx, cipher_name, 1)"
.LC28:
	.string	"%s without EtM OK"
	.text
	.type	run_mtu_tests, @function
run_mtu_tests:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	call	DTLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$153, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L68
	leaq	srvr_psk_callback(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_server_callback@PLT
	leaq	clnt_psk_callback(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_client_callback@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_security_level@PLT
	leaq	.LC22(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_ciphers@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L60
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC24(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L70
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mtu_test
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L71
	movq	-40(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$179, %esi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$1, -8(%rbp)
	je	.L72
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mtu_test
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$184, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L73
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$186, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L62
.L70:
	nop
	jmp	.L62
.L72:
	nop
.L62:
	addl	$1, -4(%rbp)
.L60:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L66
	jmp	.L58
.L68:
	nop
	jmp	.L58
.L69:
	nop
	jmp	.L58
.L71:
	nop
	jmp	.L58
.L73:
	nop
.L58:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	run_mtu_tests, .-run_mtu_tests
	.section	.rodata
.LC29:
	.string	"SSL_CTX_set_dh_auto(ctx, 1)"
	.align 8
.LC30:
	.string	"DTLS_set_link_mtu(srvr_ssl, 1500)"
	.align 8
.LC31:
	.string	"create_ssl_connection(srvr_ssl, clnt_ssl, SSL_ERROR_NONE)"
	.text
	.type	test_server_mtu_larger_than_max_fragment_length, @function
test_server_mtu_larger_than_max_fragment_length:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	call	DTLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$200, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L82
	leaq	srvr_psk_callback(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_server_callback@PLT
	leaq	clnt_psk_callback(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_client_callback@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$1500, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$216, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L85
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_tlsext_max_fragment_length@PLT
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	movl	$1, -4(%rbp)
	jmp	.L76
.L82:
	nop
	jmp	.L76
.L83:
	nop
	jmp	.L76
.L84:
	nop
	jmp	.L76
.L85:
	nop
	jmp	.L76
.L86:
	nop
.L76:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	test_server_mtu_larger_than_max_fragment_length, .-test_server_mtu_larger_than_max_fragment_length
	.section	.rodata
.LC32:
	.string	"run_mtu_tests"
	.align 8
.LC33:
	.string	"test_server_mtu_larger_than_max_fragment_length"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	run_mtu_tests(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_server_mtu_larger_than_max_fragment_length(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	bio_s_mempacket_test_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

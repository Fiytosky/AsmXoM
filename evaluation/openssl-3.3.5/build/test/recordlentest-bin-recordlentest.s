	.file	"recordlentest.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB508:
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
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB510:
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
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.type	write_record, @function
write_record:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movl	%edx, %eax
	movl	%ecx, -312(%rbp)
	movb	%al, -308(%rbp)
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movzbl	-308(%rbp), %eax
	movb	%al, -13(%rbp)
	movl	-312(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -12(%rbp)
	movl	-312(%rbp), %eax
	movb	%al, -11(%rbp)
	movq	-304(%rbp), %rax
	shrq	$8, %rax
	movb	%al, -10(%rbp)
	movq	-304(%rbp), %rax
	movb	%al, -9(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-13(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rax
	cmpq	$5, %rax
	je	.L11
.L8:
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpq	$256, -304(%rbp)
	jbe	.L12
	movq	$256, -8(%rbp)
	jmp	.L13
.L12:
	movq	-304(%rbp), %rax
	movq	%rax, -8(%rbp)
.L13:
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	je	.L14
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L15
.L14:
	movl	$0, %eax
	jmp	.L17
.L15:
	movq	-8(%rbp), %rax
	subq	%rax, -304(%rbp)
.L11:
	cmpq	$0, -304(%rbp)
	jne	.L16
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	write_record, .-write_record
	.type	fail_due_to_record_overflow, @function
fail_due_to_record_overflow:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	ERR_peek_error@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L19
	movl	$150, -4(%rbp)
	jmp	.L20
.L19:
	movl	$146, -4(%rbp)
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$20, %eax
	jne	.L21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	%eax, -4(%rbp)
	jne	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	fail_due_to_record_overflow, .-fail_due_to_record_overflow
	.section	.rodata
	.align 8
.LC0:
	.string	"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)"
.LC1:
	.string	"../test/recordlentest.c"
	.align 8
.LC2:
	.string	"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)"
	.align 8
.LC3:
	.string	"write_record(serverbio, len, SSL3_RT_HANDSHAKE, TLS1_VERSION)"
.LC4:
	.string	"0"
.LC5:
	.string	"SSL_accept(serverssl)"
.LC6:
	.string	"overf_expected"
	.align 8
.LC7:
	.string	"fail_due_to_record_overflow(0)"
	.align 8
.LC8:
	.string	"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)"
	.align 8
.LC9:
	.string	"write_record(serverbio, len, SSL3_RT_APPLICATION_DATA, recversion)"
	.align 8
.LC10:
	.string	"SSL_read_ex(serverssl, &buf, sizeof(buf), &written)"
	.align 8
.LC11:
	.string	"fail_due_to_record_overflow(1)"
	.text
	.type	test_record_overflow, @function
test_record_overflow:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -132(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	TLS_client_method@PLT
	movq	%rax, %r13
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-88(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-80(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$769, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	cmpl	$4, -132(%rbp)
	je	.L26
	cmpl	$5, -132(%rbp)
	jne	.L27
.L26:
	movq	$17728, -48(%rbp)
	subq	$1024, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$771, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	jmp	.L28
.L27:
	cmpl	$2, -132(%rbp)
	je	.L29
	cmpl	$3, -132(%rbp)
	jne	.L28
.L29:
	movq	$16640, -48(%rbp)
.L28:
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -64(%rbp)
	cmpl	$0, -132(%rbp)
	je	.L31
	cmpl	$1, -132(%rbp)
	jne	.L32
.L31:
	movq	$16384, -48(%rbp)
	cmpl	$1, -132(%rbp)
	jne	.L33
	addq	$1, -48(%rbp)
.L33:
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$769, %ecx
	movl	$22, %edx
	movq	%rax, %rdi
	call	write_record
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$135, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L48
	cmpl	$0, -132(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	$0, %edi
	call	fail_due_to_record_overflow
	movl	%eax, %esi
	movl	-52(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$143, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L49
	jmp	.L25
.L32:
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$149, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	cmpl	$5, -132(%rbp)
	je	.L39
	cmpl	$3, -132(%rbp)
	jne	.L40
.L39:
	movl	$1, -52(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L41
.L40:
	movl	$0, -52(%rbp)
.L41:
	movl	$771, -68(%rbp)
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movl	$23, %edx
	movq	%rax, %rdi
	call	write_record
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-104(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	-113(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L52
	movl	$1, %edi
	call	fail_due_to_record_overflow
	movl	%eax, %esi
	movl	-52(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L53
	jmp	.L37
.L49:
	nop
.L37:
	movl	$1, -36(%rbp)
	jmp	.L25
.L45:
	nop
	jmp	.L25
.L46:
	nop
	jmp	.L25
.L47:
	nop
	jmp	.L25
.L48:
	nop
	jmp	.L25
.L50:
	nop
	jmp	.L25
.L51:
	nop
	jmp	.L25
.L52:
	nop
	jmp	.L25
.L53:
	nop
.L25:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_record_overflow, .-test_record_overflow
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC12:
	.string	"Error parsing test options\n"
.LC13:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC14:
	.string	"privkey = test_get_argument(1)"
.LC15:
	.string	"test_record_overflow"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L57
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L58
.L57:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L58
.L60:
	leaq	test_record_overflow(%rip), %rsi
	leaq	.LC15(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB529:
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
.LFE529:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC17:
	.string	"Valid options are:\n"
.LC18:
	.string	"help"
.LC19:
	.string	"Display this summary"
.LC20:
	.string	"list"
	.align 8
.LC21:
	.string	"Display the list of tests available"
.LC22:
	.string	"test"
	.align 8
.LC23:
	.string	"Run a single test by id or name"
.LC24:
	.string	"iter"
	.align 8
.LC25:
	.string	"Run a single iteration of a test"
.LC26:
	.string	"indent"
	.align 8
.LC27:
	.string	"Number of tabs added to output"
.LC28:
	.string	"seed"
	.align 8
.LC29:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC16
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	500
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	501
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	502
	.long	115
	.quad	.LC23
	.quad	.LC24
	.long	503
	.long	110
	.quad	.LC25
	.quad	.LC26
	.long	504
	.long	112
	.quad	.LC27
	.quad	.LC28
	.long	505
	.long	110
	.quad	.LC29
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

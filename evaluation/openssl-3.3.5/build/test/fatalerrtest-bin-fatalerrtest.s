	.file	"fatalerrtest.c"
	.text
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.section	.rodata
.LC0:
	.string	"Dummy"
	.align 8
.LC1:
	.string	"create_ssl_ctx_pair(NULL, TLS_method(), TLS_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)"
.LC2:
	.string	"../test/fatalerrtest.c"
.LC3:
	.string	"AES128-SHA"
	.align 8
.LC4:
	.string	"SSL_CTX_set_cipher_list(sctx, \"AES128-SHA\")"
.LC5:
	.string	"AES256-SHA"
	.align 8
.LC6:
	.string	"SSL_CTX_set_cipher_list(cctx, \"AES256-SHA\")"
.LC7:
	.string	"TLS_AES_128_GCM_SHA256"
	.align 8
.LC8:
	.string	"SSL_CTX_set_ciphersuites(sctx, \"TLS_AES_128_GCM_SHA256\")"
.LC9:
	.string	"TLS_AES_256_GCM_SHA384"
	.align 8
.LC10:
	.string	"SSL_CTX_set_ciphersuites(cctx, \"TLS_AES_256_GCM_SHA384\")"
	.align 8
.LC11:
	.string	"create_ssl_objects(sctx, cctx, &sssl, &cssl, NULL, NULL)"
.LC12:
	.string	"wbio"
.LC13:
	.string	"Unexpected NULL bio received"
	.align 8
.LC14:
	.string	"create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)"
.LC15:
	.string	"0"
	.align 8
.LC16:
	.string	"BIO_write(wbio, dummyrec, sizeof(dummyrec))"
	.align 8
.LC17:
	.string	"len = SSL_read(sssl, buf, sizeof(buf) - 1)"
	.align 8
.LC18:
	.string	"Unexpected success reading data: %s\n"
	.align 8
.LC19:
	.string	"SSL_write(sssl, msg, strlen(msg))"
	.text
	.type	test_fatalerr, @function
test_fatalerr:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -36(%rbp)
	movabsq	$7887285110675014423, %rax
	movq	%rax, -186(%rbp)
	movw	$31085, -178(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	TLS_method@PLT
	movq	%rax, %r13
	call	TLS_method@PLT
	movq	%rax, %rsi
	leaq	-72(%rbp), %rdx
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
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$31, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L12
	movq	-72(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$40, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$41, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-72(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-80(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$44, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	-96(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$46, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L3
.L6:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L14
	call	ERR_clear_error@PLT
	leaq	-186(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L15
	movq	-88(%rbp), %rax
	leaq	-176(%rbp), %rcx
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L9
	movl	-60(%rbp), %eax
	cltq
	movb	$0, -176(%rbp,%rax)
	leaq	-176(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$69, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L9:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L16
	movl	$1, -36(%rbp)
	jmp	.L3
.L12:
	nop
	jmp	.L3
.L13:
	nop
	jmp	.L3
.L14:
	nop
	jmp	.L3
.L15:
	nop
	jmp	.L3
.L16:
	nop
.L3:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-72(%rbp), %rax
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
.LFE524:
	.size	test_fatalerr, .-test_fatalerr
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB525:
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
.LFE525:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC20:
	.string	"Error parsing test options\n"
.LC21:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC22:
	.string	"privkey = test_get_argument(1)"
.LC23:
	.string	"test_fatalerr"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L20
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L21
.L20:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$94, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$95, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L21
.L23:
	leaq	test_fatalerr(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC24:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC25:
	.string	"Valid options are:\n"
.LC26:
	.string	"help"
.LC27:
	.string	"Display this summary"
.LC28:
	.string	"list"
	.align 8
.LC29:
	.string	"Display the list of tests available"
.LC30:
	.string	"test"
	.align 8
.LC31:
	.string	"Run a single test by id or name"
.LC32:
	.string	"iter"
	.align 8
.LC33:
	.string	"Run a single iteration of a test"
.LC34:
	.string	"indent"
	.align 8
.LC35:
	.string	"Number of tabs added to output"
.LC36:
	.string	"seed"
	.align 8
.LC37:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC24
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	500
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	501
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	502
	.long	115
	.quad	.LC31
	.quad	.LC32
	.long	503
	.long	110
	.quad	.LC33
	.quad	.LC34
	.long	504
	.long	112
	.quad	.LC35
	.quad	.LC36
	.long	505
	.long	110
	.quad	.LC37
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

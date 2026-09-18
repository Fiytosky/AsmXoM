	.file	"sslbuffertest.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB606:
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
.LFE606:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB607:
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
.LFE607:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB622:
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
.LFE622:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB623:
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
.LFE623:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB699:
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
.LFE699:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB700:
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
.LFE700:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	serverctx
	.comm	serverctx,8,8
	.local	clientctx
	.comm	clientctx,8,8
	.type	checkbuffers, @function
checkbuffers:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L14
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L15
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L16
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L17
.L16:
	movq	$0, -8(%rbp)
	jmp	.L17
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L17
.L14:
	movq	$0, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L18
	movq	-16(%rbp), %rax
	movq	1696(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movl	$1, %eax
	jmp	.L21
.L19:
	movl	$0, %eax
	jmp	.L21
.L18:
	movq	-16(%rbp), %rax
	movq	1696(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movl	$1, %eax
	jmp	.L21
.L22:
	movl	$0, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	checkbuffers, .-checkbuffers
	.section	.rodata
	.align 8
.LC0:
	.string	"create_ssl_objects(serverctx, clientctx, &serverssl, &clientssl, NULL, NULL)"
.LC1:
	.string	"../test/sslbuffertest.c"
	.align 8
.LC2:
	.string	"Test %d failed: Create SSL objects failed\n"
	.align 8
.LC3:
	.string	"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)"
	.align 8
.LC4:
	.string	"Test %d failed: Create SSL connection failed\n"
.LC5:
	.string	"SSL_free_buffers(clientssl)"
.LC6:
	.string	"checkbuffers(clientssl, 0)"
.LC7:
	.string	"SSL_alloc_buffers(clientssl)"
.LC8:
	.string	"checkbuffers(clientssl, 1)"
	.align 8
.LC9:
	.string	"Test %d failed: Failed to write app data\n"
.LC10:
	.string	"sizeof(testdata)"
.LC11:
	.string	"len"
.LC12:
	.string	"SSL_free_buffers(serverssl)"
.LC13:
	.string	"checkbuffers(serverssl, 0)"
.LC14:
	.string	"SSL_alloc_buffers(serverssl)"
.LC15:
	.string	"checkbuffers(serverssl, 1)"
	.align 8
.LC16:
	.string	"Test %d failed: Failed to read app data\n"
.LC17:
	.string	"testdata"
.LC18:
	.string	"buf"
	.text
	.type	test_func, @function
test_func:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movabsq	$8386094071696024916, %rax
	movq	%rax, -66(%rbp)
	movw	$97, -58(%rbp)
	movq	clientctx(%rip), %rsi
	movq	serverctx(%rip), %rax
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L25
	movl	-84(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L26
.L25:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L27
	movl	-84(%rbp), %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L26
.L27:
	movq	$0, -24(%rbp)
	jmp	.L28
.L59:
	movl	$-1, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L29
.L42:
	cmpl	$0, -84(%rbp)
	jle	.L30
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
.L30:
	cmpl	$1, -84(%rbp)
	jle	.L32
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_alloc_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
.L32:
	cmpl	$2, -84(%rbp)
	jle	.L34
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_alloc_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
.L34:
	cmpl	$3, -84(%rbp)
	jle	.L36
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$117, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
.L36:
	movl	-28(%rbp), %eax
	movl	$10, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	-28(%rbp), %eax
	cltq
	leaq	-66(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L38
	movl	-32(%rbp), %eax
	addl	%eax, -28(%rbp)
	jmp	.L39
.L38:
	movq	-56(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -36(%rbp)
	cmpl	$5, -36(%rbp)
	je	.L40
	cmpl	$1, -36(%rbp)
	jne	.L39
.L40:
	movl	-84(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L26
.L39:
	addq	$1, -16(%rbp)
.L29:
	cmpl	$10, -28(%rbp)
	je	.L41
	cmpq	$1, -16(%rbp)
	jbe	.L42
.L41:
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L66
	movl	$-1, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L44
.L57:
	cmpl	$4, -84(%rbp)
	jle	.L45
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$145, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
.L45:
	cmpl	$5, -84(%rbp)
	jle	.L47
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$149, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
.L47:
	cmpl	$6, -84(%rbp)
	jle	.L49
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_alloc_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$152, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$153, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
.L49:
	cmpl	$7, -84(%rbp)
	jle	.L51
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	checkbuffers
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$156, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
.L51:
	movl	-28(%rbp), %eax
	movl	$10, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	-28(%rbp), %eax
	cltq
	leaq	-76(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L53
	movl	-32(%rbp), %eax
	addl	%eax, -28(%rbp)
	jmp	.L54
.L53:
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -40(%rbp)
	cmpl	$5, -40(%rbp)
	je	.L55
	cmpl	$1, -40(%rbp)
	jne	.L54
.L55:
	movl	-84(%rbp), %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L26
.L54:
	addq	$1, -16(%rbp)
.L44:
	cmpl	$10, -28(%rbp)
	je	.L56
	cmpq	$99, -16(%rbp)
	jbe	.L57
.L56:
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	leaq	-76(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$10
	leaq	-66(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L71
	addq	$1, -24(%rbp)
.L28:
	cmpq	$1, -24(%rbp)
	jbe	.L59
	movl	$1, -4(%rbp)
	jmp	.L26
.L62:
	nop
	jmp	.L26
.L63:
	nop
	jmp	.L26
.L64:
	nop
	jmp	.L26
.L65:
	nop
	jmp	.L26
.L66:
	nop
	jmp	.L26
.L67:
	nop
	jmp	.L26
.L68:
	nop
	jmp	.L26
.L69:
	nop
	jmp	.L26
.L70:
	nop
	jmp	.L26
.L71:
	nop
.L26:
	cmpl	$0, -4(%rbp)
	jne	.L60
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
.L60:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	test_func, .-test_func
	.section	.rodata
.LC19:
	.string	"AES128-SHA"
	.align 8
.LC20:
	.string	"SSL_set_cipher_list(serverssl, \"AES128-SHA\")"
	.align 8
.LC21:
	.string	"SSL_set_max_proto_version(serverssl, TLS1_2_VERSION)"
	.align 8
.LC22:
	.string	"SSL_set_max_pipelines(serverssl, 2)"
	.align 8
.LC23:
	.string	"SSL_write_ex(clientssl, testdata, strlen(testdata), &written)"
	.align 8
.LC24:
	.string	"SSL_read_ex(serverssl, buf, readlen, &readbytes)"
.LC25:
	.string	"readbytes"
.LC26:
	.string	"readlen"
	.align 8
.LC27:
	.string	"BIO_read_ex(tmp, buf, sizeof(buf), &readbytes)"
.LC28:
	.string	"sizeof(buf)"
.LC29:
	.string	"SSL3_RT_HEADER_LENGTH"
.LC30:
	.string	"Invalid test index"
.LC31:
	.string	"SSL3_RT_APPLICATION_DATA"
.LC32:
	.string	"buf[first_rec_len]"
	.align 8
.LC33:
	.string	"BIO_write_ex(tmp, buf, partial_len, &written)"
	.align 8
.LC34:
	.string	"SSL_read_ex(serverssl, buf, sizeof(buf), &readbytes)"
.LC35:
	.string	"strlen(testdata)"
	.text
	.type	test_free_buffers, @function
test_free_buffers:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movabsq	$8386094071696024916, %rax
	movq	%rax, -82(%rbp)
	movw	$97, -74(%rbp)
	cmpl	$3, -228(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L73
	call	load_dasync@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L101
	subl	$4, -228(%rbp)
.L73:
	movq	clientctx(%rip), %rsi
	movq	serverctx(%rip), %rax
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$217, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	cmpl	$0, -28(%rbp)
	je	.L77
	movq	-64(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$771, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$223, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$126, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
.L77:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movl	$0, -8(%rbp)
	jmp	.L80
.L82:
	movq	-72(%rbp), %rax
	leaq	-216(%rbp), %rdx
	leaq	-82(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$9, %edx
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$238, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L105
	addl	$1, -8(%rbp)
.L80:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L82
	cmpl	$0, -228(%rbp)
	jne	.L83
	movq	$1, -16(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L84
	addq	$9, -16(%rbp)
.L84:
	movq	-64(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movq	-224(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$255, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L86
	jmp	.L106
.L83:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -48(%rbp)
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$120, %edx
	movq	%rax, %rdi
	call	BIO_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L107
	movq	-224(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$120, %r9d
	movq	%rsi, %r8
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L107
	movq	-224(%rbp), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L107
	cmpl	$3, -228(%rbp)
	je	.L89
	cmpl	$3, -228(%rbp)
	jg	.L90
	cmpl	$1, -228(%rbp)
	je	.L91
	cmpl	$2, -228(%rbp)
	je	.L92
	jmp	.L90
.L91:
	movq	$4, -24(%rbp)
	jmp	.L93
.L92:
	movq	$5, -24(%rbp)
	jmp	.L93
.L89:
	movq	-224(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L93
.L90:
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L75
.L93:
	cmpl	$0, -28(%rbp)
	je	.L94
	movq	$57, -56(%rbp)
	cmpl	$3, -228(%rbp)
	je	.L95
	movq	-56(%rbp), %rax
	addq	%rax, -24(%rbp)
.L95:
	leaq	-208(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$23, %r9d
	movl	%esi, %r8d
	movl	$294, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
.L94:
	leaq	-216(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$302, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L109
	cmpl	$0, -28(%rbp)
	je	.L97
	movq	-64(%rbp), %rax
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$120, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$311, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-224(%rbp), %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movq	%rsi, %r8
	movl	$313, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L86
	jmp	.L110
.L97:
	movq	-64(%rbp), %rax
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$120, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$320, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L111
.L86:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free_buffers@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$330, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	movl	$1, -4(%rbp)
	jmp	.L75
.L101:
	nop
	jmp	.L75
.L102:
	nop
	jmp	.L75
.L103:
	nop
	jmp	.L75
.L104:
	nop
	jmp	.L75
.L105:
	nop
	jmp	.L75
.L106:
	nop
	jmp	.L75
.L107:
	nop
	jmp	.L75
.L108:
	nop
	jmp	.L75
.L109:
	nop
	jmp	.L75
.L110:
	nop
	jmp	.L75
.L111:
	nop
	jmp	.L75
.L112:
	nop
.L75:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	test_free_buffers, .-test_free_buffers
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB763:
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
.LFE763:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC36:
	.string	"Error parsing test options\n"
.LC37:
	.string	"cert = test_get_argument(0)"
.LC38:
	.string	"pkey = test_get_argument(1)"
	.align 8
.LC39:
	.string	"Failed to create SSL_CTX pair\n"
.LC40:
	.string	"test_func"
.LC41:
	.string	"test_free_buffers"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L116
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$354, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L117
.L116:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$358, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$359, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L117
.L119:
	call	TLS_client_method@PLT
	movq	%rax, %rbx
	call	TLS_server_method@PLT
	leaq	serverctx(%rip), %rcx
	subq	$8, %rsp
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	leaq	clientctx(%rip), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$769, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L120
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L117
.L120:
	leaq	test_func(%rip), %rsi
	leaq	.LC40(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_free_buffers(%rip), %rsi
	leaq	.LC41(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L117:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	clientctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	serverctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC42:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC43:
	.string	"Valid options are:\n"
.LC44:
	.string	"help"
.LC45:
	.string	"Display this summary"
.LC46:
	.string	"list"
	.align 8
.LC47:
	.string	"Display the list of tests available"
.LC48:
	.string	"test"
	.align 8
.LC49:
	.string	"Run a single test by id or name"
.LC50:
	.string	"iter"
	.align 8
.LC51:
	.string	"Run a single iteration of a test"
.LC52:
	.string	"indent"
	.align 8
.LC53:
	.string	"Number of tabs added to output"
.LC54:
	.string	"seed"
	.align 8
.LC55:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC42
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	500
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	501
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	502
	.long	115
	.quad	.LC49
	.quad	.LC50
	.long	503
	.long	110
	.quad	.LC51
	.quad	.LC52
	.long	504
	.long	112
	.quad	.LC53
	.quad	.LC54
	.long	505
	.long	110
	.quad	.LC55
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

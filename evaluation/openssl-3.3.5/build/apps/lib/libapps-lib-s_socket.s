	.file	"s_socket.c"
	.text
	.globl	ourpeer
	.bss
	.align 8
	.type	ourpeer, @object
	.size	ourpeer, 8
ourpeer:
	.zero	8
	.section	.rodata
.LC0:
	.string	"../apps/lib/s_socket.c"
	.align 8
.LC1:
	.string	"assertion failed: (family == AF_UNSPEC || family == BIO_ADDRINFO_family(ai)) && (type == 0 || type == BIO_ADDRINFO_socktype(ai)) && (protocol == 0 || protocol == BIO_ADDRINFO_protocol(ai))"
.LC2:
	.string	"Internal error\n"
.LC3:
	.string	""
.LC4:
	.string	":"
.LC5:
	.string	"unix "
.LC6:
	.string	"IPv4 "
.LC7:
	.string	"IPv6 "
	.align 8
.LC8:
	.string	"Can't bind %saddress for %s%s%s\n"
.LC9:
	.string	"Connecting to %s\n"
	.text
	.globl	init_client
	.type	init_client, @function
init_client:
.LFB680:
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
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	%r9d, -140(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -60(%rbp)
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L43
.L2:
	movl	24(%rbp), %r8d
	movl	16(%rbp), %edi
	movl	-140(%rbp), %edx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	subq	$8, %rsp
	leaq	-80(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BIO_lookup_ex@PLT
	addq	$16, %rsp
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L4
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L43
.L4:
	cmpq	$0, -128(%rbp)
	jne	.L5
	cmpq	$0, -136(%rbp)
	je	.L6
.L5:
	movl	24(%rbp), %r8d
	movl	16(%rbp), %edi
	movl	-140(%rbp), %edx
	movq	-136(%rbp), %rsi
	movq	-128(%rbp), %rax
	subq	$8, %rsp
	leaq	-88(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BIO_lookup_ex@PLT
	addq	$16, %rsp
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L6
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L7
.L6:
	movl	$0, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L8
.L28:
	cmpl	$0, -140(%rbp)
	je	.L9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	%eax, -140(%rbp)
	jne	.L10
.L9:
	cmpl	$0, 16(%rbp)
	je	.L11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	cmpl	%eax, 16(%rbp)
	jne	.L10
.L11:
	cmpl	$0, 24(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	cmpl	%eax, 24(%rbp)
	je	.L12
.L10:
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L12:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L13
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L14
.L17:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	%eax, %ebx
	je	.L44
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	%rax, -48(%rbp)
.L14:
	cmpq	$0, -48(%rbp)
	jne	.L17
	jmp	.L16
.L44:
	nop
.L16:
	cmpq	$0, -48(%rbp)
	je	.L45
	addl	$1, -52(%rbp)
.L13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	$0, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movq	-104(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L46
	cmpq	$0, -48(%rbp)
	je	.L21
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_bind@PLT
	testl	%eax, %eax
	jne	.L21
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-104(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L22
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	cmpl	$6, %eax
	jne	.L23
	orl	$16, -60(%rbp)
	cmpl	$0, 32(%rbp)
	je	.L23
	orl	$32, -60(%rbp)
.L23:
	cmpl	$0, 40(%rbp)
	je	.L24
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	-60(%rbp), %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_connect@PLT
	testl	%eax, %eax
	jne	.L24
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-104(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L19
.L24:
	cmpl	$0, 32(%rbp)
	jne	.L25
	cmpl	$0, 40(%rbp)
	jne	.L47
.L25:
	cmpq	$0, 48(%rbp)
	jne	.L27
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-104(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L7
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rdi
	call	BIO_ADDR_dup@PLT
	movq	48(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L47
.L45:
	nop
	jmp	.L19
.L46:
	nop
.L19:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	%rax, -40(%rbp)
.L8:
	cmpq	$0, -40(%rbp)
	jne	.L28
	jmp	.L22
.L47:
	nop
.L22:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L29
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L30
	cmpl	$0, -52(%rbp)
	jne	.L30
	cmpq	$0, -136(%rbp)
	je	.L31
	movq	-136(%rbp), %r12
	jmp	.L32
.L31:
	leaq	.LC3(%rip), %r12
.L32:
	cmpq	$0, -136(%rbp)
	je	.L33
	leaq	.LC4(%rip), %r13
	jmp	.L34
.L33:
	leaq	.LC3(%rip), %r13
.L34:
	cmpq	$0, -128(%rbp)
	je	.L35
	movq	-128(%rbp), %rbx
	jmp	.L36
.L35:
	leaq	.LC3(%rip), %rbx
.L36:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$10, %eax
	je	.L37
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$2, %eax
	je	.L38
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$1, %eax
	jne	.L39
	leaq	.LC5(%rip), %rax
	jmp	.L40
.L39:
	leaq	.LC3(%rip), %rax
	jmp	.L40
.L38:
	leaq	.LC6(%rip), %rax
	jmp	.L40
.L37:
	leaq	.LC7(%rip), %rax
.L40:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	leaq	.LC8(%rip), %rsi
	movq	%r12, %r9
	movq	%r13, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	call	ERR_clear_error@PLT
	movl	$0, -56(%rbp)
.L30:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L7
.L29:
	movq	$0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_hostname_string@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L41:
	call	ERR_clear_error@PLT
	movl	$1, -56(%rbp)
.L7:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L42
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
.L42:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movl	-56(%rbp), %eax
.L43:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	init_client, .-init_client
	.globl	get_sock_info_address
	.type	get_sock_info_address, @function
get_sock_info_address:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L49
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L49:
	cmpq	$0, -40(%rbp)
	je	.L50
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L50:
	call	BIO_ADDR_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L51
	leaq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_sock_info@PLT
	testl	%eax, %eax
	je	.L51
	cmpq	$0, -32(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_hostname_string@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L52:
	cmpq	$0, -40(%rbp)
	je	.L51
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_service_string@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	get_sock_info_address, .-get_sock_info_address
	.section	.rodata
.LC10:
	.string	"ACCEPT"
.LC11:
	.string	" %s:%s"
.LC12:
	.string	" [%s]:%s"
.LC13:
	.string	"unknown:error\n"
.LC14:
	.string	" PID=%d"
.LC15:
	.string	"\n"
	.text
	.globl	report_server_accept
	.type	report_server_accept, @function
report_server_accept:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	$1, -20(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	cmpl	$0, -64(%rbp)
	je	.L56
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	get_sock_info_address@PLT
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L57
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L59
	movq	-40(%rbp), %r12
	movq	-32(%rbp), %rbx
	movq	-32(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L60
	leaq	.LC11(%rip), %rax
	jmp	.L61
.L60:
	leaq	.LC12(%rip), %rax
.L61:
	movq	-56(%rbp), %rdi
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	jmp	.L62
.L59:
	leaq	.LC13(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L62:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$263, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$264, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L56:
	cmpl	$0, -68(%rbp)
	je	.L63
	call	getpid@PLT
	movl	%eax, %edx
	leaq	.LC14(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	negl	%eax
	andl	%eax, -20(%rbp)
.L63:
	leaq	.LC15(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	negl	%eax
	andl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-20(%rbp), %eax
.L55:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	report_server_accept, .-report_server_accept
	.section	.rodata
	.align 8
.LC16:
	.string	"assertion failed: (family == AF_UNSPEC || family == BIO_ADDRINFO_family(res)) && (type == 0 || type == BIO_ADDRINFO_socktype(res)) && (protocol == 0 || protocol == BIO_ADDRINFO_protocol(res))"
	.text
	.globl	do_server
	.type	do_server, @function
do_server:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movl	%ecx, -332(%rbp)
	movl	%r8d, -336(%rbp)
	movl	%r9d, -340(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -48(%rbp)
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L65
	movl	$0, %eax
	jmp	.L98
.L65:
	movl	-340(%rbp), %r8d
	movl	-336(%rbp), %edi
	movl	-332(%rbp), %edx
	movq	-328(%rbp), %rsi
	movq	-320(%rbp), %rax
	subq	$8, %rsp
	leaq	-88(%rbp), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BIO_lookup_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L67
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L98
.L67:
	cmpl	$0, -332(%rbp)
	je	.L68
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	%eax, -332(%rbp)
	jne	.L69
.L68:
	cmpl	$0, -336(%rbp)
	je	.L70
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	cmpl	%eax, -336(%rbp)
	jne	.L69
.L70:
	cmpl	$0, -340(%rbp)
	je	.L71
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	cmpl	%eax, -340(%rbp)
	je	.L71
.L69:
	leaq	.LC0(%rip), %rcx
	leaq	.LC16(%rip), %rax
	movl	$322, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L71:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	%eax, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	movl	%eax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	%rax, -64(%rbp)
	cmpl	$0, 48(%rbp)
	je	.L72
	cmpl	$1, -52(%rbp)
	jne	.L72
	orl	$32, -44(%rbp)
.L72:
	cmpl	$10, -12(%rbp)
	jne	.L73
	orl	$2, -44(%rbp)
.L73:
	cmpq	$0, -64(%rbp)
	je	.L74
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	cmpl	%eax, -52(%rbp)
	jne	.L74
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	cmpl	%eax, -56(%rbp)
	jne	.L74
	cmpl	$2, -12(%rbp)
	jne	.L75
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$10, %eax
	jne	.L75
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$10, -12(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, -24(%rbp)
	jmp	.L74
.L75:
	cmpl	$10, -12(%rbp)
	jne	.L74
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$2, %eax
	jne	.L74
	andl	$-3, -44(%rbp)
.L74:
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movl	-12(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L76
	cmpl	$0, -28(%rbp)
	je	.L76
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movl	-28(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.L76:
	cmpl	$-1, -4(%rbp)
	je	.L77
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_listen@PLT
	testl	%eax, %eax
	jne	.L78
.L77:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	cmpl	$-1, -4(%rbp)
	je	.L99
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L99
.L78:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %eax
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	$0, -88(%rbp)
	cmpl	$0, -68(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-4(%rbp), %esi
	movq	40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	report_server_accept@PLT
	testl	%eax, %eax
	jne	.L81
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L80
.L81:
	cmpq	$0, -312(%rbp)
	je	.L96
	movq	-312(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L96:
	cmpl	$1, -336(%rbp)
	jne	.L83
	movq	ourpeer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	call	BIO_ADDR_new@PLT
	movq	ourpeer@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	ourpeer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L84
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L80
.L84:
	movq	ourpeer@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_accept_ex@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jns	.L85
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	jne	.L84
.L85:
	cmpl	$0, -72(%rbp)
	jns	.L86
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L80
.L86:
	cmpl	$-1, 32(%rbp)
	je	.L88
	subl	$1, 32(%rbp)
.L88:
	cmpl	$0, 32(%rbp)
	jne	.L89
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L89:
	movl	-72(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_set_tcp_ndelay@PLT
	movq	24(%rbp), %rcx
	movl	-340(%rbp), %edx
	movl	-336(%rbp), %esi
	movl	-72(%rbp), %eax
	movq	16(%rbp), %r8
	movl	%eax, %edi
	call	*%r8
	movl	%eax, -8(%rbp)
	movl	-72(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	shutdown@PLT
	movq	$0, -112(%rbp)
	movq	$500000, -104(%rbp)
.L91:
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 450 "../apps/lib/s_socket.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-240(%rbp,%rax,8), %rax
	movl	-72(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rax, %rdx
	movslq	%esi, %rax
	movq	%rdx, -240(%rbp,%rax,8)
	movl	-72(%rbp), %eax
	leal	1(%rax), %edi
	leaq	-112(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	select@PLT
	testl	%eax, %eax
	jle	.L90
	leaq	-304(%rbp), %rcx
	movl	-72(%rbp), %eax
	movl	$64, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testq	%rax, %rax
	jg	.L91
.L90:
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L92
.L83:
	cmpl	$-1, 32(%rbp)
	je	.L93
	subl	$1, 32(%rbp)
.L93:
	movq	24(%rbp), %rcx
	movl	-340(%rbp), %edx
	movl	-336(%rbp), %esi
	movl	-4(%rbp), %eax
	movq	16(%rbp), %r8
	movl	%eax, %edi
	call	*%r8
	movl	%eax, -8(%rbp)
.L92:
	cmpl	$0, -8(%rbp)
	js	.L94
	cmpl	$0, 32(%rbp)
	jne	.L96
.L94:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L80
.L99:
	nop
.L80:
	cmpl	$1, -332(%rbp)
	jne	.L97
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
.L97:
	movq	ourpeer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	ourpeer@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movl	-48(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	do_server, .-do_server
	.globl	do_ssl_shutdown
	.type	do_ssl_shutdown, @function
do_ssl_shutdown:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L105:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L101
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$3, %eax
	jg	.L102
	cmpl	$2, %eax
	jge	.L106
	jmp	.L104
.L102:
	subl	$9, %eax
	cmpl	$1, %eax
	jbe	.L106
.L104:
	movl	$0, -4(%rbp)
	jmp	.L101
.L106:
	nop
.L101:
	cmpl	$0, -4(%rbp)
	js	.L105
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	do_ssl_shutdown, .-do_ssl_shutdown
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

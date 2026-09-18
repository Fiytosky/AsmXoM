	.file	"bio_sock.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/bio/bio_sock.c"
.LC1:
	.string	"host="
	.text
	.globl	BIO_get_host_ip
	.type	BIO_get_host_ip, @function
BIO_get_host_ip:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L6
	movl	$0, %eax
	jmp	.L12
.L6:
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_lookup@PLT
	testl	%eax, %eax
	je	.L8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$2, %eax
	je	.L9
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rax
	cmpq	$4, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L10
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	BIO_ADDR_rawaddress@PLT
	movl	%eax, -4(%rbp)
.L10:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	jmp	.L11
.L8:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L11:
	movl	-4(%rbp), %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_get_host_ip, .-BIO_get_host_ip
	.globl	BIO_get_port
	.type	BIO_get_port, @function
BIO_get_port:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L14:
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L21
.L16:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	BIO_lookup@PLT
	testl	%eax, %eax
	je	.L17
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$2, %eax
	je	.L18
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ntohs@PLT
	movq	-32(%rbp), %rdx
	movw	%ax, (%rdx)
	movl	$1, -4(%rbp)
.L19:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	jmp	.L20
.L17:
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L20:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_get_port, .-BIO_get_port
	.globl	BIO_sock_error
	.type	BIO_sock_error, @function
BIO_sock_error:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$4, -12(%rbp)
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L23
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L25
.L23:
	movl	-8(%rbp), %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_sock_error, .-BIO_sock_error
	.globl	BIO_gethostbyname
	.type	BIO_gethostbyname, @function
BIO_gethostbyname:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	gethostbyname@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_gethostbyname, .-BIO_gethostbyname
	.globl	BIO_sock_init
	.type	BIO_sock_init, @function
BIO_sock_init:
.LFB169:
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
.LFE169:
	.size	BIO_sock_init, .-BIO_sock_init
	.globl	bio_sock_cleanup_int
	.type	bio_sock_cleanup_int, @function
bio_sock_cleanup_int:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	bio_sock_cleanup_int, .-bio_sock_cleanup_int
	.section	.rodata
.LC2:
	.string	"calling ioctlsocket()"
	.text
	.globl	BIO_socket_ioctl
	.type	BIO_socket_ioctl, @function
BIO_socket_ioctl:
.LFB171:
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
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L32
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L32:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BIO_socket_ioctl, .-BIO_socket_ioctl
	.globl	BIO_get_accept_socket
	.type	BIO_get_accept_socket, @function
BIO_get_accept_socket:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	$-1, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	BIO_parse_hostserv@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$-1, %eax
	jmp	.L41
.L35:
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	jne	.L42
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BIO_lookup@PLT
	testl	%eax, %eax
	jne	.L43
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	movl	%eax, %r12d
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	$0, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L40
	movl	$-1, -20(%rbp)
	jmp	.L38
.L40:
	cmpl	$0, -60(%rbp)
	setne	%al
	movzbl	%al, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_listen@PLT
	testl	%eax, %eax
	jne	.L44
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movl	$-1, -20(%rbp)
	jmp	.L38
.L42:
	nop
	jmp	.L38
.L43:
	nop
	jmp	.L38
.L44:
	nop
.L38:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$280, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L41:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BIO_get_accept_socket, .-BIO_get_accept_socket
	.section	.rodata
.LC3:
	.string	"calling accept()"
	.text
	.globl	BIO_accept
	.type	BIO_accept, @function
BIO_accept:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movl	$-1, -20(%rbp)
	leaq	-160(%rbp), %rcx
	movl	-164(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_accept_ex@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L46
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L47
	movl	$-2, -20(%rbp)
	jmp	.L48
.L47:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L46:
	cmpq	$0, -176(%rbp)
	je	.L54
	leaq	-160(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_hostname_string@PLT
	movq	%rax, -32(%rbp)
	leaq	-160(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_service_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L49
	cmpq	$0, -40(%rbp)
	je	.L49
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$306, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L50
.L49:
	movq	-176(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L50:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movl	$-1, -20(%rbp)
	jmp	.L52
.L51:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-176(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	movw	$58, (%rax)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
.L52:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$320, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$321, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L48
.L54:
	nop
.L48:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BIO_accept, .-BIO_accept
	.globl	BIO_set_tcp_ndelay
	.type	BIO_set_tcp_ndelay, @function
BIO_set_tcp_ndelay:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$6, -8(%rbp)
	leaq	-24(%rbp), %rdx
	movl	-8(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	setsockopt@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BIO_set_tcp_ndelay, .-BIO_set_tcp_ndelay
	.globl	BIO_socket_nbio
	.type	BIO_socket_nbio, @function
BIO_socket_nbio:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$-1, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$21537, %esi
	movl	%eax, %edi
	call	BIO_socket_ioctl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	BIO_socket_nbio, .-BIO_socket_nbio
	.section	.rodata
.LC4:
	.string	"calling getsockname()"
	.text
	.globl	BIO_sock_info
	.type	BIO_sock_info, @function
BIO_sock_info:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L60
	movl	$0, -4(%rbp)
	movl	$112, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_noconst@PLT
	movq	%rax, %rcx
	leaq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$406, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC4(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L61:
	movl	-8(%rbp), %eax
	cmpl	$112, %eax
	jbe	.L66
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$412, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L60:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L66:
	nop
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BIO_sock_info, .-BIO_sock_info
	.globl	BIO_socket_wait
	.type	BIO_socket_wait, @function
BIO_socket_wait:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movl	%esi, -168(%rbp)
	movq	%rdx, -176(%rbp)
	cmpl	$0, -164(%rbp)
	js	.L68
	cmpl	$1023, -164(%rbp)
	jle	.L69
.L68:
	movl	$-1, %eax
	jmp	.L77
.L69:
	cmpq	$0, -176(%rbp)
	jne	.L71
	movl	$1, %eax
	jmp	.L77
.L71:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -8(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.L72
	movl	$0, %eax
	jmp	.L77
.L72:
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 448 "../crypto/bio/bio_sock.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -12(%rbp)
	movl	%eax, -16(%rbp)
	movl	-164(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-144(%rbp,%rax,8), %rax
	movl	-164(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rax, %rdx
	movslq	%esi, %rax
	movq	%rdx, -144(%rbp,%rax,8)
	movq	$0, -152(%rbp)
	movq	-176(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	cmpl	$0, -168(%rbp)
	jne	.L73
	leaq	-144(%rbp), %rdx
	jmp	.L74
.L73:
	movl	$0, %edx
.L74:
	cmpl	$0, -168(%rbp)
	je	.L75
	leaq	-144(%rbp), %rax
	jmp	.L76
.L75:
	movl	$0, %eax
.L76:
	movl	-164(%rbp), %ecx
	leal	1(%rcx), %edi
	leaq	-160(%rbp), %rcx
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	call	select@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	BIO_socket_wait, .-BIO_socket_wait
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"BIO_get_host_ip"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"BIO_get_port"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"BIO_socket_ioctl"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 11
__func__.1:
	.string	"BIO_accept"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"BIO_sock_info"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

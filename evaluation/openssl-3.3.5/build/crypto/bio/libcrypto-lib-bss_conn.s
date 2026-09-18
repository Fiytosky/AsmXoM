	.file	"bss_conn.c"
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
	.string	"socket connect"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_connectp, @object
	.size	methods_connectp, 112
methods_connectp:
	.long	1292
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	conn_write
	.quad	bread_conv
	.quad	conn_read
	.quad	conn_puts
	.quad	conn_gets
	.quad	conn_ctrl
	.quad	conn_new
	.quad	conn_free
	.quad	conn_callback_ctrl
	.quad	conn_sendmmsg
	.quad	conn_recvmmsg
	.text
	.type	conn_create_dgram_bio, @function
conn_create_dgram_bio:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movl	$1, %eax
	jmp	.L7
.L11:
	nop
.L9:
	movq	-16(%rbp), %rax
	movl	$7, (%rax)
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	conn_create_dgram_bio, .-conn_create_dgram_bio
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bss_conn.c"
.LC2:
	.string	"hostname=%s service=%s"
.LC3:
	.string	"calling socket(%s, %s)"
.LC4:
	.string	"calling connect(%s, %s)"
	.text
	.type	conn_state, @function
conn_state:
.LFB166:
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
	movq	%rsi, -64(%rbp)
	movl	$-1, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
.L44:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	je	.L14
	cmpl	$7, %eax
	jg	.L46
	cmpl	$6, %eax
	je	.L16
	cmpl	$6, %eax
	jg	.L46
	cmpl	$5, %eax
	je	.L17
	cmpl	$5, %eax
	jg	.L46
	cmpl	$4, %eax
	je	.L18
	cmpl	$4, %eax
	jg	.L46
	cmpl	$3, %eax
	je	.L19
	cmpl	$3, %eax
	jg	.L46
	cmpl	$1, %eax
	je	.L20
	cmpl	$2, %eax
	je	.L21
	jmp	.L46
.L20:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$144, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L22:
	movq	-64(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L24
.L21:
	movl	$0, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$256, %eax
	je	.L25
	cmpl	$256, %eax
	jg	.L26
	cmpl	$4, %eax
	je	.L27
	cmpl	$6, %eax
	jne	.L26
	movl	$10, -36(%rbp)
	jmp	.L28
.L27:
	movl	$2, -36(%rbp)
	jmp	.L28
.L25:
	movl	$0, -36(%rbp)
	jmp	.L28
.L26:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L28:
	movq	-64(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BIO_lookup@PLT
	testl	%eax, %eax
	je	.L47
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L30:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-64(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L24
.L19:
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	movl	%eax, %r12d
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	movl	%eax, %ebx
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	$0, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %r12
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L31:
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 56(%rax)
	movq	-64(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L24
.L18:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	cmpl	$1, %eax
	jne	.L32
	orl	$4, -24(%rbp)
.L32:
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	-24(%rbp), %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_connect@PLT
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 52(%rax)
	cmpl	$0, -20(%rbp)
	jne	.L33
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L34
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-64(%rbp), %rax
	movl	$6, (%rax)
	movq	-56(%rbp), %rax
	movl	$2, 52(%rax)
	call	ERR_pop_to_mark@PLT
	jmp	.L23
.L34:
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-64(%rbp), %rax
	movl	$3, (%rax)
	call	ERR_pop_to_mark@PLT
	jmp	.L24
.L36:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %r12
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC4(%rip), %rdx
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-64(%rbp), %rax
	movl	$7, (%rax)
	jmp	.L24
.L33:
	call	ERR_clear_last_mark@PLT
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_create_dgram_bio
	testl	%eax, %eax
	je	.L48
	movq	-64(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L24
.L16:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_socket_wait@PLT
	testl	%eax, %eax
	je	.L49
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_sock_error@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L39
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-64(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L24
.L40:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.LC4(%rip), %rsi
	movl	-40(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -20(%rbp)
	jmp	.L23
.L39:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_create_dgram_bio
	testl	%eax, %eax
	je	.L50
	movq	-64(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L24
.L14:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$268, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -20(%rbp)
	jmp	.L23
.L17:
	movl	$1, -20(%rbp)
	jmp	.L23
.L48:
	nop
	jmp	.L24
.L49:
	nop
	jmp	.L24
.L50:
	nop
.L24:
	cmpq	$0, -32(%rbp)
	je	.L44
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L51
	jmp	.L44
.L46:
	nop
	jmp	.L23
.L47:
	nop
.L23:
	cmpq	$0, -32(%rbp)
	je	.L52
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	jmp	.L43
.L51:
	nop
	jmp	.L43
.L52:
	nop
.L43:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	conn_state, .-conn_state
	.type	BIO_CONNECT_new, @function
BIO_CONNECT_new:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC1(%rip), %rax
	movl	$298, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$256, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_CONNECT_new, .-BIO_CONNECT_new
	.type	BIO_CONNECT_free, @function
BIO_CONNECT_free:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L56
.L59:
	nop
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_CONNECT_free, .-BIO_CONNECT_free
	.globl	BIO_s_connect
	.type	BIO_s_connect, @function
BIO_s_connect:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_connectp(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BIO_s_connect, .-BIO_s_connect
	.type	conn_new, @function
conn_new:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	call	BIO_CONNECT_new
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	conn_new, .-conn_new
	.type	conn_close_socket, @function
conn_close_socket:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L68
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L67
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	shutdown@PLT
.L67:
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-24(%rbp), %rax
	movl	$-1, 56(%rax)
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	conn_close_socket, .-conn_close_socket
	.type	conn_free, @function
conn_free:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L72
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	conn_close_socket
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_CONNECT_free
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.L72:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	conn_free, .-conn_free
	.type	conn_read, @function
conn_read:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L74
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L74
	movl	-4(%rbp), %eax
	jmp	.L75
.L74:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	-4(%rbp), %eax
	jmp	.L75
.L76:
	cmpq	$0, -32(%rbp)
	je	.L77
	call	__errno_location@PLT
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -4(%rbp)
	jg	.L77
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L77
.L78:
	cmpl	$0, -4(%rbp)
	jne	.L77
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
.L77:
	movl	-4(%rbp), %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	conn_read, .-conn_read
	.type	conn_write, @function
conn_write:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L80
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L80
	movl	-12(%rbp), %eax
	jmp	.L81
.L80:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	-12(%rbp), %eax
	jmp	.L81
.L82:
	call	__errno_location@PLT
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -12(%rbp)
	jg	.L83
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L83
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L83:
	movl	-12(%rbp), %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	conn_write, .-conn_write
	.type	conn_ctrl, @function
conn_ctrl:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	$0, -16(%rbp)
	movq	$1, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$159, -108(%rbp)
	je	.L85
	cmpl	$159, -108(%rbp)
	jg	.L86
	cmpl	$158, -108(%rbp)
	je	.L87
	cmpl	$158, -108(%rbp)
	jg	.L86
	cmpl	$157, -108(%rbp)
	je	.L88
	cmpl	$157, -108(%rbp)
	jg	.L86
	cmpl	$155, -108(%rbp)
	je	.L89
	cmpl	$155, -108(%rbp)
	jg	.L86
	cmpl	$123, -108(%rbp)
	je	.L90
	cmpl	$123, -108(%rbp)
	jg	.L86
	cmpl	$105, -108(%rbp)
	je	.L91
	cmpl	$105, -108(%rbp)
	jg	.L86
	cmpl	$102, -108(%rbp)
	je	.L92
	cmpl	$102, -108(%rbp)
	jg	.L86
	cmpl	$101, -108(%rbp)
	je	.L93
	cmpl	$101, -108(%rbp)
	jg	.L86
	cmpl	$100, -108(%rbp)
	je	.L94
	cmpl	$100, -108(%rbp)
	jg	.L86
	cmpl	$93, -108(%rbp)
	je	.L95
	cmpl	$93, -108(%rbp)
	jg	.L86
	cmpl	$92, -108(%rbp)
	jg	.L86
	cmpl	$91, -108(%rbp)
	jge	.L96
	cmpl	$46, -108(%rbp)
	je	.L95
	cmpl	$46, -108(%rbp)
	jg	.L86
	cmpl	$15, -108(%rbp)
	je	.L97
	cmpl	$15, -108(%rbp)
	jg	.L86
	cmpl	$14, -108(%rbp)
	je	.L98
	cmpl	$14, -108(%rbp)
	jg	.L86
	cmpl	$13, -108(%rbp)
	je	.L99
	cmpl	$13, -108(%rbp)
	jg	.L86
	cmpl	$12, -108(%rbp)
	je	.L100
	cmpl	$12, -108(%rbp)
	jg	.L86
	cmpl	$11, -108(%rbp)
	je	.L153
	cmpl	$11, -108(%rbp)
	jg	.L86
	cmpl	$10, -108(%rbp)
	je	.L99
	cmpl	$10, -108(%rbp)
	jg	.L86
	cmpl	$9, -108(%rbp)
	je	.L102
	cmpl	$9, -108(%rbp)
	jg	.L86
	cmpl	$8, -108(%rbp)
	je	.L103
	cmpl	$8, -108(%rbp)
	jg	.L86
	cmpl	$1, -108(%rbp)
	je	.L104
	cmpl	$2, -108(%rbp)
	je	.L105
	jmp	.L86
.L104:
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	conn_close_socket
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L106
.L93:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L107
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L106
.L107:
	movq	$1, -8(%rbp)
	jmp	.L106
.L90:
	cmpq	$0, -128(%rbp)
	je	.L109
	movq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L110
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L106
.L110:
	cmpq	$1, -120(%rbp)
	jne	.L112
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L106
.L112:
	cmpq	$2, -120(%rbp)
	jne	.L113
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L106
.L113:
	cmpq	$3, -120(%rbp)
	jne	.L114
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$10, %eax
	je	.L115
	cmpl	$10, %eax
	jg	.L116
	testl	%eax, %eax
	je	.L117
	cmpl	$2, %eax
	je	.L118
	jmp	.L116
.L115:
	movq	$6, -8(%rbp)
	jmp	.L111
.L118:
	movq	$4, -8(%rbp)
	jmp	.L111
.L117:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L111
.L116:
	movq	$-1, -8(%rbp)
	jmp	.L111
.L114:
	cmpq	$4, -120(%rbp)
	jne	.L120
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L106
.L120:
	movq	$0, -8(%rbp)
	jmp	.L106
.L109:
	movq	$0, -8(%rbp)
	jmp	.L106
.L111:
	jmp	.L106
.L94:
	cmpq	$0, -128(%rbp)
	je	.L154
	movq	-104(%rbp), %rax
	movl	$1, 40(%rax)
	cmpq	$0, -120(%rbp)
	jne	.L122
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$526, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	BIO_parse_hostserv@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L154
	leaq	.LC1(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$533, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L154
.L122:
	cmpq	$1, -120(%rbp)
	jne	.L123
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$535, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$536, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	movq	$0, -8(%rbp)
	jmp	.L154
.L123:
	cmpq	$2, -120(%rbp)
	jne	.L124
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_hostname_string@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_service_string@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L125
	cmpq	$0, -56(%rbp)
	je	.L125
	movl	$1, %eax
	jmp	.L126
.L125:
	movl	$0, %eax
.L126:
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L127
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$545, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$547, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.L154
.L127:
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$553, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$554, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L154
.L124:
	cmpq	$3, -120(%rbp)
	jne	.L128
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L154
.L128:
	movq	$0, -8(%rbp)
	jmp	.L154
.L88:
	cmpq	$1, -120(%rbp)
	je	.L129
	cmpq	$2, -120(%rbp)
	jne	.L130
.L129:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L131
.L130:
	movq	$0, -8(%rbp)
	jmp	.L106
.L131:
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	$1, -8(%rbp)
	jmp	.L106
.L87:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L106
.L85:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L132
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$1, -8(%rbp)
	jmp	.L106
.L132:
	movq	$0, -8(%rbp)
	jmp	.L106
.L95:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L134
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
.L134:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jle	.L135
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L135
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L136
	movq	-120(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jle	.L137
.L136:
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
.L137:
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L106
.L135:
	movq	$0, -8(%rbp)
	jmp	.L106
.L96:
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L139
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
.L139:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jle	.L140
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	movq	-104(%rbp), %rax
	movl	56(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L106
.L140:
	movq	$0, -8(%rbp)
	jmp	.L106
.L92:
	cmpq	$0, -120(%rbp)
	je	.L142
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L143
.L142:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
.L143:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	$0, %ecx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L155
.L89:
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-120(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L145
	movq	-24(%rbp), %rax
	movl	$1, 36(%rax)
	jmp	.L106
.L145:
	movq	-24(%rbp), %rax
	movl	$0, 36(%rax)
	jmp	.L106
.L91:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L147
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L148
	movq	-104(%rbp), %rax
	movl	56(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L148:
	movq	-104(%rbp), %rax
	movl	56(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L106
.L147:
	movq	$-1, -8(%rbp)
	jmp	.L106
.L103:
	movq	-104(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L106
.L102:
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L106
.L99:
	movq	$0, -8(%rbp)
	jmp	.L106
.L100:
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L150:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L151:
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, %ecx
	movl	$3, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$155, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-96(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
	jmp	.L106
.L98:
	movq	$0, -8(%rbp)
	jmp	.L106
.L97:
	movq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L106
.L105:
	movq	-104(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2048, %eax
	shrl	$11, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L106
.L86:
	movq	$0, -8(%rbp)
	jmp	.L106
.L153:
	nop
	jmp	.L106
.L154:
	nop
	jmp	.L106
.L155:
	nop
.L106:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	conn_ctrl, .-conn_ctrl
	.type	conn_callback_ctrl, @function
conn_callback_ctrl:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$14, -28(%rbp)
	jne	.L157
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L158
.L157:
	movq	$0, -8(%rbp)
	nop
.L158:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	conn_callback_ctrl, .-conn_callback_ctrl
	.type	conn_puts, @function
conn_puts:
.LFB177:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	conn_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	conn_puts, .-conn_puts
	.type	conn_gets, @function
conn_gets:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L163
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$768, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L164
.L163:
	cmpl	$0, -52(%rbp)
	jg	.L165
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L164
.L165:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L166
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L167
.L166:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L164
.L167:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L168
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L168
	movl	-12(%rbp), %eax
	jmp	.L164
.L168:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L169
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$789, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L164
.L169:
	call	__errno_location@PLT
	movl	$0, (%rax)
	jmp	.L170
.L175:
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -12(%rbp)
	jg	.L171
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L172
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L179
.L172:
	cmpl	$0, -12(%rbp)
	jne	.L179
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 48(%rax)
	jmp	.L179
.L171:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L180
.L170:
	movl	-52(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -52(%rbp)
	cmpl	$1, %eax
	jg	.L175
	jmp	.L174
.L179:
	nop
	jmp	.L174
.L180:
	nop
.L174:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -12(%rbp)
	jg	.L176
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L177
.L176:
	movq	-8(%rbp), %rax
	subq	-48(%rbp), %rax
	jmp	.L164
.L177:
	movl	-12(%rbp), %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	conn_gets, .-conn_gets
	.type	conn_sendmmsg, @function
conn_sendmmsg:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L182
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$824, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L184
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L184
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L183
.L184:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L185
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$839, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L185:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	conn_sendmmsg, .-conn_sendmmsg
	.type	conn_recvmmsg, @function
conn_recvmmsg:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L187
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$855, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L188
.L187:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L189
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conn_state
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L189
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L188
.L189:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L190
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$870, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L188
.L190:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	conn_recvmmsg, .-conn_recvmmsg
	.globl	BIO_new_connect
	.type	BIO_new_connect, @function
BIO_new_connect:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	BIO_s_connect@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L192
	movl	$0, %eax
	jmp	.L193
.L192:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	je	.L194
	movq	-8(%rbp), %rax
	jmp	.L193
.L194:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	BIO_new_connect, .-BIO_new_connect
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"conn_state"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 10
__func__.2:
	.string	"conn_gets"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"conn_sendmmsg"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"conn_recvmmsg"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

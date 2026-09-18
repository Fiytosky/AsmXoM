	.file	"bss_acpt.c"
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
	.string	"socket accept"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_acceptp, @object
	.size	methods_acceptp, 112
methods_acceptp:
	.long	1293
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	acpt_write
	.quad	bread_conv
	.quad	acpt_read
	.quad	acpt_puts
	.quad	0
	.quad	acpt_ctrl
	.quad	acpt_new
	.quad	acpt_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_accept
	.type	BIO_s_accept, @function
BIO_s_accept:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_acceptp(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_s_accept, .-BIO_s_accept
	.type	acpt_new, @function
acpt_new:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	call	BIO_ACCEPT_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 44(%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	acpt_new, .-acpt_new
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bss_acpt.c"
	.text
	.type	BIO_ACCEPT_new, @function
BIO_ACCEPT_new:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC1(%rip), %rax
	movl	$95, %edx
	movq	%rax, %rsi
	movl	$320, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movl	$256, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 32(%rax)
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_ACCEPT_new, .-BIO_ACCEPT_new
	.type	BIO_ACCEPT_free, @function
BIO_ACCEPT_free:
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
	je	.L16
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$106, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$109, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L13
.L16:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_ACCEPT_free, .-BIO_ACCEPT_free
	.type	acpt_close_socket, @function
acpt_close_socket:
.LFB169:
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
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$-1, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	shutdown@PLT
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-8(%rbp), %rax
	movl	$-1, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 56(%rax)
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	acpt_close_socket, .-acpt_close_socket
	.type	acpt_free, @function
acpt_free:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	acpt_close_socket
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ACCEPT_free
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.L23:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	acpt_free, .-acpt_free
	.section	.rodata
.LC2:
	.string	"hostname=%s, service=%s"
.LC3:
	.string	"calling socket(%s, %s)"
	.text
	.type	acpt_state, @function
acpt_state:
.LFB171:
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$-1, -32(%rbp)
.L55:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	je	.L25
	cmpl	$6, %eax
	jg	.L26
	cmpl	$5, %eax
	je	.L27
	cmpl	$5, %eax
	jg	.L26
	cmpl	$4, %eax
	je	.L28
	cmpl	$4, %eax
	jg	.L26
	cmpl	$3, %eax
	je	.L29
	cmpl	$3, %eax
	jg	.L26
	cmpl	$1, %eax
	je	.L30
	cmpl	$2, %eax
	je	.L31
	jmp	.L26
.L30:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-80(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$143, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L32:
	movq	-80(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$168, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-80(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-80(%rbp), %rax
	movq	296(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-80(%rbp), %rax
	movq	304(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$174, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-80(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L34
.L31:
	movl	$0, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$256, %eax
	je	.L35
	cmpl	$256, %eax
	jg	.L36
	cmpl	$4, %eax
	je	.L37
	cmpl	$6, %eax
	jne	.L36
	movl	$10, -36(%rbp)
	jmp	.L38
.L37:
	movl	$2, -36(%rbp)
	jmp	.L38
.L35:
	movl	$0, -36(%rbp)
	jmp	.L38
.L36:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L38:
	movq	-80(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BIO_lookup@PLT
	testl	%eax, %eax
	je	.L58
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L40:
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L34
.L29:
	call	ERR_set_mark@PLT
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_protocol@PLT
	movl	%eax, %r12d
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_socktype@PLT
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	$0, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L41
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L42
	call	ERR_pop_to_mark@PLT
	jmp	.L34
.L42:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-80(%rbp), %rax
	movq	24(%rax), %r12
	movq	-80(%rbp), %rax
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
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$236, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L41:
	movq	-80(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 56(%rax)
	movq	-80(%rbp), %rax
	movl	$4, (%rax)
	movl	$-1, -28(%rbp)
	jmp	.L34
.L28:
	movq	-80(%rbp), %rax
	movl	8(%rax), %ebx
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_listen@PLT
	testl	%eax, %eax
	jne	.L43
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L33
.L43:
	movq	-80(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	leaq	-56(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_sock_info@PLT
	testl	%eax, %eax
	jne	.L44
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L33
.L44:
	movq	-80(%rbp), %rax
	addq	$56, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_hostname_string@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-80(%rbp), %rax
	addq	$56, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_service_string@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-80(%rbp), %rax
	movl	$5, (%rax)
	movl	$-1, -28(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L45
.L27:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-80(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L34
.L46:
	movq	-72(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-72(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-80(%rbp), %rax
	movq	296(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$283, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-80(%rbp), %rax
	movq	304(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$285, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-80(%rbp), %rax
	movl	12(%rax), %edx
	movq	-80(%rbp), %rax
	leaq	184(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_accept_ex@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L47
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L47
	movq	-72(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-72(%rbp), %rax
	movl	$3, 52(%rax)
	jmp	.L45
.L47:
	cmpl	$0, -28(%rbp)
	jns	.L48
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L33
.L48:
	movl	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_new_socket@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L59
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback_ex@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback_arg@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	call	BIO_dup_chain@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L60
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	testq	%rax, %rax
	je	.L61
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.L50:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	testq	%rax, %rax
	je	.L62
	movq	-80(%rbp), %rax
	addq	$184, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_hostname_string@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movq	-80(%rbp), %rax
	addq	$184, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_service_string@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-80(%rbp), %rax
	movl	$6, (%rax)
	movq	$0, -24(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L45
.L25:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movq	-80(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L34
.L54:
	movl	$1, -32(%rbp)
	jmp	.L45
.L26:
	movl	$0, -32(%rbp)
	jmp	.L45
.L34:
	jmp	.L55
.L58:
	nop
	jmp	.L33
.L59:
	nop
	jmp	.L33
.L60:
	nop
	jmp	.L33
.L61:
	nop
	jmp	.L33
.L62:
	nop
.L33:
	cmpq	$0, -24(%rbp)
	je	.L56
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L45
.L56:
	cmpl	$0, -28(%rbp)
	js	.L63
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L45
.L63:
	nop
.L45:
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	acpt_state, .-acpt_state
	.type	acpt_read, @function
acpt_read:
.LFB172:
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
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L65
.L67:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	acpt_state
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L65
	movl	-4(%rbp), %eax
	jmp	.L66
.L65:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-4(%rbp), %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	acpt_read, .-acpt_read
	.type	acpt_write, @function
acpt_write:
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
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L69
.L71:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	acpt_state
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L69
	movl	-12(%rbp), %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-12(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	acpt_write, .-acpt_write
	.type	acpt_ctrl, @function
acpt_ctrl:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$132, -60(%rbp)
	je	.L73
	cmpl	$132, -60(%rbp)
	jg	.L74
	cmpl	$131, -60(%rbp)
	je	.L75
	cmpl	$131, -60(%rbp)
	jg	.L74
	cmpl	$124, -60(%rbp)
	je	.L76
	cmpl	$124, -60(%rbp)
	jg	.L74
	cmpl	$118, -60(%rbp)
	je	.L77
	cmpl	$118, -60(%rbp)
	jg	.L74
	cmpl	$105, -60(%rbp)
	je	.L78
	cmpl	$105, -60(%rbp)
	jg	.L74
	cmpl	$104, -60(%rbp)
	je	.L79
	cmpl	$104, -60(%rbp)
	jg	.L74
	cmpl	$102, -60(%rbp)
	je	.L80
	cmpl	$102, -60(%rbp)
	jg	.L74
	cmpl	$101, -60(%rbp)
	je	.L81
	cmpl	$101, -60(%rbp)
	jg	.L74
	cmpl	$13, -60(%rbp)
	je	.L82
	cmpl	$13, -60(%rbp)
	jg	.L74
	cmpl	$12, -60(%rbp)
	je	.L121
	cmpl	$12, -60(%rbp)
	jg	.L74
	cmpl	$11, -60(%rbp)
	je	.L122
	cmpl	$11, -60(%rbp)
	jg	.L74
	cmpl	$10, -60(%rbp)
	je	.L82
	cmpl	$10, -60(%rbp)
	jg	.L74
	cmpl	$9, -60(%rbp)
	je	.L85
	cmpl	$9, -60(%rbp)
	jg	.L74
	cmpl	$8, -60(%rbp)
	je	.L86
	cmpl	$8, -60(%rbp)
	jg	.L74
	cmpl	$1, -60(%rbp)
	je	.L87
	cmpl	$2, -60(%rbp)
	je	.L88
	jmp	.L74
.L87:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	acpt_close_socket
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L89
.L81:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	acpt_state
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L89
.L77:
	cmpq	$0, -80(%rbp)
	je	.L90
	cmpq	$0, -72(%rbp)
	jne	.L91
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$431, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	BIO_parse_hostserv@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L92
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$438, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L92:
	movq	-56(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L123
.L91:
	cmpq	$1, -72(%rbp)
	jne	.L94
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$441, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$442, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movq	$0, -8(%rbp)
	jmp	.L123
.L95:
	movq	-56(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L123
.L94:
	cmpq	$2, -72(%rbp)
	jne	.L96
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L123
.L96:
	cmpq	$3, -72(%rbp)
	jne	.L97
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 312(%rax)
	jmp	.L123
.L97:
	cmpq	$4, -72(%rbp)
	jne	.L98
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L123
.L98:
	cmpq	$5, -72(%rbp)
	jne	.L123
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L123
.L90:
	cmpq	$2, -72(%rbp)
	jne	.L99
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L123
.L99:
	cmpq	$5, -72(%rbp)
	jne	.L123
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L123
.L80:
	cmpq	$0, -72(%rbp)
	je	.L100
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L89
.L100:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L89
.L79:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	56(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$5, (%rax)
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L89
.L78:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L102
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L103
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L103:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L89
.L102:
	movq	$-1, -8(%rbp)
	jmp	.L89
.L76:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L105
	cmpq	$0, -72(%rbp)
	jne	.L106
	cmpq	$0, -80(%rbp)
	je	.L106
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L117
.L106:
	cmpq	$1, -72(%rbp)
	jne	.L108
	cmpq	$0, -80(%rbp)
	je	.L108
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L117
.L108:
	cmpq	$2, -72(%rbp)
	jne	.L109
	cmpq	$0, -80(%rbp)
	je	.L109
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L117
.L109:
	cmpq	$3, -72(%rbp)
	jne	.L110
	cmpq	$0, -80(%rbp)
	je	.L110
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L117
.L110:
	cmpq	$4, -72(%rbp)
	jne	.L111
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	cmpl	$10, %eax
	je	.L112
	cmpl	$10, %eax
	jg	.L113
	testl	%eax, %eax
	je	.L114
	cmpl	$2, %eax
	je	.L115
	jmp	.L113
.L112:
	movq	$6, -8(%rbp)
	jmp	.L117
.L115:
	movq	$4, -8(%rbp)
	jmp	.L117
.L114:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L117
.L113:
	movq	$-1, -8(%rbp)
	jmp	.L117
.L111:
	movq	$-1, -8(%rbp)
	jmp	.L89
.L105:
	movq	$-1, -8(%rbp)
	jmp	.L89
.L117:
	jmp	.L89
.L86:
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L89
.L85:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L89
.L82:
	movq	$0, -8(%rbp)
	jmp	.L89
.L75:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L89
.L73:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L89
.L88:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	movq	$0, -8(%rbp)
	jmp	.L89
.L118:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L89
.L74:
	movq	$0, -8(%rbp)
	jmp	.L89
.L121:
	nop
	jmp	.L89
.L122:
	nop
	jmp	.L89
.L123:
	nop
.L89:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	acpt_ctrl, .-acpt_ctrl
	.type	acpt_puts, @function
acpt_puts:
.LFB175:
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
	call	acpt_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	acpt_puts, .-acpt_puts
	.globl	BIO_new_accept
	.type	BIO_new_accept, @function
BIO_new_accept:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	BIO_s_accept@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L129
	movq	-8(%rbp), %rax
	jmp	.L128
.L129:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BIO_new_accept, .-BIO_new_accept
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"acpt_state"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

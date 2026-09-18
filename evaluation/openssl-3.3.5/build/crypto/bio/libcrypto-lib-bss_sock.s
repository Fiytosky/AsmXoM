	.file	"bss_sock.c"
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
	.string	"socket"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_sockp, @object
	.size	methods_sockp, 112
methods_sockp:
	.long	1285
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	sock_write
	.quad	bread_conv
	.quad	sock_read
	.quad	sock_puts
	.quad	0
	.quad	sock_ctrl
	.quad	sock_new
	.quad	sock_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_socket
	.type	BIO_s_socket, @function
BIO_s_socket:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_sockp(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_s_socket, .-BIO_s_socket
	.globl	BIO_new_socket
	.type	BIO_new_socket, @function
BIO_new_socket:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	call	BIO_s_socket@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_new_socket, .-BIO_new_socket
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bss_sock.c"
	.text
	.type	sock_new, @function
sock_new:
.LFB167:
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
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	leaq	.LC1(%rip), %rax
	movl	$94, %edx
	movq	%rax, %rsi
	movl	$116, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	sock_new, .-sock_new
	.type	sock_free, @function
sock_free:
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
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L17:
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.L16:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	sock_free, .-sock_free
	.type	sock_read, @function
sock_read:
.LFB169:
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
	cmpq	$0, -32(%rbp)
	je	.L19
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
	jg	.L19
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L20
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L19
.L20:
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
.L19:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	sock_read, .-sock_read
	.type	sock_write, @function
sock_write:
.LFB170:
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
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -4(%rbp)
	jg	.L23
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L23:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	sock_write, .-sock_write
	.type	sock_ctrl, @function
sock_ctrl:
.LFB171:
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
	cmpl	$123, -60(%rbp)
	je	.L26
	cmpl	$123, -60(%rbp)
	jg	.L27
	cmpl	$105, -60(%rbp)
	je	.L28
	cmpl	$105, -60(%rbp)
	jg	.L27
	cmpl	$104, -60(%rbp)
	je	.L29
	cmpl	$104, -60(%rbp)
	jg	.L27
	cmpl	$100, -60(%rbp)
	je	.L30
	cmpl	$100, -60(%rbp)
	jg	.L27
	cmpl	$92, -60(%rbp)
	jg	.L27
	cmpl	$91, -60(%rbp)
	jge	.L31
	cmpl	$12, -60(%rbp)
	jg	.L27
	cmpl	$11, -60(%rbp)
	jge	.L32
	cmpl	$9, -60(%rbp)
	je	.L33
	cmpl	$9, -60(%rbp)
	jg	.L27
	cmpl	$2, -60(%rbp)
	je	.L34
	cmpl	$8, -60(%rbp)
	je	.L35
	jmp	.L27
.L29:
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L36
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L37:
	movq	-56(%rbp), %rax
	movl	$0, 48(%rax)
.L36:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-16(%rbp), %rax
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L38
.L28:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L39
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L40
	movq	-56(%rbp), %rax
	movl	56(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L40:
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L38
.L39:
	movq	$-1, -8(%rbp)
	jmp	.L38
.L35:
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L38
.L33:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L38
.L32:
	movq	$1, -8(%rbp)
	jmp	.L38
.L31:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movq	$0, -8(%rbp)
	jmp	.L38
.L42:
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movl	56(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L38
.L34:
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2048, %eax
	shrl	$11, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L38
.L26:
	cmpq	$0, -80(%rbp)
	je	.L43
	cmpq	$2, -72(%rbp)
	jne	.L43
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	jmp	.L38
.L43:
	movq	$0, -8(%rbp)
	jmp	.L38
.L30:
	cmpq	$0, -80(%rbp)
	je	.L45
	cmpq	$2, -72(%rbp)
	jne	.L45
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_make@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-16(%rbp), %rax
	movl	$1, 112(%rax)
	jmp	.L47
.L45:
	movq	$0, -8(%rbp)
	jmp	.L38
.L47:
	jmp	.L38
.L27:
	movq	$0, -8(%rbp)
	nop
.L38:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	sock_ctrl, .-sock_ctrl
	.type	sock_puts, @function
sock_puts:
.LFB172:
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
	call	sock_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	sock_puts, .-sock_puts
	.globl	BIO_sock_should_retry
	.type	BIO_sock_should_retry, @function
BIO_sock_should_retry:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L52
	cmpl	$-1, -20(%rbp)
	jne	.L53
.L52:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_non_fatal_error@PLT
	jmp	.L54
.L53:
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BIO_sock_should_retry, .-BIO_sock_should_retry
	.globl	BIO_sock_non_fatal_error
	.type	BIO_sock_non_fatal_error, @function
BIO_sock_non_fatal_error:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$115, -4(%rbp)
	jg	.L60
	cmpl	$114, -4(%rbp)
	jge	.L57
	cmpl	$107, -4(%rbp)
	je	.L57
	cmpl	$107, -4(%rbp)
	jg	.L60
	cmpl	$71, -4(%rbp)
	je	.L57
	cmpl	$71, -4(%rbp)
	jg	.L60
	cmpl	$4, -4(%rbp)
	je	.L57
	cmpl	$11, -4(%rbp)
	jne	.L60
.L57:
	movl	$1, %eax
	jmp	.L58
.L60:
	nop
	movl	$0, %eax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BIO_sock_non_fatal_error, .-BIO_sock_non_fatal_error
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

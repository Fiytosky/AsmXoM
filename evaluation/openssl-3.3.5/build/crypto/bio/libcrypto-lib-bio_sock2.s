	.file	"bio_sock2.c"
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
	.string	"../crypto/bio/bio_sock2.c"
.LC1:
	.string	"calling socket()"
	.text
	.globl	BIO_socket
	.type	BIO_socket, @function
BIO_socket:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$-1, -4(%rbp)
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L6
	movl	$-1, %eax
	jmp	.L7
.L6:
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	socket@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L7
.L8:
	movl	-4(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_socket, .-BIO_socket
	.section	.rodata
.LC2:
	.string	"calling setsockopt()"
.LC3:
	.string	"calling connect()"
	.text
	.globl	BIO_connect
	.type	BIO_connect, @function
BIO_connect:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movl	$1, -20(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L10:
	movl	-40(%rbp), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L17
.L12:
	movl	-40(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L13
	leaq	-20(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	je	.L13
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L13:
	movl	-40(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L14
	leaq	-20(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	je	.L14
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L14:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %eax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect@PLT
	cmpl	$-1, %eax
	jne	.L15
	movl	$-1, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
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
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L16:
	movl	$0, %eax
	jmp	.L17
.L15:
	movl	$1, %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_connect, .-BIO_connect
	.section	.rodata
.LC4:
	.string	"calling bind()"
	.text
	.globl	BIO_bind
	.type	BIO_bind, @function
BIO_bind:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movl	$1, -20(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L19:
	movl	-40(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L21
	leaq	-20(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L21:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %eax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	testl	%eax, %eax
	je	.L22
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
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
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movl	$1, %eax
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_bind, .-BIO_bind
	.section	.rodata
.LC5:
	.string	"calling getsockopt()"
.LC6:
	.string	"calling listen()"
	.text
	.globl	BIO_listen
	.type	BIO_listen, @function
BIO_listen:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -4(%rbp)
	movl	$4, -12(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L25:
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	testl	%eax, %eax
	jne	.L27
	movl	-12(%rbp), %eax
	cmpl	$4, %eax
	je	.L28
.L27:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$301, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC5(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L28:
	movl	-24(%rbp), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L35
.L29:
	movl	-24(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L30
	leaq	-4(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	je	.L30
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L30:
	movl	-24(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L31
	leaq	-4(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	je	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L31:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$10, %eax
	jne	.L32
	movl	-24(%rbp), %eax
	sarl	%eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$26, %edx
	movl	$41, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$340, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L32:
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_bind@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L35
.L33:
	movl	-8(%rbp), %eax
	cmpl	$2, %eax
	je	.L34
	movl	-20(%rbp), %eax
	movl	$4096, %esi
	movl	%eax, %edi
	call	listen@PLT
	cmpl	$-1, %eax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_listen, .-BIO_listen
	.section	.rodata
.LC7:
	.string	"calling accept()"
	.text
	.globl	BIO_accept_ex
	.type	BIO_accept_ex, @function
BIO_accept_ex:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -136(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L37
	leaq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L38
.L37:
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
.L38:
	movl	$112, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_noconst@PLT
	movq	%rax, %rcx
	leaq	-16(%rbp), %rdx
	movl	-132(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	accept@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L39
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	BIO_sock_should_retry@PLT
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC7(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L40:
	movl	$-1, %eax
	jmp	.L43
.L39:
	movl	-136(%rbp), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	jne	.L42
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$-1, %eax
	jmp	.L43
.L42:
	movl	-12(%rbp), %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BIO_accept_ex, .-BIO_accept_ex
	.globl	BIO_closesocket
	.type	BIO_closesocket, @function
BIO_closesocket:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L45
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	testl	%eax, %eax
	jns	.L46
.L45:
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BIO_closesocket, .-BIO_closesocket
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"BIO_socket"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"BIO_connect"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 9
__func__.2:
	.string	"BIO_bind"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 11
__func__.1:
	.string	"BIO_listen"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"BIO_accept_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

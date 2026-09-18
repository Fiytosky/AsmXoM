	.file	"http_server.c"
	.text
	.globl	n_responders
	.bss
	.align 4
	.type	n_responders, @object
	.size	n_responders, 4
n_responders:
	.zero	4
	.globl	acfd
	.data
	.align 4
	.type	acfd, @object
	.size	acfd, 4
acfd:
	.long	-1
	.text
	.globl	socket_timeout
	.type	socket_timeout, @function
socket_timeout:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	acfd@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L3
	movq	acfd@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	shutdown@PLT
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	socket_timeout, .-socket_timeout
	.section	.rodata
.LC0:
	.string	"../apps/lib/http_server.c"
	.text
	.type	killall, @function
killall:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L5
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L6
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	kill@PLT
.L6:
	addl	$1, -4(%rbp)
.L5:
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L7
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1000, %edi
	call	OSSL_sleep@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE681:
	.size	killall, .-killall
	.local	termsig
	.comm	termsig,4,4
	.type	noteterm, @function
noteterm:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, termsig(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	noteterm, .-noteterm
	.section	.rodata
	.align 8
.LC1:
	.string	"error detaching from parent process group: %s"
.LC2:
	.string	"child PID array"
	.align 8
.LC3:
	.string	"internal error: no matching child slot for pid: %ld"
	.align 8
.LC4:
	.string	"child process: %ld, exit status: %d"
.LC5:
	.string	""
.LC6:
	.string	" (core dumped)"
	.align 8
.LC7:
	.string	"child process: %ld, term signal %d%s"
.LC8:
	.string	"waitpid() failed: %s"
.LC9:
	.string	"RAND_poll() failed"
.LC10:
	.string	"%s"
	.align 8
.LC11:
	.string	"internal error: no free child slots"
.LC12:
	.string	"terminating on signal: %d"
	.text
	.globl	spawn_loop
	.type	spawn_loop, @function
spawn_loop:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	openlog@PLT
	movl	$0, %esi
	movl	$0, %edi
	call	setpgid@PLT
	testl	%eax, %eax
	je	.L10
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L11
.L12:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -8(%rbp)
.L11:
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L12
	leaq	noteterm(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	signal@PLT
	leaq	noteterm(%rip), %rax
	movq	%rax, %rsi
	movl	$15, %edi
	call	signal@PLT
	jmp	.L13
.L26:
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$-1, %edi
	call	waitpid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L15
	movl	$0, -8(%rbp)
	jmp	.L16
.L19:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L17
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	subl	$1, -4(%rbp)
	jmp	.L18
.L17:
	addl	$1, -8(%rbp)
.L16:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L19
.L18:
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L20
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	killall
.L20:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L43
	movl	-32(%rbp), %eax
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L22
	movl	-32(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %esi
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	leaq	.LC4(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	jmp	.L23
.L22:
	movl	-32(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	testb	%al, %al
	jle	.L23
	leaq	.LC5(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L24
	leaq	.LC6(%rip), %rax
	movq	%rax, -16(%rbp)
.L24:
	movl	-32(%rbp), %eax
	andl	$127, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	leaq	.LC7(%rip), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	addq	$16, %rsp
.L23:
	movl	$1000, %edi
	call	OSSL_sleep@PLT
	jmp	.L43
.L15:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L14
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	killall
.L14:
	movl	termsig(%rip), %eax
	testl	%eax, %eax
	jne	.L25
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L26
	jmp	.L25
.L43:
	nop
.L25:
	movl	termsig(%rip), %eax
	testl	%eax, %eax
	jne	.L44
	call	fork@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.L29
	cmpl	$0, -28(%rbp)
	je	.L30
	jmp	.L42
.L29:
	movl	$30000, %edi
	call	OSSL_sleep@PLT
	jmp	.L13
.L30:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$156, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %esi
	movl	$2, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$15, %edi
	call	signal@PLT
	movl	termsig(%rip), %eax
	testl	%eax, %eax
	je	.L32
	movl	$0, %edi
	call	_exit@PLT
.L32:
	call	RAND_poll@PLT
	testl	%eax, %eax
	jg	.L45
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movl	$1, %edi
	call	_exit@PLT
.L42:
	movl	$0, -8(%rbp)
	jmp	.L35
.L38:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L36
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
	jmp	.L37
.L36:
	addl	$1, -8(%rbp)
.L35:
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L38
.L37:
	movq	n_responders@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L46
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	killall
.L46:
	nop
.L13:
	movl	termsig(%rip), %eax
	testl	%eax, %eax
	je	.L14
	jmp	.L28
.L44:
	nop
.L28:
	movl	termsig(%rip), %ecx
	leaq	.LC12(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	killall
	jmp	.L9
.L45:
	nop
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	spawn_loop, .-spawn_loop
	.section	.rodata
.LC13:
	.string	"*:%s"
.LC14:
	.string	"error setting up accept BIO"
	.align 8
.LC15:
	.string	"error setting accept on port %s"
.LC16:
	.string	"error printing ACCEPT string"
	.text
	.globl	http_server_init
	.type	http_server_init, @function
http_server_init:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	$0, -8(%rbp)
	movq	-80(%rbp), %rdx
	leaq	.LC13(%rip), %rsi
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	cmpl	$0, -84(%rbp)
	js	.L48
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	log_set_verbosity@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L56
.L48:
	call	BIO_f_buffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L57
	call	BIO_s_accept@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movl	$256, %ecx
	movl	$4, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	testq	%rax, %rax
	jle	.L52
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$131, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L52
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L53
.L52:
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	jmp	.L51
.L53:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$118, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L54
	movq	-80(%rbp), %rcx
	leaq	.LC15(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	jmp	.L51
.L54:
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-24(%rbp), %esi
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	report_server_accept@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L55
	leaq	.LC16(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	jmp	.L51
.L55:
	movq	-8(%rbp), %rax
	jmp	.L56
.L57:
	nop
.L51:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	http_server_init, .-http_server_init
	.type	urldecode, @function
urldecode:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L59
.L64:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L60
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L61
.L60:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L62
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L62
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	sall	$4, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	orl	%eax, %ebx
	movl	%ebx, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$2, -40(%rbp)
	jmp	.L61
.L62:
	movl	$-1, %eax
	jmp	.L63
.L61:
	addq	$1, -40(%rbp)
.L59:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L64
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	urldecode, .-urldecode
	.section	.rodata
.LC17:
	.string	"cannot get port listening on"
	.align 8
.LC18:
	.string	"awaiting new connection on port %s ..."
.LC19:
	.string	"awaiting next request ..."
.LC20:
	.string	"request line read error"
.LC21:
	.string	"Bad Request"
	.align 8
.LC22:
	.string	"received request, 1st line: %s"
.LC23:
	.string	"received request header:"
	.align 8
.LC24:
	.string	"cannot parse HTTP header: missing end of line"
.LC25:
	.string	"GET "
.LC26:
	.string	"POST "
	.align 8
.LC27:
	.string	"invalid %s -- URL does not begin with '/': %s"
.LC28:
	.string	" HTTP/1."
	.align 8
.LC29:
	.string	"invalid %s -- bad HTTP/version string: %s"
.LC30:
	.string	"OK"
	.align 8
.LC31:
	.string	"invalid %s request -- bad URL encoding: %s"
	.align 8
.LC32:
	.string	"could not allocate base64 bio with size = %d"
.LC33:
	.string	"GET or "
	.align 8
.LC34:
	.string	"HTTP request does not begin with %sPOST: %s"
.LC35:
	.string	"error reading HTTP header"
.LC36:
	.string	" "
	.align 8
.LC37:
	.string	"error parsing HTTP header: missing end of line"
	.align 8
.LC38:
	.string	"error parsing HTTP header: missing ':'"
.LC39:
	.string	"Connection"
.LC40:
	.string	"keep-alive"
.LC41:
	.string	"close"
	.align 8
.LC42:
	.string	"error parsing DER-encoded request content"
	.align 8
.LC43:
	.string	"out of memory allocating %zu bytes"
.LC44:
	.string	"Internal Server Error"
	.text
	.globl	http_server_get_asn1_req
	.type	http_server_get_asn1_req, @function
http_server_get_asn1_req:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4256, %rsp
	movq	%rdi, -4216(%rbp)
	movq	%rsi, -4224(%rbp)
	movq	%rdx, -4232(%rbp)
	movq	%rcx, -4240(%rbp)
	movq	%r8, -4248(%rbp)
	movq	%r9, -4256(%rbp)
	movq	-4240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -36(%rbp)
	movq	-4224(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -4232(%rbp)
	je	.L66
	movq	-4232(%rbp), %rax
	movq	$0, (%rax)
.L66:
	cmpq	$0, -8(%rbp)
	jne	.L67
	movq	-4248(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %ecx
	leaq	-4200(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	get_sock_info_address@PLT
	movq	-4200(%rbp), %rax
	testq	%rax, %rax
	jne	.L68
	leaq	.LC17(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	jmp	.L69
.L68:
	movq	-4200(%rbp), %rcx
	leaq	.LC18(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$7, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movq	-4200(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$288, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-4248(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L70
	movl	-36(%rbp), %eax
	jmp	.L129
.L70:
	movq	-4248(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	%rax, -8(%rbp)
	movq	-4240(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L72
.L67:
	leaq	.LC19(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$7, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
.L72:
	cmpq	$0, -8(%rbp)
	jne	.L73
	movl	$-1, -36(%rbp)
	jmp	.L74
.L73:
	cmpl	$0, 32(%rbp)
	jle	.L75
	movq	acfd@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	32(%rbp), %eax
	movl	%eax, %edi
	call	alarm@PLT
.L75:
	leaq	-2144(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L76
	movl	-36(%rbp), %eax
	jmp	.L129
.L76:
	movl	$1, -36(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L77
	leaq	.LC20(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L77:
	leaq	-2144(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L78
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L79
.L78:
	leaq	-2144(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L80
.L79:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L80:
	call	log_get_verbosity@PLT
	cmpl	$7, %eax
	jg	.L81
	leaq	-2144(%rbp), %rcx
	leaq	.LC22(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$-1, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
.L81:
	leaq	.LC23(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	-2144(%rbp), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	cmpq	$0, -32(%rbp)
	jne	.L82
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L82:
	leaq	-2144(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, 24(%rbp)
	je	.L83
	leaq	.LC25(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L83
	addq	$4, -24(%rbp)
	jmp	.L84
.L83:
	leaq	.LC26(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L85
	addq	$5, -24(%rbp)
.L84:
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movb	$0, (%rax)
	jmp	.L86
.L87:
	addq	$1, -24(%rbp)
.L86:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L87
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L88
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rcx
	leaq	.LC27(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L88:
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L89
.L92:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L131
	addq	$1, -32(%rbp)
.L89:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L92
	jmp	.L91
.L131:
	nop
.L91:
	leaq	.LC28(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L93
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-72(%rbp), %rcx
	leaq	.LC29(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L93:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -4256(%rbp)
	je	.L94
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	setg	%al
	movzbl	%al, %edx
	movq	-4256(%rbp), %rax
	movl	%edx, (%rax)
.L94:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$3, %rax
	jne	.L95
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L95
	leaq	.LC30(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$200, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L95:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	urldecode
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L96
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rcx
	leaq	.LC31(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L96:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$3, %rax
	jne	.L100
	movl	-60(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L98
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L99
.L98:
	movl	-60(%rbp), %ecx
	leaq	.LC32(%rip), %rdx
	movq	16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	jmp	.L69
.L99:
	movq	-56(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -16(%rbp)
	jmp	.L100
.L85:
	cmpl	$0, 24(%rbp)
	je	.L101
	leaq	.LC33(%rip), %rax
	jmp	.L102
.L101:
	leaq	.LC5(%rip), %rax
.L102:
	leaq	-2144(%rbp), %rcx
	leaq	.LC34(%rip), %rdx
	movq	16(%rbp), %rsi
	movq	%rcx, %r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L100:
	jmp	.L103
.L104:
	addq	$1, -24(%rbp)
.L103:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L104
	jmp	.L105
.L107:
	subq	$1, -32(%rbp)
.L105:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L106
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L106
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L107
.L106:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L122:
	leaq	-4192(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L108
	leaq	.LC35(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L108:
	leaq	-4192(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L109
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L110
.L109:
	leaq	-4192(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L111
.L110:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L111:
	movzbl	-4192(%rbp), %eax
	testb	%al, %al
	je	.L112
	leaq	-4192(%rbp), %rax
	jmp	.L113
.L112:
	leaq	.LC36(%rip), %rax
.L113:
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rsi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	cmpq	$0, -32(%rbp)
	jne	.L114
	leaq	.LC37(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L114:
	movzbl	-4192(%rbp), %eax
	testb	%al, %al
	je	.L132
	leaq	-4192(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L117
	leaq	.LC38(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L74
.L117:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	jmp	.L118
.L119:
	addq	$1, -48(%rbp)
.L118:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L119
	cmpq	$0, -4256(%rbp)
	je	.L122
	leaq	.LC39(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L122
	leaq	.LC40(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L121
	movq	-4256(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L122
.L121:
	leaq	.LC41(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L122
	movq	-4256(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L122
.L132:
	nop
	movl	$0, %edi
	call	alarm@PLT
	movl	$0, 32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-16(%rbp), %rax
	jmp	.L124
.L123:
	movq	-8(%rbp), %rax
.L124:
	movq	-4216(%rbp), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_d2i_bio@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L125
	leaq	.LC42(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$400, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	jmp	.L126
.L125:
	cmpq	$0, -4232(%rbp)
	je	.L126
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$471, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-4232(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-4232(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L126
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rcx
	leaq	.LC43(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	movq	-4216(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	jmp	.L69
.L126:
	movq	-4224(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
.L74:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	cmpl	$0, 32(%rbp)
	jle	.L127
	movl	$0, %edi
	call	alarm@PLT
.L127:
	movq	acfd@GOTPCREL(%rip), %rax
	movl	$-1, (%rax)
	movl	-36(%rbp), %eax
	jmp	.L129
.L69:
	leaq	.LC44(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$500, %edx
	movq	%rax, %rdi
	call	http_server_send_status@PLT
	cmpq	$0, -4232(%rbp)
	je	.L128
	movq	-4232(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$492, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-4232(%rbp), %rax
	movq	$0, (%rax)
.L128:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-4240(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -36(%rbp)
	jmp	.L74
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	http_server_get_asn1_req, .-http_server_get_asn1_req
	.section	.rodata
.LC45:
	.string	"Connection: keep-alive\r\n"
	.align 8
.LC46:
	.string	"HTTP/1.0 200 OK\r\n%sContent-type: %s\r\nContent-Length: %d\r\n"
	.align 8
.LC47:
	.string	"sending response, 1st line: %.*s"
.LC48:
	.string	"sending response header:\n%s"
.LC49:
	.string	"%s\r\n"
	.text
	.globl	http_server_send_asn1_resp
	.type	http_server_send_asn1_resp, @function
http_server_send_asn1_resp:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, %ecx
	cmpl	$0, -244(%rbp)
	je	.L134
	leaq	.LC45(%rip), %rax
	jmp	.L135
.L134:
	leaq	.LC5(%rip), %rax
.L135:
	movq	-256(%rbp), %rsi
	leaq	.LC46(%rip), %rdx
	leaq	-224(%rbp), %rdi
	movl	%ecx, %r9d
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$200, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L136
	movl	-4(%rbp), %eax
	cmpl	$199, %eax
	jbe	.L137
.L136:
	movl	$0, %eax
	jmp	.L142
.L137:
	call	log_get_verbosity@PLT
	cmpl	$7, %eax
	jg	.L139
	leaq	-224(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L139
	leaq	-224(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movl	%edx, %esi
	leaq	-224(%rbp), %rcx
	leaq	.LC47(%rip), %rdx
	movq	-232(%rbp), %rax
	movq	%rcx, %r9
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$-1, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
.L139:
	leaq	-224(%rbp), %rcx
	leaq	.LC48(%rip), %rdx
	movq	-232(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	-224(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L140
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d_bio@PLT
	testl	%eax, %eax
	jle	.L140
	movl	$1, %eax
	jmp	.L141
.L140:
	movl	$0, %eax
.L141:
	movl	%eax, -4(%rbp)
	movq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-4(%rbp), %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	http_server_send_asn1_resp, .-http_server_send_asn1_resp
	.section	.rodata
.LC50:
	.string	"HTTP/1.0 %d %s\r\n\r\n"
	.text
	.globl	http_server_send_status
	.type	http_server_send_status, @function
http_server_send_status:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -228(%rbp)
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	movl	-228(%rbp), %edx
	leaq	.LC50(%rip), %rsi
	leaq	-208(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$200, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L144
	movl	-4(%rbp), %eax
	cmpl	$199, %eax
	jbe	.L145
.L144:
	movl	$0, %eax
	jmp	.L147
.L145:
	leaq	-208(%rbp), %rcx
	leaq	.LC48(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	trace_log_message@PLT
	leaq	-208(%rbp), %rdx
	leaq	.LC49(%rip), %rcx
	movq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-224(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-4(%rbp), %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	http_server_send_status, .-http_server_send_status
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"bss_dgram.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L2
	movl	$1, %ecx
.L2:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_timeval, @function
ossl_time_to_timeval:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movl	$999, %esi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L17
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
.L17:
	movq	-40(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ossl_time_to_timeval, .-ossl_time_to_timeval
	.type	ossl_time_from_timeval, @function
ossl_time_from_timeval:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L20
	call	ossl_time_zero
	jmp	.L22
.L20:
	movq	-32(%rbp), %rax
	imulq	$1000000000, %rax, %rdx
	movq	-24(%rbp), %rax
	imulq	$1000, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ossl_time_from_timeval, .-ossl_time_from_timeval
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L26
	movl	$-1, %eax
	jmp	.L25
.L26:
	movl	$0, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_sub_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L30
	call	ossl_time_zero
	jmp	.L32
.L30:
	movq	-8(%rbp), %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
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
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
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
.LFE173:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"datagram socket"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_dgramp, @object
	.size	methods_dgramp, 112
methods_dgramp:
	.long	1301
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	dgram_write
	.quad	bread_conv
	.quad	dgram_read
	.quad	dgram_puts
	.quad	0
	.quad	dgram_ctrl
	.quad	dgram_new
	.quad	dgram_free
	.quad	0
	.quad	dgram_sendmmsg
	.quad	dgram_recvmmsg
	.text
	.globl	BIO_s_datagram
	.type	BIO_s_datagram, @function
BIO_s_datagram:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_dgramp(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	BIO_s_datagram, .-BIO_s_datagram
	.globl	BIO_new_dgram
	.type	BIO_new_dgram, @function
BIO_new_dgram:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	call	BIO_s_datagram@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-8(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	BIO_new_dgram, .-BIO_new_dgram
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bss_dgram.c"
	.text
	.type	dgram_new, @function
dgram_new:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$266, %edx
	movq	%rax, %rsi
	movl	$264, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	dgram_new, .-dgram_new
	.type	dgram_free, @function
dgram_free:
.LFB196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_clear
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$284, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	dgram_free, .-dgram_free
	.type	dgram_clear, @function
dgram_clear:
.LFB197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L53:
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.L52:
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	dgram_clear, .-dgram_clear
	.section	.rodata
.LC2:
	.string	"calling getsockopt()"
.LC3:
	.string	"calling setsockopt()"
	.text
	.type	dgram_adjust_rcv_timeout, @function
dgram_adjust_rcv_timeout:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L61
	movl	$16, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-52(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	testl	%eax, %eax
	jns	.L56
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L56:
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ossl_time_from_timeval
	movq	%rax, 248(%rbx)
.L57:
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -32(%rbp)
	movl	$1000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jns	.L58
	movl	$1000, %edi
	call	ossl_ticks2time
	movq	%rax, -32(%rbp)
.L58:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L59
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L61
.L59:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-48(%rbp), %rdx
	movl	$16, %r8d
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	jns	.L61
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L61:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	dgram_adjust_rcv_timeout, .-dgram_adjust_rcv_timeout
	.type	dgram_update_local_addr, @function
dgram_update_local_addr:
.LFB199:
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
	movl	$112, -12(%rbp)
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname@PLT
	testl	%eax, %eax
	jns	.L64
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L64:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	dgram_update_local_addr, .-dgram_update_local_addr
	.type	dgram_get_sock_family, @function
dgram_get_sock_family:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	112(%rax), %eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	dgram_get_sock_family, .-dgram_get_sock_family
	.type	dgram_reset_rcv_timeout, @function
dgram_reset_rcv_timeout:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L70
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-32(%rbp), %rdx
	movl	$16, %r8d
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	jns	.L70
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$401, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L70:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	dgram_reset_rcv_timeout, .-dgram_reset_rcv_timeout
	.type	dgram_read, @function
dgram_read:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$112, -132(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L72
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_adjust_rcv_timeout
	movq	-16(%rbp), %rax
	movl	256(%rax), %eax
	testl	%eax, %eax
	je	.L73
	movl	$2, -8(%rbp)
.L73:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_noconst@PLT
	movq	%rax, %r8
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-132(%rbp), %rdi
	movl	-8(%rbp), %ecx
	movq	-160(%rbp), %rsi
	movq	%rdi, %r9
	movl	%eax, %edi
	call	recvfrom@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	224(%rax), %eax
	testl	%eax, %eax
	jne	.L74
	cmpl	$0, -4(%rbp)
	js	.L74
	leaq	-128(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L74:
	movq	-152(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -4(%rbp)
	jns	.L75
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_dgram_should_retry
	testl	%eax, %eax
	je	.L75
	movq	-152(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 228(%rax)
.L75:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_reset_rcv_timeout
.L72:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	dgram_read, .-dgram_read
	.type	dgram_write, @function
dgram_write:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	224(%rax), %eax
	testl	%eax, %eax
	je	.L78
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movl	%eax, -20(%rbp)
	jmp	.L79
.L78:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rcx
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movq	-64(%rbp), %rsi
	movl	%ebx, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	%eax, %edi
	call	sendto@PLT
	movl	%eax, -20(%rbp)
.L79:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -20(%rbp)
	jg	.L80
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	BIO_dgram_should_retry
	testl	%eax, %eax
	je	.L80
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 228(%rax)
.L80:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	dgram_write, .-dgram_write
	.type	dgram_get_mtu_overhead, @function
dgram_get_mtu_overhead:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$2, %eax
	je	.L83
	cmpl	$10, %eax
	je	.L84
	jmp	.L92
.L83:
	movq	$28, -24(%rbp)
	jmp	.L86
.L84:
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	je	.L87
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L88
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L88
	movq	-32(%rbp), %rax
	movl	8(%rax), %ebx
	movl	$65535, %edi
	call	htonl@PLT
	cmpl	%eax, %ebx
	jne	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	$0, %eax
.L89:
	testl	%eax, %eax
	je	.L87
	movq	$28, -24(%rbp)
	jmp	.L86
.L87:
	movq	$48, -24(%rbp)
	jmp	.L86
.L92:
	movq	$28, -24(%rbp)
	nop
.L86:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	dgram_get_mtu_overhead, .-dgram_get_mtu_overhead
	.type	enable_local_addr, @function
enable_local_addr:
.LFB205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_sock_family
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	jne	.L94
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-28(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	jns	.L95
	movl	$0, %eax
	jmp	.L96
.L95:
	movl	$1, %eax
	jmp	.L96
.L94:
	cmpl	$10, -4(%rbp)
	jne	.L97
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-28(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$49, %edx
	movl	$41, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	testl	%eax, %eax
	jns	.L98
	movl	$0, %eax
	jmp	.L96
.L98:
	movl	$1, %eax
	jmp	.L96
.L97:
	movl	$0, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	enable_local_addr, .-enable_local_addr
	.section	.rodata
	.align 8
.LC4:
	.string	"assertion failed: (size_t)sz <= sizeof(struct timeval)"
	.text
	.type	dgram_ctrl, @function
dgram_ctrl:
.LFB206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$504, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -488(%rbp)
	movl	%esi, -492(%rbp)
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movq	$1, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -72(%rbp)
	movl	$128, -324(%rbp)
	movq	-488(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$105, -492(%rbp)
	je	.L100
	cmpl	$105, -492(%rbp)
	jg	.L101
	cmpl	$104, -492(%rbp)
	je	.L102
	cmpl	$104, -492(%rbp)
	jg	.L101
	cmpl	$102, -492(%rbp)
	je	.L103
	cmpl	$102, -492(%rbp)
	jg	.L101
	cmpl	$93, -492(%rbp)
	je	.L104
	cmpl	$93, -492(%rbp)
	jg	.L101
	cmpl	$92, -492(%rbp)
	jg	.L101
	cmpl	$91, -492(%rbp)
	jge	.L105
	cmpl	$85, -492(%rbp)
	je	.L106
	cmpl	$85, -492(%rbp)
	jg	.L101
	cmpl	$84, -492(%rbp)
	je	.L107
	cmpl	$84, -492(%rbp)
	jg	.L101
	cmpl	$83, -492(%rbp)
	je	.L108
	cmpl	$83, -492(%rbp)
	jg	.L101
	cmpl	$82, -492(%rbp)
	je	.L109
	cmpl	$82, -492(%rbp)
	jg	.L101
	cmpl	$71, -492(%rbp)
	je	.L110
	cmpl	$71, -492(%rbp)
	jg	.L101
	cmpl	$50, -492(%rbp)
	je	.L110
	cmpl	$50, -492(%rbp)
	jg	.L101
	cmpl	$49, -492(%rbp)
	je	.L111
	cmpl	$49, -492(%rbp)
	jg	.L101
	cmpl	$48, -492(%rbp)
	je	.L112
	cmpl	$48, -492(%rbp)
	jg	.L101
	cmpl	$47, -492(%rbp)
	je	.L113
	cmpl	$47, -492(%rbp)
	jg	.L101
	cmpl	$46, -492(%rbp)
	je	.L114
	cmpl	$46, -492(%rbp)
	jg	.L101
	cmpl	$45, -492(%rbp)
	je	.L115
	cmpl	$45, -492(%rbp)
	jg	.L101
	cmpl	$44, -492(%rbp)
	je	.L116
	cmpl	$44, -492(%rbp)
	jg	.L101
	cmpl	$43, -492(%rbp)
	je	.L117
	cmpl	$43, -492(%rbp)
	jg	.L101
	cmpl	$42, -492(%rbp)
	je	.L118
	cmpl	$42, -492(%rbp)
	jg	.L101
	cmpl	$41, -492(%rbp)
	je	.L119
	cmpl	$41, -492(%rbp)
	jg	.L101
	cmpl	$40, -492(%rbp)
	je	.L120
	cmpl	$40, -492(%rbp)
	jg	.L101
	cmpl	$39, -492(%rbp)
	je	.L121
	cmpl	$39, -492(%rbp)
	jg	.L101
	cmpl	$38, -492(%rbp)
	jg	.L101
	cmpl	$37, -492(%rbp)
	jge	.L122
	cmpl	$36, -492(%rbp)
	je	.L123
	cmpl	$36, -492(%rbp)
	jg	.L101
	cmpl	$35, -492(%rbp)
	je	.L124
	cmpl	$35, -492(%rbp)
	jg	.L101
	cmpl	$34, -492(%rbp)
	je	.L125
	cmpl	$34, -492(%rbp)
	jg	.L101
	cmpl	$33, -492(%rbp)
	je	.L126
	cmpl	$33, -492(%rbp)
	jg	.L101
	cmpl	$32, -492(%rbp)
	je	.L127
	cmpl	$32, -492(%rbp)
	jg	.L101
	cmpl	$31, -492(%rbp)
	je	.L128
	cmpl	$31, -492(%rbp)
	jg	.L101
	cmpl	$13, -492(%rbp)
	je	.L129
	cmpl	$13, -492(%rbp)
	jg	.L101
	cmpl	$12, -492(%rbp)
	jg	.L101
	cmpl	$11, -492(%rbp)
	jge	.L130
	cmpl	$10, -492(%rbp)
	je	.L129
	cmpl	$10, -492(%rbp)
	jg	.L101
	cmpl	$9, -492(%rbp)
	je	.L131
	cmpl	$9, -492(%rbp)
	jg	.L101
	cmpl	$8, -492(%rbp)
	je	.L132
	cmpl	$8, -492(%rbp)
	jg	.L101
	cmpl	$1, -492(%rbp)
	je	.L133
	cmpl	$3, -492(%rbp)
	je	.L134
	jmp	.L101
.L133:
	movq	$0, -504(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L135
.L134:
	movq	$0, -24(%rbp)
	jmp	.L135
.L102:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_clear
	movq	-512(%rbp), %rax
	movl	(%rax), %edx
	movq	-488(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-488(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-488(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_update_local_addr
	leaq	-320(%rbp), %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-324(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getpeername@PLT
	testl	%eax, %eax
	jne	.L136
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_make@PLT
	movq	-40(%rbp), %rax
	movl	$1, 224(%rax)
.L136:
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	testb	%al, %al
	je	.L205
	movq	-488(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	enable_local_addr
	testl	%eax, %eax
	jg	.L205
	movq	-40(%rbp), %rax
	movb	$0, 260(%rax)
	jmp	.L205
.L100:
	movq	-488(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L138
	movq	-512(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L139
	movq	-488(%rbp), %rax
	movl	56(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L139:
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	jmp	.L135
.L138:
	movq	$-1, -24(%rbp)
	jmp	.L135
.L132:
	movq	-488(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	jmp	.L135
.L131:
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-488(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L135
.L129:
	movq	$0, -24(%rbp)
	jmp	.L135
.L130:
	movq	$1, -24(%rbp)
	jmp	.L135
.L128:
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_make@PLT
	jmp	.L135
.L121:
	movl	$112, -80(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname@PLT
	testl	%eax, %eax
	jns	.L141
	movq	$0, -24(%rbp)
	jmp	.L135
.L141:
	movzwl	-192(%rbp), %eax
	movzwl	%ax, %eax
	cmpl	$2, %eax
	je	.L142
	cmpl	$10, %eax
	je	.L143
	jmp	.L201
.L142:
	movl	$2, -72(%rbp)
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-72(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L206
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$634, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L206
.L143:
	movl	$2, -72(%rbp)
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-72(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$23, %edx
	movl	$41, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L207
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$642, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L207
.L201:
	movq	$-1, -24(%rbp)
	jmp	.L146
.L206:
	nop
	jmp	.L135
.L207:
	nop
.L146:
	jmp	.L135
.L120:
	movl	$112, -80(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname@PLT
	testl	%eax, %eax
	jns	.L148
	movq	$0, -24(%rbp)
	jmp	.L135
.L148:
	movl	$4, -76(%rbp)
	movzwl	-192(%rbp), %eax
	movzwl	%ax, %eax
	cmpl	$2, %eax
	je	.L149
	cmpl	$10, %eax
	je	.L150
	jmp	.L202
.L149:
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-76(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$14, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	js	.L152
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	jns	.L153
.L152:
	movq	$0, -24(%rbp)
	jmp	.L155
.L153:
	movl	-72(%rbp), %eax
	movl	%eax, %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_mtu_overhead
	subl	%eax, %ebx
	movl	%ebx, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	jmp	.L155
.L150:
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-76(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$41, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	js	.L156
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	jns	.L157
.L156:
	movq	$0, -24(%rbp)
	jmp	.L155
.L157:
	movl	-72(%rbp), %eax
	movl	%eax, %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_mtu_overhead
	subl	%eax, %ebx
	movl	%ebx, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	jmp	.L155
.L202:
	movq	$0, -24(%rbp)
	nop
.L155:
	jmp	.L135
.L113:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_mtu_overhead
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$2, %eax
	je	.L159
	cmpl	$10, %eax
	je	.L160
	jmp	.L203
.L159:
	addq	$576, -24(%rbp)
	jmp	.L162
.L160:
	movq	-40(%rbp), %rax
	leaq	-352(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	je	.L163
	leaq	-352(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L164
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L164
	movq	-64(%rbp), %rax
	movl	8(%rax), %ebx
	movl	$65535, %edi
	call	htonl@PLT
	cmpl	%eax, %ebx
	jne	.L164
	movl	$1, %eax
	jmp	.L165
.L164:
	movl	$0, %eax
.L165:
	testl	%eax, %eax
	je	.L163
	addq	$576, -24(%rbp)
	jmp	.L162
.L163:
	addq	$1280, -24(%rbp)
	jmp	.L162
.L203:
	addq	$576, -24(%rbp)
	nop
.L162:
	jmp	.L135
.L119:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	movl	%eax, %eax
	jmp	.L200
.L118:
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-504(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L135
.L127:
	cmpq	$0, -512(%rbp)
	je	.L168
	movq	-40(%rbp), %rax
	movl	$1, 224(%rax)
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_make@PLT
	jmp	.L135
.L168:
	movq	-40(%rbp), %rax
	movl	$0, 224(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	jmp	.L135
.L114:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -504(%rbp)
	je	.L170
	movq	-504(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L171
.L170:
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)
.L171:
	movq	-504(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L135
.L116:
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_make@PLT
	jmp	.L135
.L104:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$16, -356(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	jne	.L172
	leaq	-480(%rbp), %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-356(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getpeername@PLT
	testl	%eax, %eax
	jne	.L173
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L173
	leaq	-480(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L172
.L173:
	movq	$0, -24(%rbp)
	jmp	.L135
.L172:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -504(%rbp)
	je	.L174
	movq	-504(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L175
.L174:
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)
.L175:
	movq	-504(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L135
.L103:
	cmpq	$0, -504(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	jne	.L208
	movq	$0, -24(%rbp)
	jmp	.L208
.L115:
	movq	-40(%rbp), %rbx
	movq	-512(%rbp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ossl_time_from_timeval
	movq	%rax, 240(%rbx)
	jmp	.L135
.L126:
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	movq	-512(%rbp), %rdx
	movl	$16, %r8d
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L209
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$790, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L125:
	movl	$16, -360(%rbp)
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-360(%rbp), %rcx
	movq	-512(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L178
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$815, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L178:
	movl	-360(%rbp), %eax
	cmpl	$16, %eax
	jbe	.L180
	leaq	.LC1(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$818, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L180:
	movl	-360(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	jmp	.L135
.L124:
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	movq	-512(%rbp), %rdx
	movl	$16, %r8d
	movq	%rdx, %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L210
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$840, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L210
.L123:
	movl	$16, -364(%rbp)
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-364(%rbp), %rcx
	movq	-512(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	getsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L182
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$866, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L182:
	movl	-364(%rbp), %eax
	cmpl	$16, %eax
	jbe	.L184
	leaq	.LC1(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$869, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L184:
	movl	-364(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	jmp	.L135
.L122:
	movq	-40(%rbp), %rax
	movl	228(%rax), %eax
	cmpl	$11, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L185
	movq	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 228(%rax)
	jmp	.L135
.L185:
	movq	$0, -24(%rbp)
	jmp	.L135
.L117:
	movq	-40(%rbp), %rax
	movl	228(%rax), %eax
	cmpl	$90, %eax
	jne	.L187
	movq	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 228(%rax)
	jmp	.L135
.L187:
	movq	$0, -24(%rbp)
	jmp	.L135
.L112:
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$2, %eax
	je	.L189
	cmpl	$10, %eax
	je	.L190
	jmp	.L204
.L189:
	cmpq	$0, -504(%rbp)
	je	.L192
	movl	$3, %eax
	jmp	.L193
.L192:
	movl	$0, %eax
.L193:
	movl	%eax, -72(%rbp)
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-72(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L211
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$912, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L190:
	cmpq	$0, -504(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	movq	-488(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-72(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$62, %edx
	movl	$41, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L212
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$932, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L212
.L204:
	movq	$-1, -24(%rbp)
	jmp	.L195
.L211:
	nop
	jmp	.L135
.L212:
	nop
.L195:
	jmp	.L135
.L111:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_mtu_overhead
	movq	%rax, -24(%rbp)
	jmp	.L135
.L110:
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 256(%rax)
	jmp	.L135
.L109:
	movq	$1, -24(%rbp)
	jmp	.L135
.L107:
	cmpq	$0, -504(%rbp)
	setg	%al
	movzbl	%al, %eax
	movq	%rax, -504(%rbp)
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	movsbq	%al, %rax
	cmpq	%rax, -504(%rbp)
	je	.L213
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-488(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	enable_local_addr
	testl	%eax, %eax
	jg	.L198
	movq	$0, -24(%rbp)
	jmp	.L135
.L198:
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, 260(%rax)
	jmp	.L213
.L108:
	movq	-40(%rbp), %rax
	movzbl	260(%rax), %eax
	movsbl	%al, %edx
	movq	-512(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L135
.L106:
	movq	$15, -24(%rbp)
	jmp	.L135
.L105:
	movq	-512(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-488(%rbp), %rax
	movl	56(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L135
.L101:
	movq	$0, -24(%rbp)
	jmp	.L135
.L205:
	nop
	jmp	.L135
.L208:
	nop
	jmp	.L135
.L209:
	nop
	jmp	.L135
.L210:
	nop
	jmp	.L135
.L213:
	nop
.L135:
	cmpq	$0, -24(%rbp)
	jns	.L199
	movq	$-1, -24(%rbp)
.L199:
	movq	-24(%rbp), %rax
.L200:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	dgram_ctrl, .-dgram_ctrl
	.type	dgram_puts, @function
dgram_puts:
.LFB207:
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
	call	dgram_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	dgram_puts, .-dgram_puts
	.type	translate_msg, @function
translate_msg:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	224(%rax), %eax
	testl	%eax, %eax
	jne	.L217
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L218
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	jmp	.L219
.L218:
	movl	$0, %edx
.L219:
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L220
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_sock_family
	cmpl	$2, %eax
	jne	.L220
	movq	-32(%rbp), %rax
	movl	$16, 8(%rax)
	jmp	.L223
.L220:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L222
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_sock_family
	cmpl	$10, %eax
	jne	.L222
	movq	-32(%rbp), %rax
	movl	$28, 8(%rax)
	jmp	.L223
.L222:
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L223
.L217:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
.L223:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$1, 24(%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L224
	movq	-48(%rbp), %rax
	jmp	.L225
.L224:
	movl	$0, %eax
.L225:
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movl	$40, %edx
	jmp	.L227
.L226:
	movl	$0, %edx
.L227:
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	translate_msg, .-translate_msg
	.type	extract_local, @function
extract_local:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_sock_family
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$15, %rax
	jbe	.L229
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L231
.L229:
	movq	$0, -8(%rbp)
	jmp	.L231
.L239:
	cmpl	$2, -12(%rbp)
	jne	.L232
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L240
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$8, %eax
	jne	.L241
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	8(%rdx), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movw	$2, (%rax)
	movq	-32(%rbp), %rax
	movzwl	114(%rax), %edx
	movq	-56(%rbp), %rax
	movw	%dx, 2(%rax)
	movl	$1, %eax
	jmp	.L236
.L232:
	cmpl	$10, -12(%rbp)
	jne	.L234
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$41, %eax
	jne	.L242
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$50, %eax
	jne	.L243
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	-56(%rbp), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	movq	-56(%rbp), %rax
	movw	$10, (%rax)
	movq	-24(%rbp), %rax
	movzwl	114(%rax), %edx
	movq	-56(%rbp), %rax
	movw	%dx, 2(%rax)
	movq	-24(%rbp), %rax
	movl	136(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$1, %eax
	jmp	.L236
.L240:
	nop
	jmp	.L234
.L241:
	nop
	jmp	.L234
.L242:
	nop
	jmp	.L234
.L243:
	nop
.L234:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__cmsg_nxthdr@PLT
	movq	%rax, -8(%rbp)
.L231:
	cmpq	$0, -8(%rbp)
	jne	.L239
	movl	$0, %eax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	extract_local, .-extract_local
	.type	pack_local, @function
pack_local:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_get_sock_family
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -4(%rbp)
	jne	.L245
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$28, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$8, 12(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	4(%rdx), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %eax
	testw	%ax, %ax
	je	.L246
	movq	-16(%rbp), %rax
	movzwl	114(%rax), %edx
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %eax
	cmpw	%ax, %dx
	je	.L246
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L247
.L246:
	movq	-64(%rbp), %rax
	movq	$32, 40(%rax)
	movl	$1, %eax
	jmp	.L247
.L245:
	cmpl	$10, -4(%rbp)
	jne	.L248
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$36, (%rax)
	movq	-24(%rbp), %rax
	movl	$41, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$50, 12(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %eax
	testw	%ax, %ax
	je	.L249
	movq	-16(%rbp), %rax
	movzwl	114(%rax), %edx
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %eax
	cmpw	%ax, %dx
	je	.L249
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L247
.L249:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L250
	movq	-16(%rbp), %rax
	movl	136(%rax), %edx
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L250
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L247
.L250:
	movq	-64(%rbp), %rax
	movq	$40, 40(%rax)
	movl	$1, %eax
	jmp	.L247
.L248:
	movl	$0, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	pack_local, .-pack_local
	.type	translate_flags, @function
translate_flags:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	translate_flags, .-translate_flags
	.type	dgram_sendmmsg, @function
dgram_sendmmsg:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$7760, %rsp
	movq	%rdi, -7720(%rbp)
	movq	%rsi, -7728(%rbp)
	movq	%rdx, -7736(%rbp)
	movq	%rcx, -7744(%rbp)
	movq	%r8, -7752(%rbp)
	movq	%r9, -7760(%rbp)
	movq	-7720(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -7744(%rbp)
	jne	.L254
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L265
.L254:
	movq	-7744(%rbp), %rax
	testq	%rax, %rax
	jns	.L256
	movabsq	$9223372036854775807, %rax
	movq	%rax, -7744(%rbp)
.L256:
	movq	-7752(%rbp), %rax
	movq	%rax, %rdi
	call	translate_flags
	movl	%eax, -24(%rbp)
	cmpq	$64, -7744(%rbp)
	jbe	.L257
	movq	$64, -7744(%rbp)
.L257:
	movq	$0, -8(%rbp)
	jmp	.L258
.L261:
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-7712(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	leaq	-5152(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	leaq	-4128(%rbp), %rax
	movq	-8(%rbp), %rsi
	salq	$6, %rsi
	addq	%rax, %rsi
	movq	-7720(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	translate_msg
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L259
	cmpl	$0, -20(%rbp)
	jne	.L260
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L265
.L260:
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	leaq	-4128(%rbp), %rax
	movq	-8(%rbp), %rcx
	salq	$6, %rcx
	addq	%rax, %rcx
	movq	-7720(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pack_local
	testl	%eax, %eax
	jg	.L259
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L265
.L259:
	addq	$1, -8(%rbp)
.L258:
	movq	-8(%rbp), %rax
	cmpq	-7744(%rbp), %rax
	jb	.L261
	movq	-7744(%rbp), %rax
	movl	%eax, %edi
	movq	-7720(%rbp), %rax
	movl	56(%rax), %eax
	movl	-24(%rbp), %edx
	leaq	-4128(%rbp), %rsi
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	sendmmsg@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L262
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L265
.L262:
	movq	$0, -8(%rbp)
	jmp	.L263
.L264:
	movq	-8(%rbp), %rax
	salq	$6, %rax
	addq	%rbp, %rax
	subq	$4072, %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 32(%rax)
	addq	$1, -8(%rbp)
.L263:
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L264
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-7760(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	dgram_sendmmsg, .-dgram_sendmmsg
	.type	dgram_recvmmsg, @function
dgram_recvmmsg:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$7760, %rsp
	movq	%rdi, -7720(%rbp)
	movq	%rsi, -7728(%rbp)
	movq	%rdx, -7736(%rbp)
	movq	%rcx, -7744(%rbp)
	movq	%r8, -7752(%rbp)
	movq	%r9, -7760(%rbp)
	movq	-7720(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -7744(%rbp)
	jne	.L267
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L278
.L267:
	movq	-7744(%rbp), %rax
	testq	%rax, %rax
	jns	.L269
	movabsq	$9223372036854775807, %rax
	movq	%rax, -7744(%rbp)
.L269:
	movq	-7752(%rbp), %rax
	movq	%rax, %rdi
	call	translate_flags
	movl	%eax, -24(%rbp)
	cmpq	$64, -7744(%rbp)
	jbe	.L270
	movq	$64, -7744(%rbp)
.L270:
	movq	$0, -8(%rbp)
	jmp	.L271
.L273:
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-7712(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	leaq	-5152(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	leaq	-4128(%rbp), %rax
	movq	-8(%rbp), %rsi
	salq	$6, %rsi
	addq	%rax, %rsi
	movq	-7720(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	translate_msg
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L272
	cmpl	$0, -20(%rbp)
	jne	.L272
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L278
.L272:
	addq	$1, -8(%rbp)
.L271:
	movq	-8(%rbp), %rax
	cmpq	-7744(%rbp), %rax
	jb	.L273
	movq	-7744(%rbp), %rax
	movl	%eax, %edi
	movq	-7720(%rbp), %rax
	movl	56(%rax), %eax
	movl	-24(%rbp), %edx
	leaq	-4128(%rbp), %rsi
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	recvmmsg@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L274
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-7760(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L278
.L274:
	movq	$0, -8(%rbp)
	jmp	.L275
.L277:
	movq	-8(%rbp), %rax
	salq	$6, %rax
	addq	%rbp, %rax
	subq	$4072, %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-8(%rbp), %rax
	imulq	-7736(%rbp), %rax
	movq	%rax, %rdx
	movq	-7728(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	leaq	-4128(%rbp), %rax
	movq	-8(%rbp), %rcx
	salq	$6, %rcx
	addq	%rax, %rcx
	movq	-7720(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_local
	testl	%eax, %eax
	jg	.L276
	movq	-7728(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L276:
	addq	$1, -8(%rbp)
.L275:
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L277
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-7760(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	dgram_recvmmsg, .-dgram_recvmmsg
	.type	BIO_dgram_should_retry, @function
BIO_dgram_should_retry:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L280
	cmpl	$-1, -20(%rbp)
	jne	.L281
.L280:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_dgram_non_fatal_error@PLT
	jmp	.L282
.L281:
	movl	$0, %eax
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	BIO_dgram_should_retry, .-BIO_dgram_should_retry
	.globl	BIO_dgram_non_fatal_error
	.type	BIO_dgram_non_fatal_error, @function
BIO_dgram_non_fatal_error:
.LFB215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$115, -4(%rbp)
	jg	.L288
	cmpl	$114, -4(%rbp)
	jge	.L285
	cmpl	$71, -4(%rbp)
	je	.L285
	cmpl	$71, -4(%rbp)
	jg	.L288
	cmpl	$4, -4(%rbp)
	je	.L285
	cmpl	$11, -4(%rbp)
	jne	.L288
.L285:
	movl	$1, %eax
	jmp	.L286
.L288:
	nop
	movl	$0, %eax
.L286:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	BIO_dgram_non_fatal_error, .-BIO_dgram_non_fatal_error
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"dgram_adjust_rcv_timeout"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"dgram_reset_rcv_timeout"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"dgram_ctrl"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 11
__func__.2:
	.string	"pack_local"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"dgram_sendmmsg"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"dgram_recvmmsg"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"noisydgrambio.c"
	.text
	.type	safe_sub_time, @function
safe_sub_time:
.LFB481:
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
	jnb	.L2
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L2:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB489:
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
.LFE489:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB491:
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
.LFE491:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB497:
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
	jnb	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L11
	movl	$-1, %eax
	jmp	.L10
.L11:
	movl	$0, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB501:
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
	je	.L13
	call	ossl_time_zero
	jmp	.L15
.L13:
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB627:
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
.LFE627:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB628:
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
.LFE628:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"data"
	.align 8
.LC1:
	.string	"../test/helpers/noisydgrambio.c"
	.text
	.type	noisy_dgram_ctrl, @function
noisy_dgram_ctrl:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	cmpl	$1005, -76(%rbp)
	je	.L23
	cmpl	$1005, -76(%rbp)
	jg	.L24
	cmpl	$1004, -76(%rbp)
	je	.L25
	cmpl	$1004, -76(%rbp)
	jg	.L24
	cmpl	$1003, -76(%rbp)
	je	.L26
	cmpl	$1003, -76(%rbp)
	jg	.L24
	cmpl	$1002, -76(%rbp)
	je	.L27
	cmpl	$1002, -76(%rbp)
	jg	.L24
	cmpl	$12, -76(%rbp)
	je	.L28
	cmpl	$1001, -76(%rbp)
	je	.L29
	jmp	.L24
.L28:
	movq	$0, -8(%rbp)
	jmp	.L30
.L29:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L22
.L31:
	movq	-64(%rbp), %rax
	movl	$1, 56(%rax)
	movq	$1, -8(%rbp)
	jmp	.L30
.L27:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$67, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L22
.L32:
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	$1, -8(%rbp)
	jmp	.L30
.L26:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$77, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L22
.L33:
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 16472(%rax)
	movq	$1, -8(%rbp)
	jmp	.L30
.L25:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$87, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L22
.L34:
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32888(%rax)
	movq	$1, -8(%rbp)
	jmp	.L30
.L23:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L22
.L35:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32896(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32904(%rax)
	movq	$1, -8(%rbp)
	jmp	.L30
.L24:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L30:
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	noisy_dgram_ctrl, .-noisy_dgram_ctrl
	.type	bandwidth_limit, @function
bandwidth_limit:
.LFB644:
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
	movq	%rcx, -80(%rbp)
	movl	$10000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	16408(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-80(%rbp), %rax
	jmp	.L50
.L37:
	cmpq	$1024, -80(%rbp)
	jbe	.L39
	movq	$1024, -80(%rbp)
.L39:
	movq	$0, -8(%rbp)
	jmp	.L40
.L43:
	movq	-56(%rbp), %rax
	movq	16384(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	andl	$1023, %eax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jns	.L51
	movq	-56(%rbp), %rax
	movq	16400(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16400(%rax)
	addq	$1, -8(%rbp)
.L40:
	movq	-56(%rbp), %rax
	movq	16392(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L43
	jmp	.L42
.L51:
	nop
.L42:
	movq	-56(%rbp), %rax
	movq	16384(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	andl	$1023, %eax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16384(%rax)
	movq	-56(%rbp), %rax
	movq	16392(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16392(%rax)
	movq	$0, -8(%rbp)
	jmp	.L44
.L49:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	16400(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	shrq	$3, %rdx
	movq	-56(%rbp), %rax
	movq	16408(%rax), %rax
	cmpq	%rdx, %rax
	jnb	.L45
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L46
.L45:
	movq	-56(%rbp), %rax
	movq	16392(%rax), %rax
	cmpq	$1023, %rax
	jbe	.L47
	movq	-56(%rbp), %rax
	movq	16400(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16384(%rax), %rcx
	movq	-56(%rbp), %rax
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16400(%rax)
	movq	-56(%rbp), %rax
	movq	16384(%rax), %rax
	addq	$1, %rax
	andl	$1023, %eax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16384(%rax)
	jmp	.L48
.L47:
	movq	-56(%rbp), %rax
	movq	16392(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16392(%rax)
.L48:
	movq	-56(%rbp), %rax
	movq	16384(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16392(%rax), %rax
	addq	%rdx, %rax
	andl	$1023, %eax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	16400(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16400(%rax)
	addq	$1, -8(%rbp)
.L44:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L49
.L46:
	movq	-80(%rbp), %rax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	bandwidth_limit, .-bandwidth_limit
	.type	noisy_dgram_sendmmsg, @function
noisy_dgram_sendmmsg:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L59
.L53:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$181, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L59
.L55:
	movq	-16(%rbp), %rax
	movq	32896(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-16(%rbp), %rax
	movq	32896(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32904(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	jmp	.L57
.L56:
	call	ossl_time_now@PLT
	movq	%rax, -24(%rbp)
.L57:
	movq	-16(%rbp), %rax
	leaq	16480(%rax), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	call	bandwidth_limit
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L58
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	noisy_dgram_sendmmsg, .-noisy_dgram_sendmmsg
	.type	get_noise, @function
get_noise:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	-64(%rbp), %rax
	movw	$0, (%rax)
	call	test_random@PLT
	movl	-36(%rbp), %esi
	movl	$0, %edx
	divl	%esi
	movl	%edx, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	je	.L61
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L60
.L61:
	call	test_random@PLT
	andl	$3, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L63
	cmpl	$2, -20(%rbp)
	jne	.L64
.L63:
	movl	$1, %edx
	jmp	.L65
.L64:
	movl	$0, %edx
.L65:
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$1, -20(%rbp)
	je	.L66
	cmpl	$2, -20(%rbp)
	jne	.L67
.L66:
	call	test_random@PLT
	andl	$3, %eax
	addl	$1, %eax
	movl	%eax, %edx
	jmp	.L68
.L67:
	movl	$0, %edx
.L68:
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	cmpl	$2, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$3, -20(%rbp)
	jne	.L60
	call	test_random@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	$2155905153, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$7, %eax
	movl	%eax, %edx
	sall	$8, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	leal	1(%rax), %ebx
	call	test_random@PLT
	andl	$7, %eax
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movw	%dx, (%rax)
	call	test_random@PLT
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	0(,%rax,4), %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L60:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	get_noise, .-get_noise
	.type	flip_bits, @function
flip_bits:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movw	%ax, -20(%rbp)
	cmpw	$0, -20(%rbp)
	je	.L74
	cmpq	$1, -16(%rbp)
	jbe	.L75
	movq	-32(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L73
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -32(%rbp)
.L73:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movzwl	-20(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%esi, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-20(%rbp), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L69
.L74:
	nop
	jmp	.L69
.L75:
	nop
.L69:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	flip_bits, .-flip_bits
	.section	.rodata
.LC2:
	.string	"next"
.LC3:
	.string	"MSG_DATA_LEN_MAX"
.LC4:
	.string	"data_len"
.LC5:
	.string	"msg[i].data_len"
	.text
	.type	noisy_dgram_recvmmsg, @function
noisy_dgram_recvmmsg:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$312, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L108
.L77:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$316, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L108
.L79:
	movq	$0, -8(%rbp)
	jmp	.L80
.L83:
	cmpq	$0, -8(%rbp)
	jne	.L81
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1472, %r9d
	movq	%rsi, %r8
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L108
.L81:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$331, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L108
.L82:
	addq	$1, -8(%rbp)
.L80:
	movq	-8(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L83
	movq	-144(%rbp), %r8
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L108
.L84:
	movq	-56(%rbp), %rax
	movq	32896(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-56(%rbp), %rax
	movq	32896(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32904(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -64(%rbp)
	jmp	.L86
.L85:
	call	ossl_time_now@PLT
	movq	%rax, -64(%rbp)
.L86:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	bandwidth_limit
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L109
	movq	-56(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L110
	movq	$0, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L90
.L106:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L91
	movq	-32(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jnb	.L92
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L93
.L96:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_msg_copy@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L108
.L94:
	subq	$1, -16(%rbp)
.L93:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L96
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_msg_copy@PLT
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L108
.L97:
	addq	$1, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.L98
.L92:
	movq	-56(%rbp), %rax
	movq	$0, 48(%rax)
.L91:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	shrb	$7, %al
	movzbl	%al, %esi
	movq	-56(%rbp), %rax
	movl	60(%rax), %eax
	leaq	-88(%rbp), %r8
	leaq	-78(%rbp), %rdi
	leaq	-76(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	get_noise
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L99
	movl	$0, -76(%rbp)
	movw	$0, -78(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 56(%rax)
.L99:
	movq	-88(%rbp), %rcx
	movzwl	-78(%rbp), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	flip_bits
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L100
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L100
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	bio_msg_copy@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L108
.L101:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
.L100:
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	je	.L98
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L103
.L105:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_msg_copy@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L108
.L104:
	addq	$1, -16(%rbp)
.L103:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L105
	subq	$1, -32(%rbp)
.L98:
	addq	$1, -8(%rbp)
	addq	$40, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L90:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L106
	jmp	.L88
.L109:
	nop
	jmp	.L88
.L110:
	nop
.L88:
	movq	-144(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L108
.L107:
	movl	$1, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	noisy_dgram_recvmmsg, .-noisy_dgram_recvmmsg
	.type	data_free, @function
data_free:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L114
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$477, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L111
.L114:
	nop
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	data_free, .-data_free
	.type	noisy_dgram_new, @function
noisy_dgram_new:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$485, %edx
	movq	%rax, %rsi
	movl	$32912, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$487, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rax
	movl	$5, 60(%rax)
	leaq	.LC1(%rip), %rax
	movl	$491, %edx
	movq	%rax, %rsi
	movl	$1472, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	call	BIO_ADDR_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	call	BIO_ADDR_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L119
.L118:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	data_free
	movl	$0, %eax
	jmp	.L117
.L119:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	noisy_dgram_new, .-noisy_dgram_new
	.type	noisy_dgram_free, @function
noisy_dgram_free:
.LFB651:
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
	call	BIO_get_data@PLT
	movq	%rax, %rdi
	call	data_free
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	noisy_dgram_free, .-noisy_dgram_free
	.local	method_noisy_dgram
	.comm	method_noisy_dgram,8,8
	.section	.rodata
.LC6:
	.string	"Noisy datagram filter"
	.text
	.globl	bio_f_noisy_dgram_filter
	.type	bio_f_noisy_dgram_filter, @function
bio_f_noisy_dgram_filter:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_noisy_dgram(%rip), %rax
	testq	%rax, %rax
	jne	.L123
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movl	$640, %edi
	call	BIO_meth_new@PLT
	movq	%rax, method_noisy_dgram(%rip)
	movq	method_noisy_dgram(%rip), %rax
	testq	%rax, %rax
	je	.L124
	movq	method_noisy_dgram(%rip), %rax
	leaq	noisy_dgram_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	je	.L124
	movq	method_noisy_dgram(%rip), %rax
	leaq	noisy_dgram_sendmmsg(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_sendmmsg@PLT
	testl	%eax, %eax
	je	.L124
	movq	method_noisy_dgram(%rip), %rax
	leaq	noisy_dgram_recvmmsg(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_recvmmsg@PLT
	testl	%eax, %eax
	je	.L124
	movq	method_noisy_dgram(%rip), %rax
	leaq	noisy_dgram_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	je	.L124
	movq	method_noisy_dgram(%rip), %rax
	leaq	noisy_dgram_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	jne	.L123
.L124:
	movl	$0, %eax
	jmp	.L125
.L123:
	movq	method_noisy_dgram(%rip), %rax
.L125:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	bio_f_noisy_dgram_filter, .-bio_f_noisy_dgram_filter
	.globl	bio_f_noisy_dgram_filter_free
	.type	bio_f_noisy_dgram_filter_free, @function
bio_f_noisy_dgram_filter_free:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_noisy_dgram(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	bio_f_noisy_dgram_filter_free, .-bio_f_noisy_dgram_filter_free
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"noisy_dgram_sendmmsg"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"noisy_dgram_recvmmsg"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cc_newreno.c"
	.text
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
	jnb	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L10
	movl	$-1, %eax
	jmp	.L9
.L10:
	movl	$0, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_max, @function
ossl_time_max:
.LFB56:
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
	jnb	.L12
	movq	-8(%rbp), %rax
	jmp	.L14
.L12:
	movq	-16(%rbp), %rax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	ossl_time_max, .-ossl_time_max
	.type	safe_add_u64, @function
safe_add_u64:
.LFB513:
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
	jnc	.L16
	movl	$1, %ecx
.L16:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	movq	-8(%rbp), %rax
	jmp	.L20
.L18:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	safe_add_u64, .-safe_add_u64
	.type	safe_mul_u64, @function
safe_mul_u64:
.LFB515:
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
	mulq	-32(%rbp)
	jno	.L22
	movl	$1, %ecx
.L22:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L24
	movq	-8(%rbp), %rax
	jmp	.L26
.L24:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	safe_mul_u64, .-safe_mul_u64
	.type	safe_muldiv_u64, @function
safe_muldiv_u64:
.LFB519:
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
	movq	%rcx, -64(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L28
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L29
	cmpq	$0, -48(%rbp)
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L35
.L30:
	movq	$-1, %rax
	jmp	.L35
.L28:
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_u64
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L33
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L35
.L33:
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L34
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L34:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_u64
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_u64
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_u64
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	safe_muldiv_u64, .-safe_muldiv_u64
	.section	.rodata
.LC0:
	.string	"../ssl/quic/cc_newreno.c"
	.text
	.type	newreno_new, @function
newreno_new:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$52, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1200, %esi
	movq	%rax, %rdi
	call	newreno_set_max_dgram_size
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_reset
	movq	-8(%rbp), %rax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	newreno_new, .-newreno_new
	.type	newreno_free, @function
newreno_free:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	newreno_free, .-newreno_free
	.type	newreno_set_max_dgram_size, @function
newreno_set_max_dgram_size:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -32(%rbp)
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	cmpq	$14719, -8(%rbp)
	ja	.L41
	movq	$14720, -8(%rbp)
.L41:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L42
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L42:
	movq	-32(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	cmpl	$0, -12(%rbp)
	je	.L43
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
.L43:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	newreno_set_max_dgram_size, .-newreno_set_max_dgram_size
	.type	newreno_reset, @function
newreno_reset:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$2, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$3, 40(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 72(%rax)
	movq	-16(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 88(%rbx)
	movq	-16(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-16(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 104(%rbx)
	movq	-16(%rbp), %rax
	movl	$0, 112(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	newreno_reset, .-newreno_reset
	.section	.rodata
.LC1:
	.string	"max_dgram_payload_len"
	.text
	.type	newreno_set_input_params, @function
newreno_set_input_params:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L50
.L47:
	movq	-24(%rbp), %rax
	cmpq	$1199, %rax
	ja	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	newreno_set_max_dgram_size
.L46:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	newreno_set_input_params, .-newreno_set_input_params
	.type	bind_diag, @function
bind_diag:
.LFB527:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -8(%rbp)
	jne	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L54
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L55
.L54:
	movl	$0, %eax
	jmp	.L53
.L55:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	bind_diag, .-bind_diag
	.section	.rodata
.LC2:
	.string	"cur_cwnd_size"
.LC3:
	.string	"min_cwnd_size"
.LC4:
	.string	"bytes_in_flight"
.LC5:
	.string	"cur_state"
	.text
	.type	newreno_bind_diagnostic, @function
newreno_bind_diagnostic:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	bind_diag
	testl	%eax, %eax
	je	.L57
	leaq	-24(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	bind_diag
	testl	%eax, %eax
	je	.L57
	leaq	-32(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	bind_diag
	testl	%eax, %eax
	je	.L57
	leaq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	bind_diag
	testl	%eax, %eax
	je	.L57
	leaq	-48(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	bind_diag
	testl	%eax, %eax
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L65
.L58:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L60
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
.L60:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L61
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
.L61:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 136(%rax)
.L62:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L63
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
.L63:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	newreno_bind_diagnostic, .-newreno_bind_diagnostic
	.type	unbind_diag, @function
unbind_diag:
.LFB529:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	unbind_diag, .-unbind_diag
	.type	newreno_unbind_diagnostic, @function
newreno_unbind_diagnostic:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	120(%rax), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unbind_diag
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unbind_diag
	movq	-8(%rbp), %rax
	leaq	136(%rax), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unbind_diag
	movq	-8(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unbind_diag
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	leaq	.LC5(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unbind_diag
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	newreno_unbind_diagnostic, .-newreno_unbind_diagnostic
	.type	newreno_update_diag, @function
newreno_update_diag:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, (%rax)
.L72:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, (%rax)
.L73:
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, (%rax)
.L74:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, (%rax)
.L75:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L77
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	$82, (%rax)
	jmp	.L79
.L77:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L78
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	$83, (%rax)
	jmp	.L79
.L78:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	$65, (%rax)
.L79:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	newreno_update_diag, .-newreno_update_diag
	.type	newreno_in_cong_recovery, @function
newreno_in_cong_recovery:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	newreno_in_cong_recovery, .-newreno_in_cong_recovery
	.type	newreno_cong, @function
newreno_cong:
.LFB533:
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
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	newreno_in_cong_recovery
	testl	%eax, %eax
	jne	.L87
	movq	-40(%rbp), %rax
	movl	$1, 112(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rbx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, 88(%rbx)
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	safe_muldiv_u64
	movq	-40(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L85
	movq	-40(%rbp), %rax
	movq	$-1, 72(%rax)
.L85:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L82
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L82
.L87:
	nop
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	newreno_cong, .-newreno_cong
	.type	newreno_flush, @function
newreno_flush:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	newreno_cong
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L91
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 88(%rbx)
.L91:
	movq	-24(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	jmp	.L88
.L92:
	nop
.L88:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	newreno_flush, .-newreno_flush
	.type	newreno_get_tx_allowance, @function
newreno_get_tx_allowance:
.LFB535:
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
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L94
	movl	$0, %edx
	jmp	.L95
.L94:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
.L95:
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	newreno_get_tx_allowance, .-newreno_get_tx_allowance
	.type	newreno_get_wakeup_deadline, @function
newreno_get_wakeup_deadline:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_get_tx_allowance
	testq	%rax, %rax
	je	.L97
	call	ossl_time_zero
	jmp	.L98
.L97:
	call	ossl_time_infinite
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	newreno_get_wakeup_deadline, .-newreno_get_wakeup_deadline
	.type	newreno_on_data_sent, @function
newreno_on_data_sent:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	newreno_on_data_sent, .-newreno_on_data_sent
	.type	newreno_is_cong_limited, @function
newreno_is_cong_limited:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L102
	movl	$1, %eax
	jmp	.L103
.L102:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L104
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	shrq	%rax
	cmpq	-8(%rbp), %rax
	jnb	.L105
.L104:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	jb	.L106
.L105:
	movl	$1, %eax
	jmp	.L103
.L106:
	movl	$0, %eax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	newreno_is_cong_limited, .-newreno_is_cong_limited
	.type	newreno_on_data_acked, @function
newreno_on_data_acked:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_is_cong_limited
	testl	%eax, %eax
	je	.L114
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	newreno_in_cong_recovery
	testl	%eax, %eax
	jne	.L110
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L111
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L110
.L111:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L112
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
.L112:
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L110
.L114:
	nop
.L110:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	newreno_on_data_acked, .-newreno_on_data_acked
	.type	newreno_on_data_lost, @function
newreno_on_data_lost:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jne	.L118
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jle	.L121
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.L118:
	movq	-16(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_max
	movq	%rax, 104(%rbx)
	jmp	.L120
.L121:
	nop
.L120:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	movl	$1, %eax
.L117:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	newreno_on_data_lost, .-newreno_on_data_lost
	.type	newreno_on_data_lost_finished, @function
newreno_on_data_lost_finished:
.LFB541:
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
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	newreno_flush
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	newreno_on_data_lost_finished, .-newreno_on_data_lost_finished
	.type	newreno_on_data_invalidated, @function
newreno_on_data_invalidated:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	newreno_update_diag
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	newreno_on_data_invalidated, .-newreno_on_data_invalidated
	.type	newreno_on_ecn, @function
newreno_on_ecn:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	newreno_flush
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	newreno_on_ecn, .-newreno_on_ecn
	.globl	ossl_cc_newreno_method
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_cc_newreno_method, @object
	.size	ossl_cc_newreno_method, 112
ossl_cc_newreno_method:
	.quad	newreno_new
	.quad	newreno_free
	.quad	newreno_reset
	.quad	newreno_set_input_params
	.quad	newreno_bind_diagnostic
	.quad	newreno_unbind_diagnostic
	.quad	newreno_get_tx_allowance
	.quad	newreno_get_wakeup_deadline
	.quad	newreno_on_data_sent
	.quad	newreno_on_data_acked
	.quad	newreno_on_data_lost
	.quad	newreno_on_data_lost_finished
	.quad	newreno_on_data_invalidated
	.quad	newreno_on_ecn
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

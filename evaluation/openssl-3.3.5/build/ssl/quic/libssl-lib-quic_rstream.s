	.file	"quic_rstream.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB86:
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
.LFE86:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB88:
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
.LFE88:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	safe_add_u64, @function
safe_add_u64:
.LFB615:
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
	jnc	.L6
	movl	$1, %ecx
.L6:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	movq	-8(%rbp), %rax
	jmp	.L10
.L8:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	safe_add_u64, .-safe_add_u64
	.type	ring_buf_init, @function
ring_buf_init:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ring_buf_init, .-ring_buf_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../include/internal/ring_buf.h"
	.text
	.type	ring_buf_destroy, @function
ring_buf_destroy:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$58, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L15:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ring_buf_destroy, .-ring_buf_destroy
	.type	ring_buf_used, @function
ring_buf_used:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ring_buf_used, .-ring_buf_used
	.type	ring_buf_avail, @function
ring_buf_avail:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_used
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ring_buf_avail, .-ring_buf_avail
	.type	ring_buf_write_at, @function
ring_buf_write_at:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_avail
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -80(%rbp)
	jb	.L21
	leaq	-60(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_u64
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-60(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_u64
	cmpq	%rbx, %rax
	jb	.L21
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-60(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_u64
	movabsq	$4611686018427387904, %rdx
	cmpq	%rax, %rdx
	jb	.L21
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L22
.L21:
	movl	$0, %eax
	jmp	.L29
.L22:
	movl	$0, -28(%rbp)
	jmp	.L24
.L28:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L25
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.L25:
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L26
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
.L26:
	movq	-24(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -96(%rbp)
	addl	$1, -28(%rbp)
.L24:
	cmpq	$0, -96(%rbp)
	je	.L27
	cmpl	$1, -28(%rbp)
	jle	.L28
.L27:
	movl	$1, %eax
.L29:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ring_buf_write_at, .-ring_buf_write_at
	.type	ring_buf_push, @function
ring_buf_push:
.LFB629:
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
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L36:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_avail
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L31
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.L31:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	subq	%rax, %rdx
	cmpq	-72(%rbp), %rdx
	jnb	.L32
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	subq	%rax, %rdx
	movq	%rdx, -72(%rbp)
.L32:
	cmpq	$0, -72(%rbp)
	je	.L39
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L35
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L35:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	jmp	.L36
.L39:
	nop
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	ring_buf_push, .-ring_buf_push
	.type	ring_buf_get_ptr, @function
ring_buf_get_ptr:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L41
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L42
.L41:
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ring_buf_get_ptr, .-ring_buf_get_ptr
	.type	ring_buf_get_buf_at, @function
ring_buf_get_buf_at:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-48(%rbp), %rax
	jb	.L45
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L46
.L45:
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L48
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L47
.L48:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L49
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L49:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ring_buf_get_buf_at, .-ring_buf_get_buf_at
	.type	ring_buf_cpop_range, @function
ring_buf_cpop_range:
.LFB632:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-48(%rbp), %rax
	jb	.L57
	movabsq	$4611686018427387903, %rax
	cmpq	-56(%rbp), %rax
	jb	.L57
	cmpl	$0, -60(%rbp)
	je	.L54
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L54
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -8(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L55
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L55:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L56
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	addq	%rdx, -24(%rbp)
	movq	$0, -8(%rbp)
.L56:
	cmpq	$0, -24(%rbp)
	je	.L54
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
.L54:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L50
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L50
.L57:
	nop
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ring_buf_cpop_range, .-ring_buf_cpop_range
	.type	ring_buf_resize, @function
ring_buf_resize:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -96(%rbp)
	jne	.L59
	movl	$1, %eax
	jmp	.L68
.L59:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_used
	cmpq	%rax, -96(%rbp)
	jnb	.L61
	movl	$0, %eax
	jmp	.L68
.L61:
	leaq	.LC0(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L62
	movl	$0, %eax
	jmp	.L68
.L62:
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_used
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.L67:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_get_buf_at
	testl	%eax, %eax
	jne	.L63
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$254, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L68
.L63:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L70
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ring_buf_push
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L66
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L68
.L66:
	movq	-80(%rbp), %rax
	addq	%rax, -24(%rbp)
	jmp	.L67
.L70:
	nop
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-100(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ring_buf_destroy
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L68:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ring_buf_resize, .-ring_buf_resize
	.section	.rodata
.LC1:
	.string	"../ssl/quic/quic_rstream.c"
	.text
	.globl	ossl_quic_rstream_new
	.type	ossl_quic_rstream_new, @function
ossl_quic_rstream_new:
.LFB634:
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
	leaq	.LC1(%rip), %rax
	movl	$27, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	ring_buf_init
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ring_buf_resize
	testl	%eax, %eax
	jne	.L74
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sframe_list_init@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_quic_rstream_new, .-ossl_quic_rstream_new
	.globl	ossl_quic_rstream_free
	.type	ossl_quic_rstream_free, @function
ossl_quic_rstream_free:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L78
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sframe_list_destroy@PLT
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ring_buf_destroy
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L75
.L78:
	nop
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_quic_rstream_free, .-ossl_quic_rstream_free
	.globl	ossl_quic_rstream_queue_data
	.type	ossl_quic_rstream_queue_data, @function
ossl_quic_rstream_queue_data:
.LFB636:
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
	movl	%r9d, -60(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L80
	cmpq	$0, -56(%rbp)
	jne	.L81
.L80:
	cmpq	$0, -56(%rbp)
	jne	.L82
	cmpl	$0, -60(%rbp)
	jne	.L82
.L81:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L82:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-60(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_sframe_list_insert@PLT
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ossl_quic_rstream_queue_data, .-ossl_quic_rstream_queue_data
	.type	read_internal, @function
read_internal:
.LFB637:
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
	movl	%r9d, -140(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -76(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L86
.L96:
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -120(%rbp)
	jnb	.L87
	movq	-120(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -76(%rbp)
.L87:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L100
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L90
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	leaq	80(%rdx), %rcx
	leaq	-88(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ring_buf_get_ptr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L91
	movl	$0, %eax
	jmp	.L99
.L91:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L90
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-88(%rbp), %rax
	subq	%rax, -120(%rbp)
	movq	-88(%rbp), %rax
	addq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	subq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-104(%rbp), %rax
	leaq	80(%rax), %rcx
	leaq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ring_buf_get_ptr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L94
	movq	-88(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L90
.L94:
	movl	$0, %eax
	jmp	.L99
.L90:
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	subq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L101
.L86:
	movq	-104(%rbp), %rax
	leaq	-76(%rbp), %rdi
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sframe_list_peek@PLT
	testl	%eax, %eax
	jne	.L96
	jmp	.L89
.L100:
	nop
	jmp	.L89
.L101:
	nop
.L89:
	cmpl	$0, -140(%rbp)
	je	.L97
	cmpq	$0, -8(%rbp)
	je	.L97
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sframe_list_drop_frames@PLT
	movl	%eax, -20(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %eax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	movq	-104(%rbp), %rcx
	leaq	80(%rcx), %rdi
	movl	%eax, %ecx
	movl	$0, %esi
	call	ring_buf_cpop_range
.L97:
	cmpl	$0, -20(%rbp)
	je	.L98
	movq	-128(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-76(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, (%rax)
.L98:
	movl	-20(%rbp), %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	read_internal, .-read_internal
	.type	get_rtt, @function
get_rtt:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_statm_get_rtt_info@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L104
.L103:
	call	ossl_time_zero
	movq	%rax, -8(%rbp)
.L104:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	get_rtt, .-get_rtt
	.globl	ossl_quic_rstream_read
	.type	ossl_quic_rstream_read, @function
ossl_quic_rstream_read:
.LFB639:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_rtt
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	read_internal
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L110
.L107:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movl	$1, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_quic_rstream_read, .-ossl_quic_rstream_read
	.globl	ossl_quic_rstream_peek
	.type	ossl_quic_rstream_peek, @function
ossl_quic_rstream_peek:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	read_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_quic_rstream_peek, .-ossl_quic_rstream_peek
	.globl	ossl_quic_rstream_available
	.type	ossl_quic_rstream_available, @function
ossl_quic_rstream_available:
.LFB641:
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
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L114
.L115:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	addq	%rdx, -8(%rbp)
.L114:
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sframe_list_peek@PLT
	testl	%eax, %eax
	jne	.L115
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_quic_rstream_available, .-ossl_quic_rstream_available
	.globl	ossl_quic_rstream_get_record
	.type	ossl_quic_rstream_get_record, @function
ossl_quic_rstream_get_record:
.LFB642:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	ossl_sframe_list_lock_head@PLT
	testl	%eax, %eax
	jne	.L118
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L124
.L118:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L120
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L121
	movl	$0, %eax
	jmp	.L124
.L121:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sframe_list_drop_frames@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L124
.L120:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L122
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	80(%rdx), %rcx
	leaq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ring_buf_get_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L122
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
.L122:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ossl_quic_rstream_get_record, .-ossl_quic_rstream_get_record
	.globl	ossl_quic_rstream_release_record
	.type	ossl_quic_rstream_release_record, @function
ossl_quic_rstream_release_record:
.LFB643:
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
	movq	%rax, %rdi
	call	ossl_sframe_list_is_head_locked@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	subq	%rax, %rdx
	cmpq	-32(%rbp), %rdx
	jnb	.L128
	cmpq	$-1, -32(%rbp)
	je	.L129
	movl	$0, %eax
	jmp	.L127
.L129:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L130
.L128:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L130:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sframe_list_drop_frames@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L127
.L131:
	cmpq	$0, -8(%rbp)
	je	.L132
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	movq	-24(%rbp), %rcx
	leaq	80(%rcx), %rdi
	movl	%eax, %ecx
	movl	$0, %esi
	call	ring_buf_cpop_range
.L132:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_rtt
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L127
.L133:
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ossl_quic_rstream_release_record, .-ossl_quic_rstream_release_record
	.type	write_at_ring_buf_cb, @function
write_at_ring_buf_cb:
.LFB644:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_write_at
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	write_at_ring_buf_cb, .-write_at_ring_buf_cb
	.globl	ossl_quic_rstream_move_to_rbuf
	.type	ossl_quic_rstream_move_to_rbuf, @function
ossl_quic_rstream_move_to_rbuf:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	ring_buf_avail
	testq	%rax, %rax
	jne	.L138
	movl	$0, %eax
	jmp	.L139
.L138:
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	write_at_ring_buf_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sframe_list_move_data@PLT
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_quic_rstream_move_to_rbuf, .-ossl_quic_rstream_move_to_rbuf
	.globl	ossl_quic_rstream_resize_rbuf
	.type	ossl_quic_rstream_resize_rbuf, @function
ossl_quic_rstream_resize_rbuf:
.LFB646:
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
	movq	%rax, %rdi
	call	ossl_sframe_list_is_head_locked@PLT
	testl	%eax, %eax
	je	.L141
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ring_buf_resize
	testl	%eax, %eax
	jne	.L143
	movl	$0, %eax
	jmp	.L142
.L143:
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	ossl_quic_rstream_resize_rbuf, .-ossl_quic_rstream_resize_rbuf
	.globl	ossl_quic_rstream_set_cleanse
	.type	ossl_quic_rstream_set_cleanse, @function
ossl_quic_rstream_set_cleanse:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 44(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_quic_rstream_set_cleanse, .-ossl_quic_rstream_set_cleanse
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_quic_rstream_queue_data"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

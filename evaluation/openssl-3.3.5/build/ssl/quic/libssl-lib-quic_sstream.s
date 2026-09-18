	.file	"quic_sstream.c"
	.text
	.type	ossl_list_uint_set_num, @function
ossl_list_uint_set_num:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_list_uint_set_num, .-ossl_list_uint_set_num
	.type	ossl_list_uint_set_head, @function
ossl_list_uint_set_head:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ossl_list_uint_set_head, .-ossl_list_uint_set_head
	.type	ossl_list_uint_set_next, @function
ossl_list_uint_set_next:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_list_uint_set_next, .-ossl_list_uint_set_next
	.type	ring_buf_init, @function
ring_buf_init:
.LFB608:
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
.LFE608:
	.size	ring_buf_init, .-ring_buf_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../include/internal/ring_buf.h"
	.text
	.type	ring_buf_destroy, @function
ring_buf_destroy:
.LFB609:
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
	je	.L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$58, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L11:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ring_buf_destroy, .-ring_buf_destroy
	.type	ring_buf_used, @function
ring_buf_used:
.LFB610:
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
.LFE610:
	.size	ring_buf_used, .-ring_buf_used
	.type	ring_buf_avail, @function
ring_buf_avail:
.LFB611:
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
.LFE611:
	.size	ring_buf_avail, .-ring_buf_avail
	.type	ring_buf_push, @function
ring_buf_push:
.LFB613:
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
.L22:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_avail
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L17
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.L17:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	subq	%rax, %rdx
	cmpq	-72(%rbp), %rdx
	jnb	.L18
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	subq	%rax, %rdx
	movq	%rdx, -72(%rbp)
.L18:
	cmpq	$0, -72(%rbp)
	je	.L25
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
	jnb	.L21
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L21:
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
	jmp	.L22
.L25:
	nop
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	ring_buf_push, .-ring_buf_push
	.type	ring_buf_get_buf_at, @function
ring_buf_get_buf_at:
.LFB615:
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
	jb	.L27
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L28
.L27:
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L29
.L30:
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
	jnb	.L31
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L31:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	ring_buf_get_buf_at, .-ring_buf_get_buf_at
	.type	ring_buf_cpop_range, @function
ring_buf_cpop_range:
.LFB616:
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
	jb	.L39
	movabsq	$4611686018427387903, %rax
	cmpq	-56(%rbp), %rax
	jb	.L39
	cmpl	$0, -60(%rbp)
	je	.L36
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L36
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
	jnb	.L37
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L37:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L38
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
.L38:
	cmpq	$0, -24(%rbp)
	je	.L36
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
.L36:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L32
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L32
.L39:
	nop
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ring_buf_cpop_range, .-ring_buf_cpop_range
	.type	ring_buf_resize, @function
ring_buf_resize:
.LFB617:
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
	jne	.L41
	movl	$1, %eax
	jmp	.L50
.L41:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_used
	cmpq	%rax, -96(%rbp)
	jnb	.L43
	movl	$0, %eax
	jmp	.L50
.L43:
	leaq	.LC0(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$0, %eax
	jmp	.L50
.L44:
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
.L49:
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
	jne	.L45
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$254, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L50
.L45:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L52
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ring_buf_push
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L48
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L50
.L48:
	movq	-80(%rbp), %rax
	addq	%rax, -24(%rbp)
	jmp	.L49
.L52:
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
.L50:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	ring_buf_resize, .-ring_buf_resize
	.section	.rodata
.LC1:
	.string	"../ssl/quic/quic_sstream.c"
	.text
	.globl	ossl_quic_sstream_new
	.type	ossl_quic_sstream_new, @function
ossl_quic_sstream_new:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_init
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ring_buf_resize
	testl	%eax, %eax
	jne	.L56
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ring_buf_destroy
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L55
.L56:
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_uint_set_init@PLT
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_uint_set_init@PLT
	movq	-8(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	ossl_quic_sstream_new, .-ossl_quic_sstream_new
	.globl	ossl_quic_sstream_free
	.type	ossl_quic_sstream_free, @function
ossl_quic_sstream_free:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_uint_set_destroy@PLT
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_uint_set_destroy@PLT
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ring_buf_destroy
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L57
.L60:
	nop
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ossl_quic_sstream_free, .-ossl_quic_sstream_free
	.globl	ossl_quic_sstream_get_stream_frame
	.type	ossl_quic_sstream_get_stream_frame, @function
ossl_quic_sstream_get_stream_frame:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	ja	.L62
	movl	$0, %eax
	jmp	.L79
.L62:
	movq	$0, -24(%rbp)
	jmp	.L64
.L66:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_next
	movq	%rax, -32(%rbp)
	addq	$1, -24(%rbp)
.L64:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L65
	cmpq	$0, -32(%rbp)
	jne	.L66
.L65:
	cmpq	$0, -32(%rbp)
	jne	.L67
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L68
	movl	$0, %eax
	jmp	.L79
.L68:
	movq	-72(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L69
	movq	-72(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L70
.L69:
	movl	$0, %eax
	jmp	.L79
.L70:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$2, %edx
	movb	%dl, 32(%rax)
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L79
.L67:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
.L76:
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L80
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	ring_buf_get_buf_at
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L79
.L73:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L81
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L75
	movq	-40(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.L75:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L76
.L80:
	nop
	jmp	.L72
.L81:
	nop
.L72:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L77
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L77
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	andl	$1, %eax
	movq	-88(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	32(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	ossl_quic_sstream_get_stream_frame, .-ossl_quic_sstream_get_stream_frame
	.globl	ossl_quic_sstream_has_pending
	.type	ossl_quic_sstream_has_pending, @function
ossl_quic_sstream_has_pending:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$2, -88(%rbp)
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	ossl_quic_sstream_has_pending, .-ossl_quic_sstream_has_pending
	.globl	ossl_quic_sstream_get_cur_size
	.type	ossl_quic_sstream_get_cur_size, @function
ossl_quic_sstream_get_cur_size:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ossl_quic_sstream_get_cur_size, .-ossl_quic_sstream_get_cur_size
	.globl	ossl_quic_sstream_mark_transmitted
	.type	ossl_quic_sstream_mark_transmitted, @function
ossl_quic_sstream_mark_transmitted:
.LFB623:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_uint_set_remove@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L89
.L87:
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ossl_quic_sstream_mark_transmitted, .-ossl_quic_sstream_mark_transmitted
	.globl	ossl_quic_sstream_mark_transmitted_fin
	.type	ossl_quic_sstream_mark_transmitted_fin, @function
ossl_quic_sstream_mark_transmitted_fin:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L91
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L92
.L91:
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$2, %edx
	movb	%dl, 80(%rax)
	movl	$1, %eax
.L93:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ossl_quic_sstream_mark_transmitted_fin, .-ossl_quic_sstream_mark_transmitted_fin
	.globl	ossl_quic_sstream_mark_lost
	.type	ossl_quic_sstream_mark_lost, @function
ossl_quic_sstream_mark_lost:
.LFB625:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_uint_set_insert@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L97
.L95:
	movl	$1, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ossl_quic_sstream_mark_lost, .-ossl_quic_sstream_mark_lost
	.globl	ossl_quic_sstream_mark_lost_fin
	.type	ossl_quic_sstream_mark_lost_fin, @function
ossl_quic_sstream_mark_lost_fin:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 80(%rax)
	movl	$1, %eax
.L100:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ossl_quic_sstream_mark_lost_fin, .-ossl_quic_sstream_mark_lost_fin
	.globl	ossl_quic_sstream_mark_acked
	.type	ossl_quic_sstream_mark_acked, @function
ossl_quic_sstream_mark_acked:
.LFB627:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_uint_set_insert@PLT
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L104
.L102:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qss_cull
	movl	$1, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ossl_quic_sstream_mark_acked, .-ossl_quic_sstream_mark_acked
	.globl	ossl_quic_sstream_mark_acked_fin
	.type	ossl_quic_sstream_mark_acked_fin, @function
ossl_quic_sstream_mark_acked_fin:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$4, %edx
	movb	%dl, 80(%rax)
	movl	$1, %eax
.L107:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ossl_quic_sstream_mark_acked_fin, .-ossl_quic_sstream_mark_acked_fin
	.globl	ossl_quic_sstream_fin
	.type	ossl_quic_sstream_fin, @function
ossl_quic_sstream_fin:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L111
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$1, %edx
	movb	%dl, 80(%rax)
	jmp	.L108
.L111:
	nop
.L108:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	ossl_quic_sstream_fin, .-ossl_quic_sstream_fin
	.globl	ossl_quic_sstream_get_final_size
	.type	ossl_quic_sstream_get_final_size, @function
ossl_quic_sstream_get_final_size:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L113
	movl	$0, %eax
	jmp	.L114
.L113:
	cmpq	$0, -16(%rbp)
	je	.L115
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L115:
	movl	$1, %eax
.L114:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ossl_quic_sstream_get_final_size, .-ossl_quic_sstream_get_final_size
	.globl	ossl_quic_sstream_append
	.type	ossl_quic_sstream_append, @function
ossl_quic_sstream_append:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-72(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L119
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L124
.L122:
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ring_buf_push
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L125
	movq	-16(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L119:
	cmpq	$0, -88(%rbp)
	jne	.L122
	jmp	.L121
.L125:
	nop
.L121:
	cmpq	$0, -8(%rbp)
	je	.L123
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_uint_set_insert@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_quic_sstream_append, .-ossl_quic_sstream_append
	.type	qss_cull, @function
qss_cull:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L128
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ring_buf_cpop_range
.L128:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	qss_cull, .-qss_cull
	.globl	ossl_quic_sstream_set_buffer_size
	.type	ossl_quic_sstream_set_buffer_size, @function
ossl_quic_sstream_set_buffer_size:
.LFB633:
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
	movzbl	80(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ring_buf_resize
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ossl_quic_sstream_set_buffer_size, .-ossl_quic_sstream_set_buffer_size
	.globl	ossl_quic_sstream_get_buffer_size
	.type	ossl_quic_sstream_get_buffer_size, @function
ossl_quic_sstream_get_buffer_size:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_quic_sstream_get_buffer_size, .-ossl_quic_sstream_get_buffer_size
	.globl	ossl_quic_sstream_get_buffer_used
	.type	ossl_quic_sstream_get_buffer_used, @function
ossl_quic_sstream_get_buffer_used:
.LFB635:
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
	call	ring_buf_used
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_quic_sstream_get_buffer_used, .-ossl_quic_sstream_get_buffer_used
	.globl	ossl_quic_sstream_get_buffer_avail
	.type	ossl_quic_sstream_get_buffer_avail, @function
ossl_quic_sstream_get_buffer_avail:
.LFB636:
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
	call	ring_buf_avail
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ossl_quic_sstream_get_buffer_avail, .-ossl_quic_sstream_get_buffer_avail
	.globl	ossl_quic_sstream_is_totally_acked
	.type	ossl_quic_sstream_is_totally_acked, @function
ossl_quic_sstream_is_totally_acked:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L138
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L138
	movl	$0, %eax
	jmp	.L144
.L138:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_cur_size@PLT
	testq	%rax, %rax
	jne	.L140
	movl	$1, %eax
	jmp	.L144
.L140:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_num
	cmpq	$1, %rax
	je	.L141
	movl	$0, %eax
	jmp	.L144
.L141:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	24(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L142
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L142
	movl	$1, %eax
	jmp	.L144
.L142:
	movl	$0, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ossl_quic_sstream_is_totally_acked, .-ossl_quic_sstream_is_totally_acked
	.globl	ossl_quic_sstream_adjust_iov
	.type	ossl_quic_sstream_adjust_iov, @function
ossl_quic_sstream_adjust_iov:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L146
.L149:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L147
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 8(%rax)
	jmp	.L148
.L147:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L148
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, 8(%rdx)
.L148:
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L146:
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L149
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ossl_quic_sstream_adjust_iov, .-ossl_quic_sstream_adjust_iov
	.globl	ossl_quic_sstream_set_cleanse
	.type	ossl_quic_sstream_set_cleanse, @function
ossl_quic_sstream_set_cleanse:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,8), %ecx
	movzbl	80(%rdx), %eax
	andl	$-9, %eax
	orl	%ecx, %eax
	movb	%al, 80(%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_quic_sstream_set_cleanse, .-ossl_quic_sstream_set_cleanse
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

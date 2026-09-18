	.file	"bss_dgram_pair.c"
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
	.type	safe_add_size_t, @function
safe_add_size_t:
.LFB165:
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
.LFE165:
	.size	safe_add_size_t, .-safe_add_size_t
	.type	safe_mul_size_t, @function
safe_mul_size_t:
.LFB167:
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
	jno	.L12
	movl	$1, %ecx
.L12:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L14
	movq	-8(%rbp), %rax
	jmp	.L16
.L14:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	safe_mul_size_t, .-safe_mul_size_t
	.type	safe_muldiv_size_t, @function
safe_muldiv_size_t:
.LFB171:
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
	jne	.L18
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L19
	cmpq	$0, -48(%rbp)
	jne	.L20
.L19:
	movl	$0, %eax
	jmp	.L25
.L20:
	movq	$-1, %rax
	jmp	.L25
.L18:
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_size_t
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L25
.L23:
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L24
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L24:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_size_t
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_size_t
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_size_t
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	safe_muldiv_size_t, .-safe_muldiv_size_t
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/bio/bss_dgram_pair.c"
	.text
	.type	ring_buf_init, @function
ring_buf_init:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	ring_buf_init, .-ring_buf_init
	.type	ring_buf_destroy, @function
ring_buf_destroy:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	ring_buf_destroy, .-ring_buf_destroy
	.type	ring_buf_head_tail, @function
ring_buf_head_tail:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$2, %rcx
	movq	8(%rax,%rcx,8), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	cmpq	-8(%rbp), %rdx
	jnb	.L31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
.L31:
	cmpl	$1, -28(%rbp)
	jne	.L32
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L32
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L32:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$2, %rcx
	movq	8(%rax,%rcx,8), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	ring_buf_head_tail, .-ring_buf_head_tail
	.type	ring_buf_push_pop, @function
ring_buf_push_pop:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$2, %rcx
	movq	8(%rax,%rcx,8), %rax
	subq	%rax, %rdx
	cmpq	-40(%rbp), %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L41
	cmpl	$0, -28(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-40(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	cltq
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	setnb	%al
	movzbl	%al, %eax
	cltq
.L37:
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	movq	8(%rax,%rdx,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L39
	movq	$0, -8(%rbp)
.L39:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	2(%rdx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax,%rcx,8)
	cmpl	$0, -28(%rbp)
	je	.L40
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L33
.L40:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L33
.L41:
	nop
	jmp	.L33
.L42:
	nop
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	ring_buf_push_pop, .-ring_buf_push_pop
	.type	ring_buf_clear, @function
ring_buf_clear:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	ring_buf_clear, .-ring_buf_clear
	.type	ring_buf_resize, @function
ring_buf_resize:
.LFB179:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ring_buf_init
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L46
.L47:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L48
	movl	$0, %eax
	jmp	.L46
.L48:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movl	$134, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L46
.L49:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L51
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-16(%rbp), %rax
	addq	%rax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L51
.L50:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L51:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	ring_buf_resize, .-ring_buf_resize
	.section	.rodata
.LC1:
	.string	"BIO dgram pair"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	dgram_pair_method, @object
	.size	dgram_pair_method, 112
dgram_pair_method:
	.long	1050
	.zero	4
	.quad	.LC1
	.quad	bwrite_conv
	.quad	dgram_pair_write
	.quad	bread_conv
	.quad	dgram_pair_read
	.quad	0
	.quad	0
	.quad	dgram_pair_ctrl
	.quad	dgram_pair_init
	.quad	dgram_pair_free
	.quad	0
	.quad	dgram_pair_sendmmsg
	.quad	dgram_pair_recvmmsg
	.section	.rodata
.LC2:
	.string	"BIO dgram mem"
	.section	.data.rel.ro
	.align 32
	.type	dgram_mem_method, @object
	.size	dgram_mem_method, 112
dgram_mem_method:
	.long	1051
	.zero	4
	.quad	.LC2
	.quad	bwrite_conv
	.quad	dgram_pair_write
	.quad	bread_conv
	.quad	dgram_mem_read
	.quad	0
	.quad	0
	.quad	dgram_mem_ctrl
	.quad	dgram_mem_init
	.quad	dgram_pair_free
	.quad	0
	.quad	dgram_pair_sendmmsg
	.quad	dgram_pair_recvmmsg
	.text
	.globl	BIO_s_dgram_pair
	.type	BIO_s_dgram_pair, @function
BIO_s_dgram_pair:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dgram_pair_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	BIO_s_dgram_pair, .-BIO_s_dgram_pair
	.globl	BIO_s_dgram_mem
	.type	BIO_s_dgram_mem, @function
BIO_s_dgram_mem:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dgram_mem_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	BIO_s_dgram_mem, .-BIO_s_dgram_mem
	.type	dgram_pair_init, @function
dgram_pair_init:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$277, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	$1472, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	2088(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$288, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	dgram_pair_init, .-dgram_pair_init
	.type	dgram_mem_init, @function
dgram_mem_init:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_init
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ring_buf_init
	testl	%eax, %eax
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L63:
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$8, %edx
	movb	%dl, 80(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	dgram_mem_init, .-dgram_mem_init
	.type	dgram_pair_free, @function
dgram_pair_free:
.LFB184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L67
	movl	$0, %eax
	jmp	.L66
.L67:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_destroy_bio_pair
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$331, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	dgram_pair_free, .-dgram_pair_free
	.section	.rodata
	.align 8
.LC3:
	.string	"both BIOs must be BIO_dgram_pair"
	.align 8
.LC4:
	.string	"cannot associate a BIO_dgram_pair which is already in use"
	.text
	.type	dgram_pair_ctrl_make_bio_pair, @function
dgram_pair_ctrl_make_bio_pair:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L69
	cmpq	$0, -32(%rbp)
	jne	.L70
.L69:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	dgram_pair_method(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L72
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	dgram_pair_method(%rip), %rax
	cmpq	%rax, %rdx
	je	.L73
.L72:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L73:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L74
	cmpq	$0, -16(%rbp)
	je	.L74
	movl	$1, %eax
	jmp	.L75
.L74:
	movl	$0, %eax
.L75:
	cltq
	testq	%rax, %rax
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L76:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L78
.L77:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	movl	$123, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L78:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$1023, %rax
	jbe	.L79
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$1023, %rax
	jbe	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movl	$0, %eax
.L80:
	cltq
	testq	%rax, %rax
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L81:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, %rdx
	je	.L82
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ring_buf_init
	testl	%eax, %eax
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L82:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, %rdx
	je	.L83
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ring_buf_init
	testl	%eax, %eax
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ring_buf_destroy
	movl	$0, %eax
	jmp	.L71
.L83:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 80(%rax)
	movq	-16(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$4, %edx
	movb	%dl, 80(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	dgram_pair_ctrl_make_bio_pair, .-dgram_pair_ctrl_make_bio_pair
	.type	dgram_pair_ctrl_destroy_bio_pair, @function
dgram_pair_ctrl_destroy_bio_pair:
.LFB186:
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
	addq	$8, %rax
	movq	%rax, %rdi
	call	ring_buf_destroy
	movq	-40(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L87
	movl	$0, %eax
	jmp	.L86
.L87:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ring_buf_destroy
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	dgram_pair_ctrl_destroy_bio_pair, .-dgram_pair_ctrl_destroy_bio_pair
	.type	dgram_pair_ctrl_eof, @function
dgram_pair_ctrl_eof:
.LFB187:
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
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L89
	movl	$-1, %eax
	jmp	.L90
.L89:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L91
	movl	$1, %eax
	jmp	.L90
.L91:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	movl	$0, %eax
	jmp	.L90
.L92:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L93
	movl	$-1, %eax
	jmp	.L90
.L93:
	movl	$0, %eax
.L90:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	dgram_pair_ctrl_eof, .-dgram_pair_ctrl_eof
	.type	dgram_pair_ctrl_set_write_buf_size, @function
dgram_pair_ctrl_set_write_buf_size:
.LFB188:
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
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L95
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$461, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L96
.L95:
	cmpq	$1023, -32(%rbp)
	ja	.L97
	movq	$1024, -32(%rbp)
.L97:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ring_buf_resize
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L96
.L98:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movzbl	80(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 80(%rax)
	movl	$1, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	dgram_pair_ctrl_set_write_buf_size, .-dgram_pair_ctrl_set_write_buf_size
	.type	dgram_pair_ctrl_reset, @function
dgram_pair_ctrl_reset:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ring_buf_clear
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	dgram_pair_ctrl_reset, .-dgram_pair_ctrl_reset
	.type	dgram_pair_ctrl_pending, @function
dgram_pair_ctrl_pending:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-280(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L113
.L102:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L105
.L104:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L105:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L113
.L106:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-272(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_read_inner
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -40(%rbp)
	je	.L107
	cmpq	$232, -40(%rbp)
	jne	.L108
.L107:
	movl	$1, %eax
	jmp	.L109
.L108:
	movl	$0, %eax
.L109:
	cltq
	testq	%rax, %rax
	jne	.L110
	movl	$0, %eax
	jmp	.L113
.L110:
	cmpq	$0, -40(%rbp)
	je	.L111
	movq	-272(%rbp), %rax
	jmp	.L113
.L111:
	movl	$0, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	dgram_pair_ctrl_pending, .-dgram_pair_ctrl_pending
	.type	dgram_pair_ctrl_get_write_guarantee, @function
dgram_pair_ctrl_get_write_guarantee:
.LFB191:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	cmpq	$231, -8(%rbp)
	jbe	.L117
	subq	$232, -8(%rbp)
.L117:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L118
	movq	$0, -8(%rbp)
.L118:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	dgram_pair_ctrl_get_write_guarantee, .-dgram_pair_ctrl_get_write_guarantee
	.type	dgram_pair_ctrl_get_local_addr_cap, @function
dgram_pair_ctrl_get_local_addr_cap:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L122:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L123:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	notl	%eax
	andl	$9, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L121:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	dgram_pair_ctrl_get_local_addr_cap, .-dgram_pair_ctrl_get_local_addr_cap
	.type	dgram_pair_ctrl_get_effective_caps, @function
dgram_pair_ctrl_get_effective_caps:
.LFB193:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
.L126:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	dgram_pair_ctrl_get_effective_caps, .-dgram_pair_ctrl_get_effective_caps
	.type	dgram_pair_ctrl_get_caps, @function
dgram_pair_ctrl_get_caps:
.LFB194:
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
	movl	64(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	dgram_pair_ctrl_get_caps, .-dgram_pair_ctrl_get_caps
	.type	dgram_pair_ctrl_set_caps, @function
dgram_pair_ctrl_set_caps:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 64(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	dgram_pair_ctrl_set_caps, .-dgram_pair_ctrl_set_caps
	.type	dgram_pair_ctrl_get_local_addr_enable, @function
dgram_pair_ctrl_get_local_addr_enable:
.LFB196:
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
	movzbl	80(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	dgram_pair_ctrl_get_local_addr_enable, .-dgram_pair_ctrl_get_local_addr_enable
	.type	dgram_pair_ctrl_set_local_addr_enable, @function
dgram_pair_ctrl_set_local_addr_enable:
.LFB197:
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
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_local_addr_cap
	testl	%eax, %eax
	jne	.L134
	movl	$0, %eax
	jmp	.L135
.L134:
	cmpl	$0, -28(%rbp)
	setne	%dl
	movq	-8(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	80(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 80(%rax)
	movl	$1, %eax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	dgram_pair_ctrl_set_local_addr_enable, .-dgram_pair_ctrl_set_local_addr_enable
	.type	dgram_pair_ctrl_get_mtu, @function
dgram_pair_ctrl_get_mtu:
.LFB198:
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
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	dgram_pair_ctrl_get_mtu, .-dgram_pair_ctrl_get_mtu
	.type	dgram_pair_ctrl_set_mtu, @function
dgram_pair_ctrl_set_mtu:
.LFB199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L139
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
.L139:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	dgram_pair_ctrl_set_mtu, .-dgram_pair_ctrl_set_mtu
	.type	dgram_mem_ctrl, @function
dgram_mem_ctrl:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L142
	movl	$0, %eax
	jmp	.L143
.L142:
	cmpl	$140, -28(%rbp)
	je	.L144
	cmpl	$140, -28(%rbp)
	jg	.L145
	cmpl	$137, -28(%rbp)
	je	.L146
	cmpl	$137, -28(%rbp)
	jg	.L145
	cmpl	$136, -28(%rbp)
	je	.L147
	cmpl	$136, -28(%rbp)
	jg	.L145
	cmpl	$89, -28(%rbp)
	je	.L148
	cmpl	$89, -28(%rbp)
	jg	.L145
	cmpl	$88, -28(%rbp)
	je	.L149
	cmpl	$88, -28(%rbp)
	jg	.L145
	cmpl	$87, -28(%rbp)
	je	.L150
	cmpl	$87, -28(%rbp)
	jg	.L145
	cmpl	$86, -28(%rbp)
	jg	.L145
	cmpl	$85, -28(%rbp)
	jge	.L151
	cmpl	$84, -28(%rbp)
	je	.L152
	cmpl	$84, -28(%rbp)
	jg	.L145
	cmpl	$83, -28(%rbp)
	je	.L153
	cmpl	$83, -28(%rbp)
	jg	.L145
	cmpl	$82, -28(%rbp)
	je	.L154
	cmpl	$82, -28(%rbp)
	jg	.L145
	cmpl	$42, -28(%rbp)
	je	.L155
	cmpl	$42, -28(%rbp)
	jg	.L145
	cmpl	$41, -28(%rbp)
	je	.L156
	cmpl	$41, -28(%rbp)
	jg	.L145
	cmpl	$11, -28(%rbp)
	je	.L162
	cmpl	$11, -28(%rbp)
	jg	.L145
	cmpl	$10, -28(%rbp)
	je	.L158
	cmpl	$10, -28(%rbp)
	jg	.L145
	cmpl	$1, -28(%rbp)
	je	.L159
	cmpl	$2, -28(%rbp)
	je	.L160
	jmp	.L145
.L147:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_ctrl_set_write_buf_size
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L146:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L161
.L159:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_reset
	jmp	.L161
.L144:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_write_guarantee
	movq	%rax, -8(%rbp)
	jmp	.L161
.L158:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_pending
	movq	%rax, -8(%rbp)
	jmp	.L161
.L149:
	movq	-16(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L161
.L148:
	cmpq	$0, -40(%rbp)
	setg	%dl
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	80(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 80(%rax)
	jmp	.L161
.L153:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_local_addr_enable
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L161
.L152:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dgram_pair_ctrl_set_local_addr_enable
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L154:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_local_addr_cap
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L151:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_caps
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	jmp	.L161
.L150:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dgram_pair_ctrl_set_caps
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L156:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_mtu
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L155:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_ctrl_set_mtu
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L160:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_eof
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L161
.L145:
	movq	$0, -8(%rbp)
	jmp	.L161
.L162:
	nop
.L161:
	movq	-8(%rbp), %rax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	dgram_mem_ctrl, .-dgram_mem_ctrl
	.type	dgram_pair_ctrl, @function
dgram_pair_ctrl:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$1, -8(%rbp)
	cmpl	$139, -28(%rbp)
	je	.L164
	cmpl	$139, -28(%rbp)
	jg	.L165
	cmpl	$85, -28(%rbp)
	je	.L166
	cmpl	$138, -28(%rbp)
	jne	.L165
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_ctrl_make_bio_pair
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L167
.L164:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_destroy_bio_pair
	jmp	.L167
.L166:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_pair_ctrl_get_effective_caps
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L167
.L165:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dgram_mem_ctrl
	movq	%rax, -8(%rbp)
	nop
.L167:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	dgram_pair_ctrl, .-dgram_pair_ctrl
	.globl	BIO_new_bio_dgram_pair
	.type	BIO_new_bio_dgram_pair, @function
BIO_new_bio_dgram_pair:
.LFB202:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	BIO_s_dgram_pair@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L178
	call	BIO_s_dgram_pair@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L179
	cmpq	$0, -48(%rbp)
	je	.L173
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$136, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L180
.L173:
	cmpq	$0, -64(%rbp)
	je	.L174
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$136, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L181
.L174:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$138, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L182
	movl	$1, -4(%rbp)
	jmp	.L171
.L178:
	nop
	jmp	.L171
.L179:
	nop
	jmp	.L171
.L180:
	nop
	jmp	.L171
.L181:
	nop
	jmp	.L171
.L182:
	nop
.L171:
	cmpl	$0, -4(%rbp)
	jne	.L176
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -24(%rbp)
.L176:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	BIO_new_bio_dgram_pair, .-BIO_new_bio_dgram_pair
	.type	dgram_pair_read_inner, @function
dgram_pair_read_inner:
.LFB203:
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
	movq	$0, -8(%rbp)
	jmp	.L184
.L190:
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdi
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	ring_buf_head_tail
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L192
	movq	-24(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L187
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L187:
	cmpq	$0, -48(%rbp)
	je	.L188
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L188:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	ring_buf_push_pop
	cmpq	$0, -48(%rbp)
	je	.L189
	movq	-24(%rbp), %rax
	addq	%rax, -48(%rbp)
.L189:
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
.L184:
	cmpq	$0, -56(%rbp)
	jne	.L190
	jmp	.L186
.L192:
	nop
.L186:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	dgram_pair_read_inner, .-dgram_pair_read_inner
	.type	dgram_pair_read_actual, @function
dgram_pair_read_actual:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%r8, -344(%rbp)
	movl	%r9d, -348(%rbp)
	movq	$0, -24(%rbp)
	movq	-312(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -348(%rbp)
	jne	.L194
	movq	-312(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L194:
	movq	-312(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L195
	movq	$-120, %rax
	jmp	.L214
.L195:
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L197
	movq	$-104, %rax
	jmp	.L214
.L197:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L199
.L198:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.L199:
	cmpq	$0, -32(%rbp)
	je	.L200
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movl	$1, %eax
	jmp	.L201
.L200:
	movl	$0, %eax
.L201:
	cltq
	testq	%rax, %rax
	jne	.L202
	movq	$-104, %rax
	jmp	.L214
.L202:
	cmpq	$0, -328(%rbp)
	je	.L203
	cmpq	$0, -320(%rbp)
	jne	.L203
	movq	$-125, %rax
	jmp	.L214
.L203:
	cmpq	$0, -336(%rbp)
	je	.L204
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L204
	movq	$-111, %rax
	jmp	.L214
.L204:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-304(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_read_inner
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L205
	cmpl	$0, -348(%rbp)
	jne	.L206
	movq	-312(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L206:
	movq	$-112, %rax
	jmp	.L214
.L205:
	cmpq	$232, -64(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L207
	movq	$-124, %rax
	jmp	.L214
.L207:
	movq	-304(%rbp), %rax
	cmpq	-328(%rbp), %rax
	jnb	.L208
	movq	-304(%rbp), %rax
	movq	%rax, -328(%rbp)
	jmp	.L209
.L208:
	movq	-304(%rbp), %rax
	cmpq	%rax, -328(%rbp)
	jnb	.L209
	movq	-304(%rbp), %rax
	subq	-328(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L209
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	$-112, %rax
	jmp	.L214
.L209:
	movq	-328(%rbp), %rdx
	movq	-320(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_read_inner
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-328(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L210
	movq	$-104, %rax
	jmp	.L214
.L210:
	cmpq	$0, -24(%rbp)
	je	.L211
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	dgram_pair_read_inner
	cmpq	%rax, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L211
	movq	$-104, %rax
	jmp	.L214
.L211:
	cmpq	$0, -336(%rbp)
	je	.L212
	movq	-336(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	-176(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
.L212:
	cmpq	$0, -344(%rbp)
	je	.L213
	movq	-344(%rbp), %rax
	movq	-296(%rbp), %rcx
	movq	-288(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-248(%rbp), %rcx
	movq	-240(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-232(%rbp), %rcx
	movq	-224(%rbp), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-216(%rbp), %rcx
	movq	-208(%rbp), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	-200(%rbp), %rcx
	movq	-192(%rbp), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
.L213:
	movq	-64(%rbp), %rax
.L214:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	dgram_pair_read_actual, .-dgram_pair_read_actual
	.type	dgram_pair_lock_both_write, @function
dgram_pair_lock_both_write:
.LFB205:
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
	movzbl	80(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L216
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L217
.L216:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L217:
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L218
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L219
.L218:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L219:
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$1, %edx
	movq	-32(%rbp), %rax
	movzbl	80(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	cmpb	%al, %dl
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L220
	movl	$0, %eax
	jmp	.L221
.L220:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L222
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L222
	movl	$1, %eax
	jmp	.L223
.L222:
	movl	$0, %eax
.L223:
	cltq
	testq	%rax, %rax
	jne	.L224
	movl	$0, %eax
	jmp	.L221
.L224:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L225
	movl	$0, %eax
	jmp	.L221
.L225:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L226
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
	jmp	.L221
.L226:
	movl	$1, %eax
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	dgram_pair_lock_both_write, .-dgram_pair_lock_both_write
	.type	dgram_pair_unlock_both, @function
dgram_pair_unlock_both:
.LFB206:
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
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	dgram_pair_unlock_both, .-dgram_pair_unlock_both
	.type	dgram_pair_read, @function
dgram_pair_read:
.LFB207:
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
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L229
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$998, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L230
.L229:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L231
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1003, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L230
.L231:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_lock_both_write
	testl	%eax, %eax
	jne	.L232
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1015, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786704, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L230
.L232:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	dgram_pair_read_actual
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jns	.L233
	cmpq	$-112, -32(%rbp)
	je	.L234
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1022, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	negl	%eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L234:
	movl	$-1, -4(%rbp)
	jmp	.L235
.L233:
	movq	-32(%rbp), %rax
	movl	%eax, -4(%rbp)
.L235:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_unlock_both
	movl	-4(%rbp), %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	dgram_pair_read, .-dgram_pair_read
	.type	dgram_pair_recvmmsg, @function
dgram_pair_recvmmsg:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L237
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L238
.L237:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L239
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1050, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L238
.L239:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L240
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L241
.L240:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L241:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L242
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1061, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786704, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L238
.L242:
	movq	$0, -16(%rbp)
	jmp	.L243
.L248:
	movq	-16(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dgram_pair_read_actual
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jns	.L244
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L245
	movl	$1, -4(%rbp)
	jmp	.L247
.L245:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1075, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	negl	%eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L247
.L244:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	addq	$1, -16(%rbp)
.L243:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L248
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
.L247:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	dgram_pair_recvmmsg, .-dgram_pair_recvmmsg
	.type	dgram_mem_read, @function
dgram_mem_read:
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
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L250
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L251
.L250:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L252
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786704, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L251
.L252:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	dgram_pair_read_actual
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L253
	cmpq	$-112, -24(%rbp)
	je	.L254
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	negl	%eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L254:
	movl	$-1, -4(%rbp)
	jmp	.L255
.L253:
	movq	-24(%rbp), %rax
	movl	%eax, -4(%rbp)
.L255:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	dgram_mem_read, .-dgram_mem_read
	.section	.rodata
	.align 8
	.type	max_rbuf_size, @object
	.size	max_rbuf_size, 8
max_rbuf_size:
	.quad	9223372036854775807
	.text
	.type	compute_rbuf_growth, @function
compute_rbuf_growth:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L257
.L261:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L258
	movl	$0, %eax
	jmp	.L262
.L258:
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	safe_muldiv_size_t
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L260
	movl	$0, %eax
	jmp	.L262
.L260:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L257
	movabsq	$9223372036854775807, %rax
	movq	%rax, -32(%rbp)
.L257:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L261
	movq	-32(%rbp), %rax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	compute_rbuf_growth, .-compute_rbuf_growth
	.type	dgram_pair_write_inner, @function
dgram_pair_write_inner:
.LFB211:
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
	movq	$0, -8(%rbp)
	jmp	.L264
.L270:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdi
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	ring_buf_head_tail
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L265
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L272
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	48(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	compute_rbuf_growth
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L273
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ring_buf_resize
	testl	%eax, %eax
	je	.L273
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L265:
	movq	-24(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L268
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L268:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	ring_buf_push_pop
	movq	-24(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
.L264:
	cmpq	$0, -56(%rbp)
	jne	.L270
	jmp	.L269
.L272:
	nop
	jmp	.L269
.L273:
	nop
.L269:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	dgram_pair_write_inner, .-dgram_pair_write_inner
	.type	dgram_pair_write_actual, @function
dgram_pair_write_actual:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%r8, -328(%rbp)
	movl	%r9d, -332(%rbp)
	movq	-296(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rdx
	movl	$0, %eax
	movl	$29, %ecx
	movq	%rdx, %rdi
	rep stosq
	cmpl	$0, -332(%rbp)
	jne	.L275
	movq	-296(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L275:
	movq	-296(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L276
	movq	$-120, %rax
	jmp	.L293
.L276:
	cmpq	$0, -32(%rbp)
	je	.L278
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L278
	movl	$1, %eax
	jmp	.L279
.L278:
	movl	$0, %eax
.L279:
	cltq
	testq	%rax, %rax
	jne	.L280
	movq	$-104, %rax
	jmp	.L293
.L280:
	cmpq	$0, -312(%rbp)
	je	.L281
	cmpq	$0, -304(%rbp)
	jne	.L281
	movq	$-125, %rax
	jmp	.L293
.L281:
	cmpq	$0, -320(%rbp)
	je	.L282
	movq	-32(%rbp), %rax
	movzbl	80(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L282
	movq	$-111, %rax
	jmp	.L293
.L282:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L284
.L283:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L284:
	cmpq	$0, -328(%rbp)
	je	.L285
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L285
	movq	$-151, %rax
	jmp	.L293
.L285:
	movq	-312(%rbp), %rax
	movq	%rax, -288(%rbp)
	cmpq	$0, -328(%rbp)
	je	.L286
	movq	-328(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -168(%rbp)
	movq	%rbx, -160(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -152(%rbp)
	movq	%rbx, -144(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -136(%rbp)
	movq	%rbx, -128(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -120(%rbp)
	movq	%rbx, -112(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -104(%rbp)
	movq	%rbx, -96(%rbp)
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -88(%rbp)
	movq	%rbx, -80(%rbp)
	movq	104(%rax), %rdx
	movq	96(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	jmp	.L287
.L286:
	movq	zero_addr.2(%rip), %rax
	movq	8+zero_addr.2(%rip), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	16+zero_addr.2(%rip), %rax
	movq	24+zero_addr.2(%rip), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	32+zero_addr.2(%rip), %rax
	movq	40+zero_addr.2(%rip), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	48+zero_addr.2(%rip), %rax
	movq	56+zero_addr.2(%rip), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	64+zero_addr.2(%rip), %rax
	movq	72+zero_addr.2(%rip), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	80+zero_addr.2(%rip), %rax
	movq	88+zero_addr.2(%rip), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	96+zero_addr.2(%rip), %rax
	movq	104+zero_addr.2(%rip), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
.L287:
	cmpq	$0, -320(%rbp)
	je	.L288
	movq	-320(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -280(%rbp)
	movq	%rbx, -272(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -264(%rbp)
	movq	%rbx, -256(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -248(%rbp)
	movq	%rbx, -240(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -232(%rbp)
	movq	%rbx, -224(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -216(%rbp)
	movq	%rbx, -208(%rbp)
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -200(%rbp)
	movq	%rbx, -192(%rbp)
	movq	104(%rax), %rdx
	movq	96(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	jmp	.L289
.L288:
	movq	zero_addr.2(%rip), %rax
	movq	8+zero_addr.2(%rip), %rdx
	movq	%rax, -280(%rbp)
	movq	%rdx, -272(%rbp)
	movq	16+zero_addr.2(%rip), %rax
	movq	24+zero_addr.2(%rip), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	32+zero_addr.2(%rip), %rax
	movq	40+zero_addr.2(%rip), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	48+zero_addr.2(%rip), %rax
	movq	56+zero_addr.2(%rip), %rdx
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	64+zero_addr.2(%rip), %rax
	movq	72+zero_addr.2(%rip), %rdx
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	80+zero_addr.2(%rip), %rax
	movq	88+zero_addr.2(%rip), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	96+zero_addr.2(%rip), %rax
	movq	104+zero_addr.2(%rip), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
.L289:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-288(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_write_inner
	cmpq	$232, %rax
	jne	.L290
	movq	-312(%rbp), %rdx
	movq	-304(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dgram_pair_write_inner
	cmpq	%rax, -312(%rbp)
	je	.L291
.L290:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpl	$0, -332(%rbp)
	jne	.L292
	movq	-296(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L292:
	movq	$-112, %rax
	jmp	.L293
.L291:
	movq	-312(%rbp), %rax
.L293:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	dgram_pair_write_actual, .-dgram_pair_write_actual
	.type	dgram_pair_write, @function
dgram_pair_write:
.LFB213:
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
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L295
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L296
.L295:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L297
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786704, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L296
.L297:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	dgram_pair_write_actual
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jns	.L298
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	negl	%eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
	jmp	.L299
.L298:
	movq	-24(%rbp), %rax
	movl	%eax, -4(%rbp)
.L299:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	dgram_pair_write, .-dgram_pair_write
	.type	dgram_pair_sendmmsg, @function
dgram_pair_sendmmsg:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L301
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L302
.L301:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L303
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786704, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L302
.L303:
	movq	$0, -16(%rbp)
	jmp	.L304
.L309:
	movq	-16(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dgram_pair_write_actual
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jns	.L305
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L306
	movq	$1, -8(%rbp)
	jmp	.L308
.L306:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	negl	%eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L308
.L305:
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	addq	$1, -16(%rbp)
.L304:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L309
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$1, -8(%rbp)
.L308:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L302:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	dgram_pair_sendmmsg, .-dgram_pair_sendmmsg
	.section	.rodata
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 15
__func__.8:
	.string	"dgram_mem_init"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 30
__func__.7:
	.string	"dgram_pair_ctrl_make_bio_pair"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 35
__func__.6:
	.string	"dgram_pair_ctrl_set_write_buf_size"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"dgram_pair_read"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 20
__func__.4:
	.string	"dgram_pair_recvmmsg"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"dgram_mem_read"
	.align 32
	.type	zero_addr.2, @object
	.size	zero_addr.2, 112
zero_addr.2:
	.zero	112
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"dgram_pair_write"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"dgram_pair_sendmmsg"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

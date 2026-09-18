	.file	"bf_lbuf.c"
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
	.string	"linebuffer"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_linebuffer, @object
	.size	methods_linebuffer, 112
methods_linebuffer:
	.long	532
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	linebuffer_write
	.quad	bread_conv
	.quad	linebuffer_read
	.quad	linebuffer_puts
	.quad	linebuffer_gets
	.quad	linebuffer_ctrl
	.quad	linebuffer_new
	.quad	linebuffer_free
	.quad	linebuffer_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_linebuffer
	.type	BIO_f_linebuffer, @function
BIO_f_linebuffer:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_linebuffer(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	BIO_f_linebuffer, .-BIO_f_linebuffer
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bf_lbuf.c"
	.text
	.type	linebuffer_new, @function
linebuffer_new:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	leaq	.LC1(%rip), %rax
	movl	$62, %edx
	movq	%rax, %rsi
	movl	$10240, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movl	$10240, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	linebuffer_new, .-linebuffer_new
	.type	linebuffer_free, @function
linebuffer_free:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	linebuffer_free, .-linebuffer_free
	.type	linebuffer_read, @function
linebuffer_read:
.LFB410:
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
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	linebuffer_read, .-linebuffer_read
	.type	linebuffer_write, @function
linebuffer_write:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L19
	cmpl	$0, -68(%rbp)
	jg	.L20
.L19:
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L22
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L21
.L23:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L47:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movb	$0, -17(%rbp)
	jmp	.L24
.L26:
	addq	$1, -16(%rbp)
.L24:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L25
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	cmpb	$10, -17(%rbp)
	jne	.L26
.L25:
	cmpb	$10, -17(%rbp)
	jne	.L27
	addq	$1, -16(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L29
.L27:
	movl	$0, -8(%rbp)
	jmp	.L29
.L39:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	testq	%rax, %rax
	jle	.L30
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L31
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	-68(%rbp), %edx
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L30
.L31:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movl	-40(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	-40(%rbp), %eax
	subl	%eax, -68(%rbp)
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	movl	-40(%rbp), %eax
	addl	%eax, -4(%rbp)
.L30:
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.L32
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -40(%rbp)
	jns	.L33
	cmpl	$0, -4(%rbp)
	jle	.L34
	movl	-4(%rbp), %eax
	jmp	.L21
.L34:
	movl	-40(%rbp), %eax
	jmp	.L21
.L33:
	cmpl	$0, -40(%rbp)
	jne	.L32
	movl	-4(%rbp), %eax
	jmp	.L21
.L32:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jge	.L36
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	subl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L36:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	subl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
.L29:
	cmpl	$0, -8(%rbp)
	jne	.L37
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	subl	%eax, %ecx
	movslq	%ecx, %rax
	cmpq	%rax, %rdx
	jle	.L38
.L37:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jg	.L39
.L38:
	cmpl	$0, -8(%rbp)
	jne	.L40
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L41
.L40:
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	testq	%rax, %rax
	jle	.L41
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.L42
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -40(%rbp)
	jns	.L43
	cmpl	$0, -4(%rbp)
	jle	.L44
	movl	-4(%rbp), %eax
	jmp	.L21
.L44:
	movl	-40(%rbp), %eax
	jmp	.L21
.L43:
	cmpl	$0, -40(%rbp)
	jne	.L42
	movl	-4(%rbp), %eax
	jmp	.L21
.L42:
	movl	-40(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	movl	-40(%rbp), %eax
	subl	%eax, -68(%rbp)
.L41:
	cmpl	$0, -8(%rbp)
	je	.L46
	cmpl	$0, -68(%rbp)
	jg	.L47
.L46:
	cmpl	$0, -68(%rbp)
	jle	.L48
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	-68(%rbp), %eax
	addl	%eax, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	linebuffer_write, .-linebuffer_write
	.type	linebuffer_ctrl, @function
linebuffer_ctrl:
.LFB412:
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
	movq	%rax, -24(%rbp)
	cmpl	$117, -60(%rbp)
	je	.L50
	cmpl	$117, -60(%rbp)
	jg	.L51
	cmpl	$101, -60(%rbp)
	je	.L52
	cmpl	$101, -60(%rbp)
	jg	.L51
	cmpl	$13, -60(%rbp)
	je	.L53
	cmpl	$13, -60(%rbp)
	jg	.L51
	cmpl	$12, -60(%rbp)
	je	.L54
	cmpl	$12, -60(%rbp)
	jg	.L51
	cmpl	$11, -60(%rbp)
	je	.L55
	cmpl	$11, -60(%rbp)
	jg	.L51
	cmpl	$1, -60(%rbp)
	je	.L56
	cmpl	$3, -60(%rbp)
	je	.L57
	jmp	.L51
.L56:
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L60
.L57:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L60
.L53:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	movl	$0, %eax
	jmp	.L59
.L62:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L78
.L50:
	cmpq	$2147483647, -72(%rbp)
	jle	.L63
	movl	$0, %eax
	jmp	.L59
.L63:
	movq	-72(%rbp), %rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$10240, -28(%rbp)
	jle	.L64
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L64
	movl	-28(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$235, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L59
.L64:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L79
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jge	.L66
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 12(%rax)
.L66:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L79
.L52:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movl	$0, %eax
	jmp	.L59
.L67:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L60
.L55:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L59
.L68:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jg	.L69
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L60
.L69:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L70
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -44(%rbp)
	jg	.L71
	movl	-44(%rbp), %eax
	cltq
	jmp	.L59
.L71:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L72
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	subl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L72:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	subl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L69
.L70:
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	nop
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L60
.L54:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movl	$117, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	testq	%rax, %rax
	jg	.L80
	movq	$0, -8(%rbp)
	jmp	.L80
.L51:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	movl	$0, %eax
	jmp	.L59
.L76:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L60
.L78:
	nop
	jmp	.L60
.L79:
	nop
	jmp	.L60
.L80:
	nop
.L60:
	movq	-8(%rbp), %rax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	linebuffer_ctrl, .-linebuffer_ctrl
	.type	linebuffer_callback_ctrl, @function
linebuffer_callback_ctrl:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	linebuffer_callback_ctrl, .-linebuffer_callback_ctrl
	.type	linebuffer_gets, @function
linebuffer_gets:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	linebuffer_gets, .-linebuffer_gets
	.type	linebuffer_puts, @function
linebuffer_puts:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	linebuffer_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	linebuffer_puts, .-linebuffer_puts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

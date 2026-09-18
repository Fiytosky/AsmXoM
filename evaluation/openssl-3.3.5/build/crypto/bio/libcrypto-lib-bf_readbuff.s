	.file	"bf_readbuff.c"
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
	.string	"readbuffer"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_readbuffer, @object
	.size	methods_readbuffer, 112
methods_readbuffer:
	.long	521
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	readbuffer_write
	.quad	bread_conv
	.quad	readbuffer_read
	.quad	readbuffer_puts
	.quad	readbuffer_gets
	.quad	readbuffer_ctrl
	.quad	readbuffer_new
	.quad	readbuffer_free
	.quad	readbuffer_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_readbuffer
	.type	BIO_f_readbuffer, @function
BIO_f_readbuffer:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_readbuffer(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_f_readbuffer, .-BIO_f_readbuffer
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bf_readbuff.c"
	.text
	.type	readbuffer_new, @function
readbuffer_new:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$55, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$4096, (%rax)
	leaq	.LC1(%rip), %rax
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$4096, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
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
.LFE166:
	.size	readbuffer_new, .-readbuffer_new
	.type	readbuffer_free, @function
readbuffer_free:
.LFB167:
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
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$80, %edx
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
.LFE167:
	.size	readbuffer_free, .-readbuffer_free
	.type	readbuffer_resize, @function
readbuffer_resize:
.LFB168:
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
	movl	20(%rax), %eax
	addl	$4095, %eax
	addl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	leal	4095(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$12, %eax
	sall	$12, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L15
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$97, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
.L15:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	readbuffer_resize, .-readbuffer_resize
	.type	readbuffer_read, @function
readbuffer_read:
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
	movl	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L19
	cmpl	$0, -36(%rbp)
	jne	.L20
.L19:
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L21
.L23:
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L32:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L24
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L25
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.L25:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L26
	movl	-8(%rbp), %eax
	jmp	.L21
.L26:
	movl	-4(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
.L24:
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	readbuffer_resize
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L21
.L27:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -4(%rbp)
	jns	.L29
	cmpl	$0, -8(%rbp)
	jle	.L30
	movl	-8(%rbp), %eax
	jmp	.L21
.L30:
	movl	-4(%rbp), %eax
	jmp	.L21
.L29:
	movl	-8(%rbp), %eax
	jmp	.L21
.L28:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 16(%rax)
	jmp	.L32
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	readbuffer_read, .-readbuffer_read
	.type	readbuffer_write, @function
readbuffer_write:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	readbuffer_write, .-readbuffer_write
	.type	readbuffer_puts, @function
readbuffer_puts:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	readbuffer_puts, .-readbuffer_puts
	.type	readbuffer_ctrl, @function
readbuffer_ctrl:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$133, -44(%rbp)
	je	.L38
	cmpl	$133, -44(%rbp)
	jg	.L39
	cmpl	$128, -44(%rbp)
	je	.L40
	cmpl	$128, -44(%rbp)
	jg	.L39
	cmpl	$12, -44(%rbp)
	jg	.L39
	cmpl	$11, -44(%rbp)
	jge	.L41
	cmpl	$10, -44(%rbp)
	je	.L42
	cmpl	$10, -44(%rbp)
	jg	.L39
	cmpl	$3, -44(%rbp)
	je	.L38
	cmpl	$3, -44(%rbp)
	jg	.L39
	cmpl	$1, -44(%rbp)
	je	.L40
	cmpl	$2, -44(%rbp)
	jne	.L39
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jle	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movl	$1, %eax
	jmp	.L44
.L45:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L46
.L40:
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	addl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	js	.L47
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L48
.L47:
	movl	$0, %eax
	jmp	.L44
.L48:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L46
.L38:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L46
.L42:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	movl	$0, %eax
	jmp	.L44
.L50:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L51
.L41:
	movq	$1, -8(%rbp)
	jmp	.L46
.L39:
	movq	$0, -8(%rbp)
	jmp	.L46
.L51:
	nop
.L46:
	movq	-8(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	readbuffer_ctrl, .-readbuffer_ctrl
	.type	readbuffer_callback_ctrl, @function
readbuffer_callback_ctrl:
.LFB173:
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
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	readbuffer_callback_ctrl, .-readbuffer_callback_ctrl
	.type	readbuffer_gets, @function
readbuffer_gets:
.LFB174:
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
	je	.L56
	cmpl	$0, -68(%rbp)
	jne	.L57
.L56:
	movl	$0, %eax
	jmp	.L58
.L57:
	subl	$1, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L59
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L58
.L60:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jle	.L61
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L62
.L65:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L63
	movl	$1, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L64
.L63:
	addl	$1, -8(%rbp)
.L62:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L64
	movl	-8(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L65
.L64:
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	cmpl	$0, -12(%rbp)
	jne	.L66
	cmpl	$0, -68(%rbp)
	jne	.L61
.L66:
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	jmp	.L58
.L61:
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	readbuffer_resize
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L58
.L67:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L68
.L74:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L69
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -4(%rbp)
	jle	.L70
	movl	-4(%rbp), %eax
	jmp	.L58
.L70:
	movl	-44(%rbp), %eax
	jmp	.L58
.L69:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L75
	addq	$1, -24(%rbp)
	addl	$1, -28(%rbp)
.L68:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L74
	jmp	.L73
.L75:
	nop
.L73:
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	readbuffer_gets, .-readbuffer_gets
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

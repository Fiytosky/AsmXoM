	.file	"bf_buff.c"
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
	.string	"buffer"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_buffer, @object
	.size	methods_buffer, 112
methods_buffer:
	.long	521
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	buffer_write
	.quad	bread_conv
	.quad	buffer_read
	.quad	buffer_puts
	.quad	buffer_gets
	.quad	buffer_ctrl
	.quad	buffer_new
	.quad	buffer_free
	.quad	buffer_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_buffer
	.type	BIO_f_buffer, @function
BIO_f_buffer:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_buffer(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_f_buffer, .-BIO_f_buffer
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bf_buff.c"
	.text
	.type	buffer_new, @function
buffer_new:
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
	movl	$47, %edx
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
	movl	$52, %edx
	movq	%rax, %rsi
	movl	$4096, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movl	$4096, 4(%rax)
	leaq	.LC1(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$4096, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L11:
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
	.size	buffer_new, .-buffer_new
	.type	buffer_free, @function
buffer_free:
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
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
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
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	buffer_free, .-buffer_free
	.type	buffer_read, @function
buffer_read:
.LFB168:
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
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L17
.L19:
	movl	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L20:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L21
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L22
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.L22:
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
	jne	.L23
	movl	-8(%rbp), %eax
	jmp	.L17
.L23:
	movl	-4(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
.L21:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L24
.L30:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -4(%rbp)
	jns	.L26
	cmpl	$0, -8(%rbp)
	jle	.L27
	movl	-8(%rbp), %eax
	jmp	.L17
.L27:
	movl	-4(%rbp), %eax
	jmp	.L17
.L26:
	cmpl	$0, -4(%rbp)
	jne	.L25
	movl	-8(%rbp), %eax
	jmp	.L17
.L25:
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L29
	movl	-8(%rbp), %eax
	jmp	.L17
.L29:
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	subl	%eax, -36(%rbp)
	jmp	.L30
.L24:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -4(%rbp)
	jns	.L32
	cmpl	$0, -8(%rbp)
	jle	.L33
	movl	-8(%rbp), %eax
	jmp	.L17
.L33:
	movl	-4(%rbp), %eax
	jmp	.L17
.L32:
	cmpl	$0, -4(%rbp)
	jne	.L31
	movl	-8(%rbp), %eax
	jmp	.L17
.L31:
	movq	-16(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 16(%rax)
	jmp	.L20
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	buffer_read, .-buffer_read
	.type	buffer_write, @function
buffer_write:
.LFB169:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L36
	cmpl	$0, -52(%rbp)
	jg	.L37
.L36:
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L40
.L39:
	movl	$0, %eax
	jmp	.L38
.L40:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L41:
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L42
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	addl	%esi, %eax
	cltq
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movl	-52(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	-4(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	jmp	.L38
.L42:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L43
	cmpl	$0, -20(%rbp)
	jle	.L50
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	addl	%esi, %eax
	cltq
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-20(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
.L50:
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L45
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -20(%rbp)
	jns	.L46
	cmpl	$0, -4(%rbp)
	jle	.L47
	movl	-4(%rbp), %eax
	jmp	.L38
.L47:
	movl	-20(%rbp), %eax
	jmp	.L38
.L46:
	cmpl	$0, -20(%rbp)
	jne	.L45
	movl	-4(%rbp), %eax
	jmp	.L38
.L45:
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L57
	jmp	.L50
.L57:
	nop
.L43:
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	jmp	.L51
.L56:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L52
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -20(%rbp)
	jns	.L53
	cmpl	$0, -4(%rbp)
	jle	.L54
	movl	-4(%rbp), %eax
	jmp	.L38
.L54:
	movl	-20(%rbp), %eax
	jmp	.L38
.L53:
	cmpl	$0, -20(%rbp)
	jne	.L52
	movl	-4(%rbp), %eax
	jmp	.L38
.L52:
	movl	-20(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-20(%rbp), %eax
	subl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L51
	movl	-4(%rbp), %eax
	jmp	.L38
.L51:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jge	.L56
	jmp	.L41
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	buffer_write, .-buffer_write
	.type	buffer_ctrl, @function
buffer_ctrl:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$1, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$122, -92(%rbp)
	je	.L59
	cmpl	$122, -92(%rbp)
	jg	.L60
	cmpl	$117, -92(%rbp)
	je	.L61
	cmpl	$117, -92(%rbp)
	jg	.L60
	cmpl	$116, -92(%rbp)
	je	.L62
	cmpl	$116, -92(%rbp)
	jg	.L60
	cmpl	$101, -92(%rbp)
	je	.L63
	cmpl	$101, -92(%rbp)
	jg	.L60
	cmpl	$29, -92(%rbp)
	je	.L64
	cmpl	$29, -92(%rbp)
	jg	.L60
	cmpl	$13, -92(%rbp)
	je	.L65
	cmpl	$13, -92(%rbp)
	jg	.L60
	cmpl	$12, -92(%rbp)
	je	.L66
	cmpl	$12, -92(%rbp)
	jg	.L60
	cmpl	$11, -92(%rbp)
	je	.L67
	cmpl	$11, -92(%rbp)
	jg	.L60
	cmpl	$10, -92(%rbp)
	je	.L68
	cmpl	$10, -92(%rbp)
	jg	.L60
	cmpl	$3, -92(%rbp)
	je	.L69
	cmpl	$3, -92(%rbp)
	jg	.L60
	cmpl	$1, -92(%rbp)
	je	.L70
	cmpl	$2, -92(%rbp)
	je	.L71
	jmp	.L60
.L70:
	movq	-48(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L74
.L71:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jle	.L75
	movl	$0, %eax
	jmp	.L73
.L75:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L74
.L69:
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L74
.L62:
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L76
.L78:
	movq	-48(%rbp), %rax
	movl	20(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L77
	addq	$1, -8(%rbp)
.L77:
	addl	$1, -28(%rbp)
.L76:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L78
	jmp	.L74
.L65:
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L107
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movl	$0, %eax
	jmp	.L73
.L80:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L107
.L68:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L108
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	movl	$0, %eax
	jmp	.L73
.L82:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L108
.L59:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	cmpq	%rax, -104(%rbp)
	jle	.L83
	cmpq	$0, -104(%rbp)
	jg	.L84
	movl	$0, %eax
	jmp	.L73
.L84:
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$292, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L73
.L85:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$295, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L83:
	movq	-48(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-104(%rbp), %rax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$1, -8(%rbp)
	jmp	.L74
.L61:
	cmpq	$0, -112(%rbp)
	je	.L86
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L87
	movq	-104(%rbp), %rax
	movl	%eax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.L88
.L87:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	%eax, -36(%rbp)
	jmp	.L88
.L86:
	movq	-104(%rbp), %rax
	movl	%eax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	%eax, -36(%rbp)
.L88:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$4096, -32(%rbp)
	jle	.L89
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	je	.L89
	cmpq	$0, -104(%rbp)
	jg	.L90
	movl	$0, %eax
	jmp	.L73
.L90:
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L73
.L89:
	cmpl	$4096, -36(%rbp)
	jle	.L91
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L91
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$328, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L91
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L92
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$331, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L92:
	movl	$0, %eax
	jmp	.L73
.L91:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L93
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
.L93:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L109
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L109
.L63:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movl	$0, %eax
	jmp	.L73
.L95:
	movq	-88(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L74
.L67:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L96
	movl	$0, %eax
	jmp	.L73
.L96:
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jg	.L97
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L74
.L97:
	movq	-88(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jle	.L98
	movq	-48(%rbp), %rax
	movl	32(%rax), %edx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -68(%rbp)
	jg	.L99
	movl	-68(%rbp), %eax
	cltq
	jmp	.L73
.L99:
	movq	-48(%rbp), %rax
	movl	36(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	subl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L97
.L98:
	movq	-48(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 36(%rax)
	nop
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L74
.L66:
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$117, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	testq	%rax, %rax
	jle	.L102
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$117, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	testq	%rax, %rax
	jg	.L110
.L102:
	movq	$0, -8(%rbp)
	jmp	.L110
.L64:
	leaq	-69(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_read
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	cmpq	%rax, -104(%rbp)
	jle	.L104
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
.L104:
	movq	-104(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L60:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	movl	$0, %eax
	jmp	.L73
.L105:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L74
.L107:
	nop
	jmp	.L74
.L108:
	nop
	jmp	.L74
.L109:
	nop
	jmp	.L74
.L110:
	nop
.L74:
	movq	-8(%rbp), %rax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	buffer_ctrl, .-buffer_ctrl
	.type	buffer_callback_ctrl, @function
buffer_callback_ctrl:
.LFB171:
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
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	buffer_callback_ctrl, .-buffer_callback_ctrl
	.type	buffer_gets, @function
buffer_gets:
.LFB172:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	subl	$1, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
.L127:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jle	.L115
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L116
.L119:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L117
	movl	$1, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L118
.L117:
	addl	$1, -8(%rbp)
.L116:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L118
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L119
.L118:
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	cmpl	$0, -12(%rbp)
	jne	.L120
	cmpl	$0, -52(%rbp)
	jne	.L127
.L120:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	jmp	.L122
.L115:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L123
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -8(%rbp)
	jns	.L124
	cmpl	$0, -4(%rbp)
	jle	.L125
	movl	-4(%rbp), %eax
	jmp	.L122
.L125:
	movl	-8(%rbp), %eax
	jmp	.L122
.L124:
	cmpl	$0, -8(%rbp)
	jne	.L123
	movl	-4(%rbp), %eax
	jmp	.L122
.L123:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
	jmp	.L127
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	buffer_gets, .-buffer_gets
	.type	buffer_puts, @function
buffer_puts:
.LFB173:
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
	call	buffer_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	buffer_puts, .-buffer_puts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"bss_bio.c"
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
	.string	"BIO pair"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_biop, @object
	.size	methods_biop, 112
methods_biop:
	.long	1043
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	bio_write
	.quad	bread_conv
	.quad	bio_read
	.quad	bio_puts
	.quad	0
	.quad	bio_ctrl
	.quad	bio_new
	.quad	bio_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_bio
	.type	BIO_s_bio, @function
BIO_s_bio:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_biop(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_s_bio, .-BIO_s_bio
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bss_bio.c"
	.text
	.type	bio_new, @function
bio_new:
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
	movl	$78, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	$17408, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bio_new, .-bio_new
	.type	bio_free, @function
bio_free:
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
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bio_destroy_pair
.L13:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$103, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	bio_free, .-bio_free
	.type	bio_read, @function
bio_read:
.LFB168:
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
	movl	-68(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -64(%rbp)
	je	.L17
	cmpq	$0, -8(%rbp)
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L16
.L18:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L20
	movl	$0, %eax
	jmp	.L16
.L20:
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jb	.L21
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L22
.L21:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 48(%rax)
.L22:
	movl	$-1, %eax
	jmp	.L16
.L19:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L23
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L23:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L29:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rdx, %rax
	jb	.L24
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L25
.L24:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
.L25:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L27
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
.L27:
	movq	-24(%rbp), %rax
	addq	%rax, -64(%rbp)
	jmp	.L28
.L26:
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
.L28:
	movq	-24(%rbp), %rax
	subq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L29
	movq	-8(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	bio_read, .-bio_read
	.type	bio_nread0, @function
bio_nread0:
.LFB169:
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
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	leaq	-25(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_read
	cltq
	jmp	.L32
.L33:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L34
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
.L34:
	cmpq	$0, -48(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L35:
	movq	-8(%rbp), %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	bio_nread0, .-bio_nread0
	.type	bio_nread, @function
bio_nread:
.LFB170:
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
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jns	.L37
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	jmp	.L38
.L37:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L38:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_nread0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L39
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L39:
	cmpq	$0, -8(%rbp)
	jg	.L40
	movq	-8(%rbp), %rax
	jmp	.L41
.L40:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L43
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L43
.L42:
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
.L43:
	movq	-8(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	bio_nread, .-bio_nread
	.type	bio_write, @function
bio_write:
.LFB171:
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
	movl	-68(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L45
	cmpq	$0, -64(%rbp)
	je	.L45
	cmpl	$0, -68(%rbp)
	jg	.L46
.L45:
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L48
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L47
.L48:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L49
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L47
.L49:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	cmpq	-8(%rbp), %rdx
	jnb	.L50
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L54:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L51
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, -24(%rbp)
.L51:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rdx, %rax
	jb	.L52
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L53
.L52:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L53:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	subq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -64(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L54
	movq	-8(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	bio_write, .-bio_write
	.type	bio_nwrite0, @function
bio_nwrite0:
.LFB172:
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
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L58
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$-1, %rax
	jmp	.L57
.L58:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L59
	movq	-40(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	$-1, %rax
	jmp	.L57
.L59:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L60
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, -16(%rbp)
.L60:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rdx, %rax
	jnb	.L61
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L61:
	cmpq	$0, -48(%rbp)
	je	.L62
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L62:
	movq	-8(%rbp), %rax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	bio_nwrite0, .-bio_nwrite0
	.type	bio_nwrite, @function
bio_nwrite:
.LFB173:
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
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jns	.L64
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	jmp	.L65
.L64:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L65:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_nwrite0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L66
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L66:
	cmpq	$0, -8(%rbp)
	jg	.L67
	movq	-8(%rbp), %rax
	jmp	.L68
.L67:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	bio_nwrite, .-bio_nwrite
	.type	bio_ctrl, @function
bio_ctrl:
.LFB174:
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
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$147, -76(%rbp)
	je	.L70
	cmpl	$147, -76(%rbp)
	jg	.L71
	cmpl	$146, -76(%rbp)
	je	.L72
	cmpl	$146, -76(%rbp)
	jg	.L71
	cmpl	$145, -76(%rbp)
	je	.L73
	cmpl	$145, -76(%rbp)
	jg	.L71
	cmpl	$144, -76(%rbp)
	je	.L74
	cmpl	$144, -76(%rbp)
	jg	.L71
	cmpl	$143, -76(%rbp)
	je	.L75
	cmpl	$143, -76(%rbp)
	jg	.L71
	cmpl	$142, -76(%rbp)
	je	.L76
	cmpl	$142, -76(%rbp)
	jg	.L71
	cmpl	$141, -76(%rbp)
	je	.L77
	cmpl	$141, -76(%rbp)
	jg	.L71
	cmpl	$140, -76(%rbp)
	je	.L78
	cmpl	$140, -76(%rbp)
	jg	.L71
	cmpl	$139, -76(%rbp)
	je	.L79
	cmpl	$139, -76(%rbp)
	jg	.L71
	cmpl	$138, -76(%rbp)
	je	.L80
	cmpl	$138, -76(%rbp)
	jg	.L71
	cmpl	$137, -76(%rbp)
	je	.L81
	cmpl	$137, -76(%rbp)
	jg	.L71
	cmpl	$136, -76(%rbp)
	je	.L82
	cmpl	$136, -76(%rbp)
	jg	.L71
	cmpl	$13, -76(%rbp)
	je	.L83
	cmpl	$13, -76(%rbp)
	jg	.L71
	cmpl	$12, -76(%rbp)
	je	.L84
	cmpl	$12, -76(%rbp)
	jg	.L71
	cmpl	$11, -76(%rbp)
	je	.L85
	cmpl	$11, -76(%rbp)
	jg	.L71
	cmpl	$10, -76(%rbp)
	je	.L86
	cmpl	$10, -76(%rbp)
	jg	.L71
	cmpl	$9, -76(%rbp)
	je	.L87
	cmpl	$9, -76(%rbp)
	jg	.L71
	cmpl	$8, -76(%rbp)
	je	.L88
	cmpl	$8, -76(%rbp)
	jg	.L71
	cmpl	$1, -76(%rbp)
	je	.L89
	cmpl	$2, -76(%rbp)
	je	.L90
	jmp	.L71
.L82:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L91
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L95
.L91:
	cmpq	$0, -88(%rbp)
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$431, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L95
.L93:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L94
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$437, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L94:
	movq	$1, -8(%rbp)
	jmp	.L95
.L81:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L95
.L80:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_make_pair
	testl	%eax, %eax
	je	.L96
	movq	$1, -8(%rbp)
	jmp	.L95
.L96:
	movq	$0, -8(%rbp)
	jmp	.L95
.L79:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	bio_destroy_pair
	movq	$1, -8(%rbp)
	jmp	.L95
.L78:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L99
.L98:
	movq	$0, -8(%rbp)
	jmp	.L95
.L99:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.L95
.L77:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L95
.L70:
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	$1, -8(%rbp)
	jmp	.L95
.L76:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	movq	$1, -8(%rbp)
	jmp	.L95
.L75:
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_nread0
	movq	%rax, -8(%rbp)
	jmp	.L95
.L74:
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_nread
	movq	%rax, -8(%rbp)
	jmp	.L95
.L73:
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_nwrite0
	movq	%rax, -8(%rbp)
	jmp	.L95
.L72:
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_nwrite
	movq	%rax, -8(%rbp)
	jmp	.L95
.L89:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.L101:
	movq	$0, -8(%rbp)
	jmp	.L95
.L88:
	movq	-72(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L95
.L87:
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	$1, -8(%rbp)
	jmp	.L95
.L86:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L95
.L102:
	movq	$0, -8(%rbp)
	jmp	.L95
.L83:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L95
.L104:
	movq	$0, -8(%rbp)
	jmp	.L95
.L84:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	$1, -8(%rbp)
	jmp	.L95
.L85:
	movq	$1, -8(%rbp)
	jmp	.L95
.L90:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L107
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L107
	movq	$1, -8(%rbp)
	jmp	.L95
.L107:
	movq	$0, -8(%rbp)
	jmp	.L95
.L106:
	movq	$1, -8(%rbp)
	jmp	.L95
.L71:
	movq	$0, -8(%rbp)
.L95:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	bio_ctrl, .-bio_ctrl
	.type	bio_puts, @function
bio_puts:
.LFB175:
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
	call	bio_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	bio_puts, .-bio_puts
	.type	bio_make_pair, @function
bio_make_pair:
.LFB176:
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
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L115
.L114:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L117
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$622, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	movl	$0, %eax
	jmp	.L116
.L118:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.L117:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$630, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L120
	movl	$0, %eax
	jmp	.L116
.L120:
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.L119:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	bio_make_pair, .-bio_make_pair
	.type	bio_destroy_pair, @function
bio_destroy_pair:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.L123:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	bio_destroy_pair, .-bio_destroy_pair
	.globl	BIO_new_bio_pair
	.type	BIO_new_bio_pair, @function
BIO_new_bio_pair:
.LFB178:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	BIO_s_bio@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L133
	call	BIO_s_bio@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L134
	cmpq	$0, -48(%rbp)
	je	.L128
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$136, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L135
.L128:
	cmpq	$0, -64(%rbp)
	je	.L129
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$136, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L136
.L129:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$138, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L137
	movl	$1, -20(%rbp)
	jmp	.L126
.L133:
	nop
	jmp	.L126
.L134:
	nop
	jmp	.L126
.L135:
	nop
	jmp	.L126
.L136:
	nop
	jmp	.L126
.L137:
	nop
.L126:
	cmpl	$0, -20(%rbp)
	jne	.L131
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -16(%rbp)
.L131:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	BIO_new_bio_pair, .-BIO_new_bio_pair
	.globl	BIO_ctrl_get_write_guarantee
	.type	BIO_ctrl_get_write_guarantee, @function
BIO_ctrl_get_write_guarantee:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$140, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	BIO_ctrl_get_write_guarantee, .-BIO_ctrl_get_write_guarantee
	.globl	BIO_ctrl_get_read_request
	.type	BIO_ctrl_get_read_request, @function
BIO_ctrl_get_read_request:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$141, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	BIO_ctrl_get_read_request, .-BIO_ctrl_get_read_request
	.globl	BIO_ctrl_reset_read_request
	.type	BIO_ctrl_reset_read_request, @function
BIO_ctrl_reset_read_request:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$147, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	BIO_ctrl_reset_read_request, .-BIO_ctrl_reset_read_request
	.globl	BIO_nread0
	.type	BIO_nread0, @function
BIO_nread0:
.LFB182:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L145
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$747, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L146
.L145:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$143, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$2147483647, -8(%rbp)
	jle	.L147
	movl	$2147483647, %eax
	jmp	.L146
.L147:
	movq	-8(%rbp), %rax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	BIO_nread0, .-BIO_nread0
	.globl	BIO_nread
	.type	BIO_nread, @function
BIO_nread:
.LFB183:
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
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L150
.L149:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L151
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
.L151:
	movl	-4(%rbp), %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	BIO_nread, .-BIO_nread
	.globl	BIO_nwrite0
	.type	BIO_nwrite0, @function
BIO_nwrite0:
.LFB184:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L154
.L153:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$145, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$2147483647, -8(%rbp)
	jle	.L155
	movl	$2147483647, %eax
	jmp	.L154
.L155:
	movq	-8(%rbp), %rax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	BIO_nwrite0, .-BIO_nwrite0
	.globl	BIO_nwrite
	.type	BIO_nwrite, @function
BIO_nwrite:
.LFB185:
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
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$794, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L158
.L157:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L159
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
.L159:
	movl	-4(%rbp), %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	BIO_nwrite, .-BIO_nwrite
	.section	.rodata
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 10
__func__.7:
	.string	"bio_write"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 12
__func__.6:
	.string	"bio_nwrite0"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 9
__func__.5:
	.string	"bio_ctrl"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"bio_make_pair"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"BIO_nread0"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 10
__func__.2:
	.string	"BIO_nread"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"BIO_nwrite0"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"BIO_nwrite"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

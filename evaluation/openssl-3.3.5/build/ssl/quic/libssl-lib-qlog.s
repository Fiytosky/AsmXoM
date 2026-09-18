	.file	"qlog.c"
	.text
	.type	safe_sub_time, @function
safe_sub_time:
.LFB486:
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
.LFE486:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB494:
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
.LFE494:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB496:
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
.LFE496:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB506:
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
	je	.L11
	call	ossl_time_zero
	jmp	.L13
.L11:
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	ossl_ends_with_dirsep, @function
ossl_ends_with_dirsep:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subq	$1, %rax
	addq	%rax, -8(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ossl_ends_with_dirsep, .-ossl_ends_with_dirsep
	.type	ossl_determine_dirsep, @function
ossl_determine_dirsep:
.LFB514:
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
	call	ossl_ends_with_dirsep
	testl	%eax, %eax
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movl	$47, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ossl_determine_dirsep, .-ossl_determine_dirsep
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB557:
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
.LFE557:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB558:
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
.LFE558:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	bit_get, @function
bit_get:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	andl	$63, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	bit_get, .-bit_get
	.type	bit_set, @function
bit_set:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$63, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L27
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%ecx, %edx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	orq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L29
.L27:
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %esi
	movl	%esi, %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	movl	%esi, %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	andq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, (%rax)
.L29:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	bit_set, .-bit_set
	.type	default_now, @function
default_now:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_now@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	default_now, .-default_now
	.section	.rodata
.LC0:
	.string	"../ssl/quic/qlog.c"
	.text
	.globl	ossl_qlog_new
	.type	ossl_qlog_new, @function
ossl_qlog_new:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$248, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 13(%rcx)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L43
.L35:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L44
.L37:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L45
.L38:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L46
.L39:
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movl	$5, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_json_init@PLT
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-8(%rbp), %rax
	leaq	default_now(%rip), %rdx
	movq	%rdx, 56(%rax)
.L41:
	movq	-8(%rbp), %rax
	jmp	.L34
.L43:
	nop
	jmp	.L36
.L44:
	nop
	jmp	.L36
.L45:
	nop
	jmp	.L36
.L46:
	nop
	jmp	.L36
.L47:
	nop
.L36:
	cmpq	$0, -8(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$97, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$98, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L42:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	ossl_qlog_new, .-ossl_qlog_new
	.section	.rodata
.LC1:
	.string	"QLOGDIR"
.LC2:
	.string	"OSSL_QFILTER"
.LC3:
	.string	"%02x"
.LC4:
	.string	"server"
.LC5:
	.string	"client"
.LC6:
	.string	"_%s.sqlog"
.LC7:
	.string	"*"
	.text
	.globl	ossl_qlog_new_from_env
	.type	ossl_qlog_new_from_env, @function
ossl_qlog_new_from_env:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L49
	cmpq	$0, -40(%rbp)
	jne	.L50
.L49:
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L51
.L52:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_determine_dirsep
	movb	%al, -49(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$15, %rax
	movq	%rax, -64(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L51
.L53:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpb	$0, -49(%rbp)
	je	.L54
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movb	%al, (%rdx)
.L54:
	movq	$0, -16(%rbp)
	jmp	.L55
.L56:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	leaq	.LC3(%rip), %rsi
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	cltq
	addq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
.L55:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -16(%rbp)
	jb	.L56
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L57
	leaq	.LC4(%rip), %rax
	jmp	.L58
.L57:
	leaq	.LC5(%rip), %rax
.L58:
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	subq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	cltq
	addq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L65
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_set_sink_filename@PLT
	testl	%eax, %eax
	je	.L66
	cmpq	$0, -8(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L63
.L62:
	leaq	.LC7(%rip), %rax
	movq	%rax, -8(%rbp)
.L63:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_set_filter@PLT
	testl	%eax, %eax
	je	.L67
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	jmp	.L51
.L65:
	nop
	jmp	.L60
.L66:
	nop
	jmp	.L60
.L67:
	nop
.L60:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_free@PLT
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	ossl_qlog_new_from_env, .-ossl_qlog_new_from_env
	.globl	ossl_qlog_free
	.type	ossl_qlog_free, @function
ossl_qlog_free:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_flush_cleanup@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$168, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$169, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$171, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L68
.L71:
	nop
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	ossl_qlog_free, .-ossl_qlog_free
	.globl	ossl_qlog_set_sink_bio
	.type	ossl_qlog_set_sink_bio, @function
ossl_qlog_set_sink_bio:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_flush@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_set0_sink@PLT
	movl	$1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	ossl_qlog_set_sink_bio, .-ossl_qlog_set_sink_bio
	.globl	ossl_qlog_set_sink_file
	.type	ossl_qlog_set_sink_file, @function
ossl_qlog_set_sink_file:
.LFB580:
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
	cmpq	$0, -24(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L77
.L78:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_set_sink_bio@PLT
	testl	%eax, %eax
	jne	.L79
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
	jmp	.L77
.L79:
	movl	$1, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	ossl_qlog_set_sink_file, .-ossl_qlog_set_sink_file
	.section	.rodata
.LC8:
	.string	"wb"
	.text
	.globl	ossl_qlog_set_sink_filename
	.type	ossl_qlog_set_sink_filename, @function
ossl_qlog_set_sink_filename:
.LFB581:
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
	jne	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	leaq	.LC8(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L82
.L83:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_set_sink_bio@PLT
	testl	%eax, %eax
	jne	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
	jmp	.L82
.L84:
	movl	$1, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	ossl_qlog_set_sink_filename, .-ossl_qlog_set_sink_filename
	.globl	ossl_qlog_flush
	.type	ossl_qlog_flush, @function
ossl_qlog_flush:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	movl	$1, %eax
	jmp	.L87
.L86:
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_flush@PLT
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	ossl_qlog_flush, .-ossl_qlog_flush
	.globl	ossl_qlog_set_event_type_enabled
	.type	ossl_qlog_set_event_type_enabled, @function
ossl_qlog_set_event_type_enabled:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L89
	cmpl	$7, -12(%rbp)
	jbe	.L90
.L89:
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	bit_set
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	ossl_qlog_set_event_type_enabled, .-ossl_qlog_set_event_type_enabled
	.globl	ossl_qlog_enabled
	.type	ossl_qlog_enabled, @function
ossl_qlog_enabled:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	bit_get
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	ossl_qlog_enabled, .-ossl_qlog_enabled
	.type	write_str_once, @function
write_str_once:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$152, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_str@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L95
.L98:
	nop
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	write_str_once, .-write_str_once
	.section	.rodata
.LC9:
	.string	"qlog_version"
.LC10:
	.string	"0.3"
.LC11:
	.string	"qlog_format"
.LC12:
	.string	"JSON-SEQ"
.LC13:
	.string	"title"
.LC14:
	.string	"description"
.LC15:
	.string	"trace"
.LC16:
	.string	"common_fields"
.LC17:
	.string	"time_format"
.LC18:
	.string	"delta"
.LC19:
	.string	"protocol_type"
.LC20:
	.string	"QUIC"
.LC21:
	.string	"group_id"
.LC22:
	.string	"system_info"
.LC23:
	.string	"process_id"
.LC24:
	.string	"vantage_point"
.LC25:
	.string	"OpenSSL/%s (%s)"
.LC26:
	.string	"type"
.LC27:
	.string	"name"
	.text
	.type	qlog_event_seq_header, @function
qlog_event_seq_header:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L108
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_str@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_str@PLT
	movq	-168(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_str_once
	movq	-168(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	.LC14(%rip), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_str_once
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_str@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_array_begin@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_str@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_array_end@PLT
	movq	-168(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	.LC21(%rip), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_str_once
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	movq	-168(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	movq	72(%rax), %rax
	movq	-168(%rbp), %rdx
	addq	$152, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_u64@PLT
	jmp	.L103
.L102:
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	call	getpid@PLT
	cltq
	movq	-168(%rbp), %rdx
	addq	$152, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_u64@PLT
.L103:
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L105
.L104:
	movl	$3, %edi
	call	OpenSSL_version@PLT
	leaq	10(%rax), %rbx
	movl	$7, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rcx
	leaq	.LC25(%rip), %rdx
	leaq	-160(%rbp), %rax
	movq	%rbx, %r8
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L105:
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L106
	leaq	.LC4(%rip), %rax
	jmp	.L107
.L106:
	leaq	.LC5(%rip), %rax
.L107:
	movq	-168(%rbp), %rdx
	addq	$152, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_str@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-168(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_str@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	movq	-168(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	movq	-168(%rbp), %rax
	movl	$1, 240(%rax)
	jmp	.L99
.L108:
	nop
.L99:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	qlog_event_seq_header, .-qlog_event_seq_header
	.section	.rodata
.LC28:
	.string	"data"
	.text
	.type	qlog_event_prologue, @function
qlog_event_prologue:
.LFB587:
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
	call	qlog_event_seq_header
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	movq	-8(%rbp), %rax
	addq	$152, %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$152, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_str@PLT
	movq	-8(%rbp), %rax
	addq	$152, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	qlog_event_prologue, .-qlog_event_prologue
	.section	.rodata
.LC29:
	.string	"time"
	.text
	.type	qlog_event_epilogue, @function
qlog_event_epilogue:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	movq	-24(%rbp), %rax
	addq	$152, %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_key@PLT
	movq	-24(%rbp), %rax
	movl	244(%rax), %eax
	testl	%eax, %eax
	jne	.L111
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	shrq	$18, %rdx
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_u64@PLT
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	%rdx, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 244(%rax)
	jmp	.L112
.L111:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	shrq	$18, %rdx
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_u64@PLT
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	%rdx, 144(%rax)
.L112:
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	qlog_event_epilogue, .-qlog_event_epilogue
	.globl	ossl_qlog_event_try_begin
	.type	ossl_qlog_event_try_begin, @function
ossl_qlog_event_try_begin:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L116
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qlog_enabled@PLT
	testl	%eax, %eax
	jne	.L117
.L116:
	movl	$0, %eax
	jmp	.L115
.L117:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 104(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, 136(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qlog_event_prologue
	movl	$1, %eax
.L115:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_qlog_event_try_begin, .-ossl_qlog_event_try_begin
	.globl	ossl_qlog_event_end
	.type	ossl_qlog_event_end, @function
ossl_qlog_event_end:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L119
	movl	$1, %eax
	jmp	.L120
.L119:
	movl	$0, %eax
.L120:
	cltq
	testq	%rax, %rax
	je	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qlog_event_epilogue
	movq	-8(%rbp), %rax
	movl	$0, 104(%rax)
	jmp	.L118
.L123:
	nop
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ossl_qlog_event_end, .-ossl_qlog_event_end
	.globl	ossl_qlog_group_begin
	.type	ossl_qlog_group_begin, @function
ossl_qlog_group_begin:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L125
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L125:
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_begin@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ossl_qlog_group_begin, .-ossl_qlog_group_begin
	.globl	ossl_qlog_group_end
	.type	ossl_qlog_group_end, @function
ossl_qlog_group_end:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_object_end@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ossl_qlog_group_end, .-ossl_qlog_group_end
	.globl	ossl_qlog_array_begin
	.type	ossl_qlog_array_begin, @function
ossl_qlog_array_begin:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L128
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L128:
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_array_begin@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	ossl_qlog_array_begin, .-ossl_qlog_array_begin
	.globl	ossl_qlog_array_end
	.type	ossl_qlog_array_end, @function
ossl_qlog_array_end:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_json_array_end@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ossl_qlog_array_end, .-ossl_qlog_array_end
	.globl	ossl_qlog_override_time
	.type	ossl_qlog_override_time, @function
ossl_qlog_override_time:
.LFB595:
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
	movq	%rdx, 136(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ossl_qlog_override_time, .-ossl_qlog_override_time
	.globl	ossl_qlog_str
	.type	ossl_qlog_str, @function
ossl_qlog_str:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L132
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L132:
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_str@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ossl_qlog_str, .-ossl_qlog_str
	.globl	ossl_qlog_str_len
	.type	ossl_qlog_str_len, @function
ossl_qlog_str_len:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L134
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L134:
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_json_str_len@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	ossl_qlog_str_len, .-ossl_qlog_str_len
	.globl	ossl_qlog_u64
	.type	ossl_qlog_u64, @function
ossl_qlog_u64:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L136
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L136:
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_u64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	ossl_qlog_u64, .-ossl_qlog_u64
	.globl	ossl_qlog_i64
	.type	ossl_qlog_i64, @function
ossl_qlog_i64:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L138
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L138:
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_i64@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ossl_qlog_i64, .-ossl_qlog_i64
	.globl	ossl_qlog_bool
	.type	ossl_qlog_bool, @function
ossl_qlog_bool:
.LFB600:
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
	cmpq	$0, -16(%rbp)
	je	.L140
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L140:
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_json_bool@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ossl_qlog_bool, .-ossl_qlog_bool
	.globl	ossl_qlog_bin
	.type	ossl_qlog_bin, @function
ossl_qlog_bin:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L142
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_json_key@PLT
.L142:
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_json_str_hex@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ossl_qlog_bin, .-ossl_qlog_bin
	.type	is_term_sep_ws, @function
is_term_sep_ws:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$32, -4(%rbp)
	je	.L144
	cmpb	$13, -4(%rbp)
	je	.L144
	cmpb	$10, -4(%rbp)
	je	.L144
	cmpb	$9, -4(%rbp)
	jne	.L145
.L144:
	movl	$1, %eax
	jmp	.L147
.L145:
	movl	$0, %eax
.L147:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	is_term_sep_ws, .-is_term_sep_ws
	.type	is_name_char, @function
is_name_char:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L149
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L149
	cmpb	$95, -4(%rbp)
	je	.L149
	cmpb	$45, -4(%rbp)
	jne	.L150
.L149:
	movl	$1, %eax
	jmp	.L152
.L150:
	movl	$0, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	is_name_char, .-is_name_char
	.type	lex_init, @function
lex_init:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	lex_init, .-lex_init
	.type	lex_do, @function
lex_do:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L157
.L159:
	addq	$1, -8(%rbp)
.L157:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_term_sep_ws
	testl	%eax, %eax
	je	.L158
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L159
.L158:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L160
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L162
.L164:
	addq	$1, -16(%rbp)
.L162:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_term_sep_ws
	testl	%eax, %eax
	jne	.L163
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L164
.L163:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	lex_do, .-lex_do
	.type	lex_eot, @function
lex_eot:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	lex_eot, .-lex_eot
	.type	lex_peek_char, @function
lex_peek_char:
.LFB607:
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
	call	lex_eot
	testl	%eax, %eax
	jne	.L168
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	jmp	.L170
.L168:
	movl	$-1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	lex_peek_char, .-lex_peek_char
	.type	lex_skip_char, @function
lex_skip_char:
.LFB608:
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
	call	lex_eot
	testl	%eax, %eax
	je	.L172
	movl	$0, %eax
	jmp	.L173
.L172:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	lex_skip_char, .-lex_skip_char
	.type	lex_match, @function
lex_match:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L175
	movl	$0, %eax
	jmp	.L176
.L175:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L177
	movl	$0, %eax
	jmp	.L176
.L177:
	movl	$1, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	lex_match, .-lex_match
	.type	lex_get_rest, @function
lex_get_rest:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	lex_get_rest, .-lex_get_rest
	.type	lex_extract_to, @function
lex_extract_to:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movb	%al, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L182:
	addq	$1, -8(%rbp)
.L180:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L181
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -44(%rbp)
	jne	.L182
.L181:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L184:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	lex_extract_to, .-lex_extract_to
	.type	filter_match_event, @function
filter_match_event:
.LFB612:
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
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L186
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L187
.L186:
	cmpq	$0, -40(%rbp)
	je	.L188
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L187
.L188:
	cmpq	$0, -24(%rbp)
	je	.L189
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L187
.L189:
	cmpq	$0, -40(%rbp)
	je	.L190
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L190
.L187:
	movl	$0, %eax
	jmp	.L191
.L190:
	movl	$1, %eax
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	filter_match_event, .-filter_match_event
	.section	.rodata
.LC30:
	.string	"connection_started"
.LC31:
	.string	"connectivity"
.LC32:
	.string	"connection_state_updated"
.LC33:
	.string	"connection_closed"
.LC34:
	.string	"parameters_set"
.LC35:
	.string	"transport"
.LC36:
	.string	"packet_sent"
.LC37:
	.string	"packet_received"
.LC38:
	.string	"packet_lost"
.LC39:
	.string	"recovery"
	.text
	.type	filter_apply, @function
filter_apply:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	leaq	.LC30(%rip), %r8
	leaq	.LC31(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L193
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	bit_set
.L193:
	leaq	.LC32(%rip), %r8
	leaq	.LC31(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L194
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	bit_set
.L194:
	leaq	.LC33(%rip), %r8
	leaq	.LC31(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L195
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bit_set
.L195:
	leaq	.LC34(%rip), %r8
	leaq	.LC35(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L196
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	bit_set
.L196:
	leaq	.LC36(%rip), %r8
	leaq	.LC35(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L197
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bit_set
.L197:
	leaq	.LC37(%rip), %r8
	leaq	.LC35(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L198
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	bit_set
.L198:
	leaq	.LC38(%rip), %r8
	leaq	.LC39(%rip), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_match_event
	testl	%eax, %eax
	je	.L200
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	bit_set
.L200:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	filter_apply, .-filter_apply
	.type	lex_fail, @function
lex_fail:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	lex_fail, .-lex_fail
	.type	validate_name, @function
validate_name:
.LFB615:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$1, -24(%rbp)
	jne	.L204
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L204
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L205
.L204:
	cmpq	$0, -24(%rbp)
	jne	.L206
	movl	$0, %eax
	jmp	.L205
.L206:
	movq	$0, -8(%rbp)
	jmp	.L207
.L209:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_name_char
	testl	%eax, %eax
	jne	.L208
	movl	$0, %eax
	jmp	.L205
.L208:
	addq	$1, -8(%rbp)
.L207:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L209
	movl	$1, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	validate_name, .-validate_name
	.section	.rodata
	.align 8
.LC40:
	.string	"expected alphanumeric name or '*' after +/-"
	.align 8
.LC41:
	.string	"expected +/- or alphanumeric name or '*'"
	.align 8
.LC42:
	.string	"expected ':' after category name"
	.align 8
.LC43:
	.string	"expected alphanumeric category name or '*'"
	.align 8
.LC44:
	.string	"expected alphanumeric event name or '*'"
	.text
	.globl	ossl_qlog_set_filter
	.type	ossl_qlog_set_filter, @function
ossl_qlog_set_filter:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	-88(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lex_init
	testl	%eax, %eax
	jne	.L213
	movl	$0, %eax
	jmp	.L224
.L223:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	lex_peek_char
	movb	%al, -5(%rbp)
	cmpb	$43, -5(%rbp)
	je	.L214
	cmpb	$45, -5(%rbp)
	jne	.L215
.L214:
	cmpb	$43, -5(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	lex_skip_char
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	lex_peek_char
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	movl	%eax, %edi
	call	is_name_char
	testl	%eax, %eax
	jne	.L225
	cmpb	$42, -5(%rbp)
	je	.L225
	leaq	.LC40(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lex_fail
	jmp	.L224
.L215:
	movsbl	-5(%rbp), %eax
	movl	%eax, %edi
	call	is_name_char
	testl	%eax, %eax
	jne	.L218
	cmpb	$42, -5(%rbp)
	je	.L218
	leaq	.LC41(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lex_fail
	jmp	.L224
.L218:
	movl	$1, -4(%rbp)
	jmp	.L217
.L225:
	nop
.L217:
	leaq	.LC7(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lex_match
	testl	%eax, %eax
	je	.L219
	movl	-4(%rbp), %esi
	leaq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	filter_apply
	jmp	.L213
.L219:
	leaq	-56(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	lex_extract_to
	testl	%eax, %eax
	jne	.L220
	leaq	.LC42(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lex_fail
	jmp	.L224
.L220:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lex_get_rest
	leaq	-56(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validate_name
	testl	%eax, %eax
	jne	.L221
	leaq	.LC43(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lex_fail
	jmp	.L224
.L221:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validate_name
	testl	%eax, %eax
	jne	.L222
	leaq	.LC44(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lex_fail
	jmp	.L224
.L222:
	movq	-64(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %esi
	leaq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filter_apply
.L213:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	lex_do
	testl	%eax, %eax
	jne	.L223
	movq	-88(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ossl_qlog_set_filter, .-ossl_qlog_set_filter
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"tls_pad.c"
	.text
	.type	constant_time_msb, @function
constant_time_msb:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_msb_s, @function
constant_time_msb_s:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	constant_time_msb_s, .-constant_time_msb_s
	.type	constant_time_lt_s, @function
constant_time_lt_s:
.LFB325:
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
	xorq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	xorq	-16(%rbp), %rax
	orq	%rdx, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_msb_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	constant_time_lt_s, .-constant_time_lt_s
	.type	constant_time_ge_s, @function
constant_time_ge_s:
.LFB333:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_lt_s
	notq	%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	constant_time_ge_s, .-constant_time_ge_s
	.type	constant_time_ge_8_s, @function
constant_time_ge_8_s:
.LFB335:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	constant_time_ge_8_s, .-constant_time_ge_8_s
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB336:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_is_zero_s, @function
constant_time_is_zero_s:
.LFB337:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andq	%rdx, %rax
	movq	%rax, %rdi
	call	constant_time_msb_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	constant_time_is_zero_s, .-constant_time_is_zero_s
	.type	constant_time_eq, @function
constant_time_eq:
.LFB341:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE341:
	.size	constant_time_eq, .-constant_time_eq
	.type	constant_time_eq_s, @function
constant_time_eq_s:
.LFB342:
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
	xorq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	constant_time_eq_s, .-constant_time_eq_s
	.type	constant_time_eq_8, @function
constant_time_eq_8:
.LFB343:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE343:
	.size	constant_time_eq_8, .-constant_time_eq_8
	.type	value_barrier, @function
value_barrier:
.LFB347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	value_barrier
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE352:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_8, @function
constant_time_select_8:
.LFB354:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -4(%rbp)
	movl	%ecx, %edx
	movb	%dl, -8(%rbp)
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %edx
	movzbl	-8(%rbp), %ecx
	movzbl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE354:
	.size	constant_time_select_8, .-constant_time_select_8
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB429:
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
.LFE429:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB430:
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
.LFE430:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ssl3_cbc_remove_padding_and_mac
	.type	ssl3_cbc_remove_padding_and_mac, @function
ssl3_cbc_remove_padding_and_mac:
.LFB445:
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
	movq	16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_s
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_s
	andq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	andq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	-24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl3_cbc_copy_mac
	addq	$32, %rsp
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ssl3_cbc_remove_padding_and_mac, .-ssl3_cbc_remove_padding_and_mac
	.globl	tls1_cbc_remove_padding_and_mac
	.type	tls1_cbc_remove_padding_and_mac, @function
tls1_cbc_remove_padding_and_mac:
.LFB446:
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
	movq	$-1, -8(%rbp)
	cmpq	$1, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	cmpq	$1, -96(%rbp)
	je	.L37
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -40(%rbp)
	cmpl	$0, 24(%rbp)
	je	.L38
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	16(%rbp), %rax
	addq	%rcx, %rax
	subq	%rax, %rdx
	subq	$1, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L36
.L38:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_s
	movq	%rax, -8(%rbp)
	movq	$256, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L39
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L39:
	movq	$0, -24(%rbp)
	jmp	.L40
.L41:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_8_s
	movb	%al, -41(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -42(%rbp)
	movzbl	-41(%rbp), %edx
	movzbl	-42(%rbp), %eax
	xorq	-40(%rbp), %rax
	andq	%rdx, %rax
	notq	%rax
	andq	%rax, -8(%rbp)
	addq	$1, -24(%rbp)
.L40:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L41
	movq	-8(%rbp), %rax
	movzbl	%al, %eax
	movq	%rax, %rsi
	movl	$255, %edi
	call	constant_time_eq_s
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	andq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L37:
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	-8(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl3_cbc_copy_mac
	addq	$32, %rsp
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	tls1_cbc_remove_padding_and_mac, .-tls1_cbc_remove_padding_and_mac
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/record/methods/tls_pad.c"
	.text
	.type	ssl3_cbc_copy_mac, @function
ssl3_cbc_copy_mac:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%r8, -360(%rbp)
	movq	%r9, -368(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	-336(%rbp), %rax
	cmpq	16(%rbp), %rax
	jb	.L43
	cmpq	$64, 16(%rbp)
	ja	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	cltq
	testq	%rax, %rax
	jne	.L45
	movl	$0, %eax
	jmp	.L62
.L45:
	cmpq	$0, 16(%rbp)
	jne	.L47
	cmpq	$0, 24(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L62
.L48:
	movl	$1, %eax
	jmp	.L62
.L47:
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	subq	16(%rbp), %rax
	movq	%rax, %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$1, -368(%rbp)
	jne	.L49
	cmpq	$0, -352(%rbp)
	je	.L50
	movq	-328(%rbp), %rax
	movq	(%rax), %rdx
	movq	-344(%rbp), %rax
	addq	%rax, %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, (%rax)
.L50:
	cmpq	$0, -360(%rbp)
	je	.L51
	movq	-360(%rbp), %rax
	movl	$0, (%rax)
.L51:
	movl	$1, %eax
	jmp	.L62
.L49:
	movq	16(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	movq	32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L52
	movl	$0, %eax
	jmp	.L62
.L52:
	cmpq	$0, -352(%rbp)
	je	.L53
	cmpq	$0, -360(%rbp)
	je	.L53
	movl	$1, %eax
	jmp	.L54
.L53:
	movl	$0, %eax
.L54:
	cltq
	testq	%rax, %rax
	jne	.L55
	movl	$0, %eax
	jmp	.L62
.L55:
	leaq	.LC0(%rip), %rcx
	movq	16(%rbp), %rax
	movl	$245, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-352(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movl	$0, %eax
	jmp	.L62
.L56:
	movq	-360(%rbp), %rax
	movl	$1, (%rax)
	leaq	-256(%rbp), %rax
	negq	%rax
	andl	$63, %eax
	movq	%rax, %rdx
	leaq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	16(%rbp), %rax
	addq	$256, %rax
	cmpq	-336(%rbp), %rax
	jnb	.L57
	movq	-336(%rbp), %rax
	subq	16(%rbp), %rax
	subq	$256, %rax
	movq	%rax, -32(%rbp)
.L57:
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L58
.L59:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_eq_s
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_lt_s
	movq	%rax, -112(%rbp)
	movq	-344(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -113(%rbp)
	movq	-104(%rbp), %rax
	orq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	andq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	andq	-104(%rbp), %rax
	orq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-88(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	(%rdx), %esi
	movq	-24(%rbp), %rdx
	movl	%edx, %ecx
	andb	-113(%rbp), %cl
	movq	-88(%rbp), %rdx
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_lt_s
	andq	%rax, -48(%rbp)
	addq	$1, -40(%rbp)
.L58:
	movq	-40(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jb	.L59
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L60
.L61:
	movq	-56(%rbp), %rax
	andq	$-33, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -89(%rbp)
	movq	-56(%rbp), %rax
	orq	$32, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -90(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	andl	$-33, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_8
	movb	%al, -91(%rbp)
	movzbl	-90(%rbp), %eax
	movzbl	%al, %edx
	movzbl	-89(%rbp), %eax
	movzbl	%al, %ecx
	movzbl	-91(%rbp), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, -92(%rbp)
	addq	$1, -56(%rbp)
	leaq	-320(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movzbl	-92(%rbp), %eax
	movzbl	%al, %esi
	movq	24(%rbp), %rax
	movzbl	%al, %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	%rdi, -48(%rbp)
	movq	-80(%rbp), %rdi
	leaq	(%rax,%rdi), %rbx
	movl	%ecx, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	movq	16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_lt_s
	andq	%rax, -56(%rbp)
	addq	$1, -40(%rbp)
.L60:
	movq	-40(%rbp), %rax
	cmpq	16(%rbp), %rax
	jb	.L61
	movl	$1, %eax
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ssl3_cbc_copy_mac, .-ssl3_cbc_copy_mac
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

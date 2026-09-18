	.file	"dsa_sign.c"
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
	.globl	DSA_do_sign
	.type	DSA_do_sign, @function
DSA_do_sign:
.LFB446:
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
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	8(%rax), %r8
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	DSA_do_sign, .-DSA_do_sign
	.globl	DSA_sign_setup
	.type	DSA_sign_setup, @function
DSA_sign_setup:
.LFB447:
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
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	DSA_sign_setup, .-DSA_sign_setup
	.section	.rodata
.LC0:
	.string	"../crypto/dsa/dsa_sign.c"
	.text
	.globl	DSA_SIG_new
	.type	DSA_SIG_new, @function
DSA_SIG_new:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	DSA_SIG_new, .-DSA_SIG_new
	.globl	DSA_SIG_free
	.type	DSA_SIG_free, @function
DSA_SIG_free:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L11
.L14:
	nop
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	DSA_SIG_free, .-DSA_SIG_free
	.globl	d2i_DSA_SIG
	.type	d2i_DSA_SIG, @function
d2i_DSA_SIG:
.LFB450:
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
	cmpq	$0, -40(%rbp)
	jns	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L19
.L18:
	call	DSA_SIG_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L20:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	jne	.L23
.L22:
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_SIG_free@PLT
.L25:
	movl	$0, %eax
	jmp	.L17
.L23:
	cmpq	$0, -24(%rbp)
	je	.L26
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L26:
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	d2i_DSA_SIG, .-d2i_DSA_SIG
	.globl	i2d_DSA_SIG
	.type	i2d_DSA_SIG, @function
i2d_DSA_SIG:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L28
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_init_null@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$-1, %eax
	jmp	.L37
.L28:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L32
	movq	-8(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	jne	.L29
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$-1, %eax
	jmp	.L37
.L31:
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$-1, %eax
	jmp	.L37
.L29:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_encode_der_dsa_sig@PLT
	testl	%eax, %eax
	je	.L33
	leaq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L33
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L34
.L33:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$-1, %eax
	jmp	.L37
.L34:
	cmpq	$0, -96(%rbp)
	je	.L35
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	jmp	.L35
.L36:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L35:
	movq	-16(%rbp), %rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	i2d_DSA_SIG, .-i2d_DSA_SIG
	.globl	DSA_size
	.type	DSA_size, @function
DSA_size:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_DSA_SIG@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L39
	movl	$0, -4(%rbp)
.L39:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	DSA_size, .-DSA_size
	.globl	DSA_SIG_get0
	.type	DSA_SIG_get0, @function
DSA_SIG_get0:
.LFB453:
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
	je	.L42
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L42:
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L44:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	DSA_SIG_get0, .-DSA_SIG_get0
	.globl	DSA_SIG_set0
	.type	DSA_SIG_set0, @function
DSA_SIG_set0:
.LFB454:
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
	je	.L46
	cmpq	$0, -24(%rbp)
	jne	.L47
.L46:
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	DSA_SIG_set0, .-DSA_SIG_set0
	.globl	ossl_dsa_sign_int
	.type	ossl_dsa_sign_int, @function
ossl_dsa_sign_int:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L50
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_size@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L51
.L50:
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-72(%rbp), %rax
	movq	160(%rax), %rbx
	call	DSA_get_default_method@PLT
	cmpq	%rax, %rbx
	je	.L53
.L52:
	movq	-72(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	DSA_do_sign@PLT
	movq	%rax, -24(%rbp)
	jmp	.L54
.L53:
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdi
	movl	16(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_dsa_do_sign_int@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
.L54:
	cmpq	$0, -24(%rbp)
	jne	.L55
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L51
.L55:
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSA_SIG@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_SIG_free@PLT
	movl	$1, %eax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	ossl_dsa_sign_int, .-ossl_dsa_sign_int
	.globl	DSA_sign
	.type	DSA_sign, @function
DSA_sign:
.LFB456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ossl_dsa_sign_int@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	DSA_sign, .-DSA_sign
	.globl	DSA_verify
	.type	DSA_verify, @function
DSA_verify:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -4(%rbp)
	movl	$-1, -8(%rbp)
	call	DSA_SIG_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L59
	movl	-8(%rbp), %eax
	jmp	.L65
.L59:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_DSA_SIG@PLT
	testq	%rax, %rax
	je	.L66
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSA_SIG@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.L67
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L67
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_do_verify@PLT
	movl	%eax, -8(%rbp)
	jmp	.L62
.L66:
	nop
	jmp	.L62
.L67:
	nop
.L62:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$214, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_SIG_free@PLT
	movl	-8(%rbp), %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	DSA_verify, .-DSA_verify
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

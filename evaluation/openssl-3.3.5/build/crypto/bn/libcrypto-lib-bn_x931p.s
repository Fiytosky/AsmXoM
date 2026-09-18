	.file	"bn_x931p.c"
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
	.type	bn_x931_derive_pi, @function
bn_x931_derive_pi:
.LFB161:
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
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L7
.L13:
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L9
	movl	$0, %eax
	jmp	.L7
.L9:
	cmpl	$0, -8(%rbp)
	jne	.L15
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L7
.L15:
	nop
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_x931_derive_pi, .-bn_x931_derive_pi
	.globl	BN_X931_derive_prime_ex
	.type	BN_X931_derive_prime_ex, @function
BN_X931_derive_prime_ex:
.LFB162:
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
	movl	$0, -4(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, -64(%rbp)
	jne	.L19
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
.L19:
	cmpq	$0, -72(%rbp)
	jne	.L20
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
.L20:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L42
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	bn_x931_derive_pi
	testl	%eax, %eax
	je	.L43
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	bn_x931_derive_pi
	testl	%eax, %eax
	je	.L44
	movq	24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L45
	movq	24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L46
	movq	24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L47
	movq	24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L48
	movq	24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L49
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L50
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L51
.L31:
	movq	24(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_sub@PLT
	testl	%eax, %eax
	je	.L52
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L53
.L33:
	movl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	32(%rbp), %rcx
	movl	%eax, %edx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	BN_GENCB_call@PLT
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L54
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L55
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L56
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L37
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L57
	cmpl	$0, -40(%rbp)
	jne	.L58
.L37:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L59
	jmp	.L33
.L58:
	nop
	movq	32(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	movl	$1, -4(%rbp)
	jmp	.L22
.L42:
	nop
	jmp	.L22
.L43:
	nop
	jmp	.L22
.L44:
	nop
	jmp	.L22
.L45:
	nop
	jmp	.L22
.L46:
	nop
	jmp	.L22
.L47:
	nop
	jmp	.L22
.L48:
	nop
	jmp	.L22
.L49:
	nop
	jmp	.L22
.L50:
	nop
	jmp	.L22
.L51:
	nop
	jmp	.L22
.L52:
	nop
	jmp	.L22
.L53:
	nop
	jmp	.L22
.L54:
	nop
	jmp	.L22
.L55:
	nop
	jmp	.L22
.L56:
	nop
	jmp	.L22
.L57:
	nop
	jmp	.L22
.L59:
	nop
.L22:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_X931_derive_prime_ex, .-BN_X931_derive_prime_ex
	.globl	BN_X931_generate_Xpq
	.type	BN_X931_generate_Xpq, @function
BN_X931_generate_Xpq:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	cmpl	$1023, -52(%rbp)
	jle	.L61
	movl	-52(%rbp), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L62
.L61:
	movl	$0, %eax
	jmp	.L63
.L62:
	sarl	-52(%rbp)
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L74
	movl	$0, -20(%rbp)
	jmp	.L67
.L72:
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L75
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L76
	movl	-52(%rbp), %eax
	leal	-99(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, %ebx
	jle	.L77
	addl	$1, -20(%rbp)
.L67:
	cmpl	$999, -20(%rbp)
	jle	.L72
	jmp	.L71
.L77:
	nop
.L71:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	cmpl	$999, -20(%rbp)
	jg	.L73
	movl	$1, %eax
	jmp	.L63
.L73:
	movl	$0, %eax
	jmp	.L63
.L74:
	nop
	jmp	.L66
.L75:
	nop
	jmp	.L66
.L76:
	nop
.L66:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	$0, %eax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_X931_generate_Xpq, .-BN_X931_generate_Xpq
	.globl	BN_X931_generate_prime_ex
	.type	BN_X931_generate_prime_ex, @function
BN_X931_generate_prime_ex:
.LFB164:
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
	movl	$0, -4(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, -48(%rbp)
	jne	.L79
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
.L79:
	cmpq	$0, -56(%rbp)
	jne	.L80
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
.L80:
	cmpq	$0, -48(%rbp)
	je	.L88
	cmpq	$0, -56(%rbp)
	je	.L88
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L89
	movq	24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L90
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_X931_derive_prime_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L91
	movl	$1, -4(%rbp)
	jmp	.L83
.L88:
	nop
	jmp	.L83
.L89:
	nop
	jmp	.L83
.L90:
	nop
	jmp	.L83
.L91:
	nop
.L83:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_X931_generate_prime_ex, .-BN_X931_generate_prime_ex
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

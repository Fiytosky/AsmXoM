	.file	"bn_blind.c"
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
	.string	"../crypto/bn/bn_blind.c"
	.text
	.globl	BN_BLINDING_new
	.type	BN_BLINDING_new, @function
BN_BLINDING_new:
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
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_set_current_thread@PLT
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
.L9:
	cmpq	$0, -32(%rbp)
	je	.L11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L15
.L11:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L13:
	movq	-8(%rbp), %rax
	movl	$-1, 40(%rax)
	movq	-8(%rbp), %rax
	jmp	.L7
.L14:
	nop
	jmp	.L10
.L15:
	nop
	jmp	.L10
.L16:
	nop
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_free@PLT
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_BLINDING_new, .-BN_BLINDING_new
	.globl	BN_BLINDING_free
	.type	BN_BLINDING_free, @function
BN_BLINDING_free:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L17
.L20:
	nop
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_BLINDING_free, .-BN_BLINDING_free
	.globl	BN_BLINDING_update
	.type	BN_BLINDING_update, @function
BN_BLINDING_update:
.LFB163:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L23
.L22:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L23:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$-1, %eax
	jne	.L25
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.L25:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$32, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L26
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_BLINDING_create_param@PLT
	testq	%rax, %rax
	jne	.L28
	jmp	.L24
.L26:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L28
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	jne	.L28
	jmp	.L34
.L29:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L35
.L28:
	movl	$1, -4(%rbp)
	jmp	.L24
.L34:
	nop
	jmp	.L24
.L35:
	nop
.L24:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$32, %eax
	jne	.L32
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.L32:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_BLINDING_update, .-BN_BLINDING_update
	.globl	BN_BLINDING_convert
	.type	BN_BLINDING_convert, @function
BN_BLINDING_convert:
.LFB164:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_BLINDING_convert_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_BLINDING_convert, .-BN_BLINDING_convert
	.globl	BN_BLINDING_convert_ex
	.type	BN_BLINDING_convert_ex, @function
BN_BLINDING_convert_ex:
.LFB165:
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
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L40
.L39:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$-1, %eax
	jne	.L42
	movq	-40(%rbp), %rax
	movl	$0, 40(%rax)
	jmp	.L43
.L42:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_BLINDING_update@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L41
.L43:
	cmpq	$0, -32(%rbp)
	je	.L44
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L44
	movl	$0, %eax
	jmp	.L41
.L44:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-40(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	movl	%eax, -4(%rbp)
	jmp	.L46
.L45:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	movl	%eax, -4(%rbp)
.L46:
	movl	-4(%rbp), %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_BLINDING_convert_ex, .-BN_BLINDING_convert_ex
	.globl	BN_BLINDING_invert
	.type	BN_BLINDING_invert, @function
BN_BLINDING_invert:
.LFB166:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_BLINDING_invert_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BN_BLINDING_invert, .-BN_BLINDING_invert
	.globl	BN_BLINDING_invert_ex
	.type	BN_BLINDING_invert_ex, @function
BN_BLINDING_invert_ex:
.LFB167:
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
	movq	%rcx, -80(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L50
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jl	.L53
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L54
.L55:
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	andq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -16(%rbp)
.L54:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L55
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	notl	%eax
	andl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	andl	%ecx, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
.L53:
	movq	-72(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top_consttime@PLT
	jmp	.L56
.L52:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	movl	%eax, -4(%rbp)
.L56:
	movl	-4(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_BLINDING_invert_ex, .-BN_BLINDING_invert_ex
	.globl	BN_BLINDING_is_current_thread
	.type	BN_BLINDING_is_current_thread, @function
BN_BLINDING_is_current_thread:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rbx
	call	CRYPTO_THREAD_get_current_id@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_compare_id@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BN_BLINDING_is_current_thread, .-BN_BLINDING_is_current_thread
	.globl	BN_BLINDING_set_current_thread
	.type	BN_BLINDING_set_current_thread, @function
BN_BLINDING_set_current_thread:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	CRYPTO_THREAD_get_current_id@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BN_BLINDING_set_current_thread, .-BN_BLINDING_set_current_thread
	.globl	BN_BLINDING_lock
	.type	BN_BLINDING_lock, @function
BN_BLINDING_lock:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BN_BLINDING_lock, .-BN_BLINDING_lock
	.globl	BN_BLINDING_unlock
	.type	BN_BLINDING_unlock, @function
BN_BLINDING_unlock:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_BLINDING_unlock, .-BN_BLINDING_unlock
	.globl	BN_BLINDING_get_flags
	.type	BN_BLINDING_get_flags, @function
BN_BLINDING_get_flags:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BN_BLINDING_get_flags, .-BN_BLINDING_get_flags
	.globl	BN_BLINDING_set_flags
	.type	BN_BLINDING_set_flags, @function
BN_BLINDING_set_flags:
.LFB173:
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
	movq	%rdx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BN_BLINDING_set_flags, .-BN_BLINDING_set_flags
	.globl	BN_BLINDING_create_param
	.type	BN_BLINDING_create_param, @function
BN_BLINDING_create_param:
.LFB174:
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
	movl	$32, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L68
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	BN_BLINDING_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.L69
.L68:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L69:
	cmpq	$0, -16(%rbp)
	je	.L92
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L93
.L72:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L94
.L73:
	cmpq	$0, -48(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L74:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L95
	cmpq	$0, -72(%rbp)
	je	.L76
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 64(%rax)
.L76:
	cmpq	$0, -80(%rbp)
	je	.L85
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 56(%rax)
.L85:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L96
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-20(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	int_bn_mod_inverse@PLT
	testq	%rax, %rax
	je	.L80
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L81
	jmp	.L82
.L80:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L97
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$284, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L71
.L81:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-16(%rbp), %rax
	movq	64(%rax), %r10
	movq	-16(%rbp), %rax
	movq	56(%rax), %r8
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L87
	jmp	.L71
.L82:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L98
.L87:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L99
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L99
.L88:
	movq	-16(%rbp), %rax
	jmp	.L90
.L92:
	nop
	jmp	.L71
.L93:
	nop
	jmp	.L71
.L94:
	nop
	jmp	.L71
.L95:
	nop
	jmp	.L71
.L96:
	nop
	jmp	.L71
.L97:
	nop
	jmp	.L71
.L98:
	nop
	jmp	.L71
.L99:
	nop
.L71:
	cmpq	$0, -40(%rbp)
	jne	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_free@PLT
	movq	$0, -16(%rbp)
.L91:
	movq	-16(%rbp), %rax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BN_BLINDING_create_param, .-BN_BLINDING_create_param
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"BN_BLINDING_new"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"BN_BLINDING_update"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"BN_BLINDING_convert_ex"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"BN_BLINDING_invert_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"BN_BLINDING_create_param"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

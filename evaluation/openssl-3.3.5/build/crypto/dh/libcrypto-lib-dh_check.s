	.file	"dh_check.c"
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
	.string	"../crypto/dh/dh_check.c"
	.text
	.globl	DH_check_params_ex
	.type	DH_check_params_ex, @function
DH_check_params_ex:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check_params@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L12
.L6:
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L8
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L8:
	movl	-4(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L9
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L9:
	movl	-4(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L10
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L10:
	movl	-4(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L11
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L11:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	DH_check_params_ex, .-DH_check_params_ex
	.globl	DH_check_params
	.type	DH_check_params, @function
DH_check_params:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L26
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L17:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L18
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L18
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L19
.L18:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L19:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L28
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L28
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L22
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L22:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$511, %eax
	jg	.L23
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L23:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$10000, %eax
	jle	.L24
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L24:
	movl	$1, -4(%rbp)
	jmp	.L15
.L26:
	nop
	jmp	.L15
.L27:
	nop
	jmp	.L15
.L28:
	nop
.L15:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	DH_check_params, .-DH_check_params
	.globl	DH_check_ex
	.type	DH_check_ex, @function
DH_check_ex:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L41
.L30:
	movl	-4(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L32:
	movl	-4(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L33
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L33:
	movl	-4(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L34:
	movl	-4(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L35:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L36
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L36:
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L37
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L37:
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L38
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L38:
	movl	-4(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L39
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L39:
	movl	-4(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L40
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L40:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	DH_check_ex, .-DH_check_ex
	.globl	DH_check
	.type	DH_check, @function
DH_check:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$0, -36(%rbp)
	je	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$32768, %eax
	jle	.L45
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-64(%rbp), %rax
	movl	$257, (%rax)
	movl	$0, %eax
	jmp	.L44
.L45:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check_params@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L44
.L46:
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L66
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L67
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jle	.L51
	movl	$1, -8(%rbp)
	jmp	.L50
.L51:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L50:
	cmpl	$0, -8(%rbp)
	je	.L52
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jg	.L53
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L54
.L53:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L55
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L54
.L55:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L68
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L54
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L54:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L69
	cmpl	$0, -40(%rbp)
	jne	.L58
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L58:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L60
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L60:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L52
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L52:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L71
	cmpl	$0, -40(%rbp)
	jne	.L62
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L63
.L62:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L63
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L72
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L73
	cmpl	$0, -40(%rbp)
	jne	.L63
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L63:
	movl	$1, -4(%rbp)
	jmp	.L48
.L66:
	nop
	jmp	.L48
.L67:
	nop
	jmp	.L48
.L68:
	nop
	jmp	.L48
.L69:
	nop
	jmp	.L48
.L70:
	nop
	jmp	.L48
.L71:
	nop
	jmp	.L48
.L72:
	nop
	jmp	.L48
.L73:
	nop
.L48:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	DH_check, .-DH_check
	.globl	DH_check_pub_key_ex
	.type	DH_check_pub_key_ex, @function
DH_check_pub_key_ex:
.LFB411:
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
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_check_pub_key@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L80
.L75:
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L77
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L77:
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L78
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L78:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L79
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L79:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	DH_check_pub_key_ex, .-DH_check_pub_key_ex
	.globl	DH_check_pub_key
	.type	DH_check_pub_key, @function
DH_check_pub_key:
.LFB412:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$32768, %eax
	jle	.L82
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movl	$260, (%rax)
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L84
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$36, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L83
.L84:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_ffc_validate_public_key@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	DH_check_pub_key, .-DH_check_pub_key
	.globl	ossl_dh_check_pub_key_partial
	.type	ossl_dh_check_pub_key_partial, @function
ossl_dh_check_pub_key_partial:
.LFB413:
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
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_ffc_validate_public_key_partial@PLT
	testl	%eax, %eax
	je	.L86
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L86
	movl	$1, %eax
	jmp	.L88
.L86:
	movl	$0, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_dh_check_pub_key_partial, .-ossl_dh_check_pub_key_partial
	.globl	ossl_dh_check_priv_key
	.type	ossl_dh_check_priv_key, @function
ossl_dh_check_priv_key:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	testl	%eax, %eax
	je	.L98
	jmp	.L101
.L92:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-56(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L95
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -44(%rbp)
	jl	.L103
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$1, %eax
	jle	.L103
	movl	$1, -20(%rbp)
	jmp	.L103
.L95:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -44(%rbp)
	jne	.L103
	movl	$1, -20(%rbp)
	jmp	.L103
.L101:
	movq	-56(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L98
	movq	-56(%rbp), %rax
	movl	104(%rax), %ebx
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L104
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L98
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.L98:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_validate_private_key@PLT
	testl	%eax, %eax
	je	.L105
	movl	$1, -20(%rbp)
	jmp	.L97
.L102:
	nop
	jmp	.L97
.L103:
	nop
	jmp	.L97
.L104:
	nop
	jmp	.L97
.L105:
	nop
.L97:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_dh_check_priv_key, .-ossl_dh_check_priv_key
	.globl	ossl_dh_check_pairwise
	.type	ossl_dh_check_pairwise, @function
ossl_dh_check_pairwise:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L108
.L107:
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L114
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L115
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_generate_public_key@PLT
	testl	%eax, %eax
	je	.L116
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L111
.L114:
	nop
	jmp	.L111
.L115:
	nop
	jmp	.L111
.L116:
	nop
.L111:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_dh_check_pairwise, .-ossl_dh_check_pairwise
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"DH_check_params_ex"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"DH_check_ex"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 9
__func__.2:
	.string	"DH_check"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"DH_check_pub_key_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"DH_check_pub_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

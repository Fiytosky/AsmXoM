	.file	"eng_ctrl.c"
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
	.type	lh_ENGINE_PILE_hfn_thunk, @function
lh_ENGINE_PILE_hfn_thunk:
.LFB570:
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
.LFE570:
	.size	lh_ENGINE_PILE_hfn_thunk, .-lh_ENGINE_PILE_hfn_thunk
	.type	lh_ENGINE_PILE_cfn_thunk, @function
lh_ENGINE_PILE_cfn_thunk:
.LFB571:
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
.LFE571:
	.size	lh_ENGINE_PILE_cfn_thunk, .-lh_ENGINE_PILE_cfn_thunk
	.section	.rodata
.LC0:
	.string	""
	.section	.data.rel.local,"aw"
	.align 8
	.type	int_no_description, @object
	.size	int_no_description, 8
int_no_description:
	.quad	.LC0
	.text
	.type	int_ctrl_cmd_is_null, @function
int_ctrl_cmd_is_null:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L11
.L10:
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	int_ctrl_cmd_is_null, .-int_ctrl_cmd_is_null
	.type	int_ctrl_cmd_by_name, @function
int_ctrl_cmd_by_name:
.LFB588:
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
	jmp	.L14
.L16:
	addl	$1, -4(%rbp)
	addq	$32, -24(%rbp)
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	int_ctrl_cmd_is_null
	testl	%eax, %eax
	jne	.L15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L16
.L15:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	int_ctrl_cmd_is_null
	testl	%eax, %eax
	je	.L17
	movl	$-1, %eax
	jmp	.L18
.L17:
	movl	-4(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	int_ctrl_cmd_by_name, .-int_ctrl_cmd_by_name
	.type	int_ctrl_cmd_by_num, @function
int_ctrl_cmd_by_num:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L20
.L22:
	addl	$1, -4(%rbp)
	addq	$32, -24(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	int_ctrl_cmd_is_null
	testl	%eax, %eax
	jne	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	jb	.L22
.L21:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L23
	movl	-4(%rbp), %eax
	jmp	.L24
.L23:
	movl	$-1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	int_ctrl_cmd_by_num, .-int_ctrl_cmd_by_num
	.section	.rodata
.LC1:
	.string	"../crypto/engine/eng_ctrl.c"
	.text
	.type	int_ctrl_helper, @function
int_ctrl_helper:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$11, -44(%rbp)
	jne	.L26
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	int_ctrl_cmd_is_null
	testl	%eax, %eax
	je	.L28
.L27:
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	(%rax), %eax
	jmp	.L29
.L26:
	cmpl	$13, -44(%rbp)
	je	.L30
	cmpl	$15, -44(%rbp)
	je	.L30
	cmpl	$17, -44(%rbp)
	jne	.L31
.L30:
	cmpq	$0, -8(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L29
.L31:
	cmpl	$13, -44(%rbp)
	jne	.L32
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	int_ctrl_cmd_by_name
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L29
.L34:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L29
.L32:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_ctrl_cmd_by_num
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L36
.L35:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L29
.L36:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpl	$18, -44(%rbp)
	je	.L37
	cmpl	$18, -44(%rbp)
	jg	.L38
	cmpl	$17, -44(%rbp)
	je	.L39
	cmpl	$17, -44(%rbp)
	jg	.L38
	cmpl	$16, -44(%rbp)
	je	.L40
	cmpl	$16, -44(%rbp)
	jg	.L38
	cmpl	$15, -44(%rbp)
	je	.L41
	cmpl	$15, -44(%rbp)
	jg	.L38
	cmpl	$12, -44(%rbp)
	je	.L42
	cmpl	$14, -44(%rbp)
	je	.L43
	jmp	.L38
.L42:
	addq	$32, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	int_ctrl_cmd_is_null
	testl	%eax, %eax
	jne	.L44
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L29
.L44:
	movl	$0, %eax
	jmp	.L29
.L43:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L29
.L41:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L29
.L40:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L47
.L46:
	movq	int_no_description(%rip), %rax
.L47:
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L29
.L39:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L49
.L48:
	movq	int_no_description(%rip), %rax
.L49:
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L29
.L37:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L29
.L38:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	int_ctrl_helper, .-int_ctrl_helper
	.globl	ENGINE_ctrl
	.type	ENGINE_ctrl, @function
ENGINE_ctrl:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$10, -28(%rbp)
	je	.L53
	cmpl	$10, -28(%rbp)
	jl	.L60
	movl	-28(%rbp), %eax
	subl	$11, %eax
	cmpl	$7, %eax
	ja	.L60
	jmp	.L59
.L53:
	movl	-4(%rbp), %eax
	jmp	.L52
.L59:
	cmpl	$0, -4(%rbp)
	je	.L56
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L56
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	int_ctrl_helper
	jmp	.L52
.L56:
	cmpl	$0, -4(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L52
.L60:
	nop
	cmpl	$0, -4(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L57:
	movq	-24(%rbp), %rax
	movq	112(%rax), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ENGINE_ctrl, .-ENGINE_ctrl
	.globl	ENGINE_cmd_is_executable
	.type	ENGINE_cmd_is_executable, @function
ENGINE_cmd_is_executable:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$18, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L62
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L62:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L64
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L64
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ENGINE_cmd_is_executable, .-ENGINE_cmd_is_executable
	.globl	ENGINE_ctrl_cmd
	.type	ENGINE_ctrl_cmd, @function
ENGINE_ctrl_cmd:
.LFB593:
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
	movl	%r9d, -60(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	cmpq	$0, -32(%rbp)
	jne	.L67
.L66:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L70
.L69:
	cmpl	$0, -60(%rbp)
	je	.L71
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L68
.L71:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L70:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	jle	.L72
	movl	$1, %eax
	jmp	.L68
.L72:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	ENGINE_ctrl_cmd, .-ENGINE_ctrl_cmd
	.globl	ENGINE_ctrl_cmd_string
	.type	ENGINE_ctrl_cmd_string, @function
ENGINE_ctrl_cmd_string:
.LFB594:
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
	movl	%ecx, -60(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L74
	cmpq	$0, -48(%rbp)
	jne	.L75
.L74:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L75:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L78
.L77:
	cmpl	$0, -60(%rbp)
	je	.L79
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L92
.L79:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L78:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_cmd_is_executable@PLT
	testl	%eax, %eax
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L80:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$18, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L81
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L81:
	movl	-8(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L82
	cmpq	$0, -56(%rbp)
	je	.L83
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L83:
	movq	-56(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	jle	.L84
	movl	$1, %eax
	jmp	.L92
.L84:
	movl	$0, %eax
	jmp	.L92
.L82:
	cmpq	$0, -56(%rbp)
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L85:
	movl	-8(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L86
	movq	-56(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	jle	.L87
	movl	$1, %eax
	jmp	.L92
.L87:
	movl	$0, %eax
	jmp	.L92
.L86:
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L88:
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	je	.L89
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
.L89:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L92
.L90:
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	jle	.L91
	movl	$1, %eax
	jmp	.L92
.L91:
	movl	$0, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ENGINE_ctrl_cmd_string, .-ENGINE_ctrl_cmd_string
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"int_ctrl_helper"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"ENGINE_ctrl"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"ENGINE_cmd_is_executable"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ENGINE_ctrl_cmd"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ENGINE_ctrl_cmd_string"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

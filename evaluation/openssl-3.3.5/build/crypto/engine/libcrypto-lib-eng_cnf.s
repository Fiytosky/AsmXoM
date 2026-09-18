	.file	"eng_cnf.c"
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB493:
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
.LFE493:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	sk_ENGINE_new_null, @function
sk_ENGINE_new_null:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	sk_ENGINE_new_null, .-sk_ENGINE_new_null
	.type	sk_ENGINE_free, @function
sk_ENGINE_free:
.LFB551:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	sk_ENGINE_free, .-sk_ENGINE_free
	.type	sk_ENGINE_push, @function
sk_ENGINE_push:
.LFB555:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	sk_ENGINE_push, .-sk_ENGINE_push
	.type	sk_ENGINE_pop, @function
sk_ENGINE_pop:
.LFB557:
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
	call	OPENSSL_sk_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	sk_ENGINE_pop, .-sk_ENGINE_pop
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
	.type	skip_dot, @function
skip_dot:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	addq	$1, %rax
	jmp	.L20
.L19:
	movq	-24(%rbp), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	skip_dot, .-skip_dot
	.local	initialized_engines
	.comm	initialized_engines,8,8
	.type	int_engine_init, @function
int_engine_init:
.LFB588:
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
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	initialized_engines(%rip), %rax
	testq	%rax, %rax
	jne	.L24
	call	sk_ENGINE_new_null
	movq	%rax, initialized_engines(%rip)
.L24:
	movq	initialized_engines(%rip), %rax
	testq	%rax, %rax
	je	.L25
	movq	initialized_engines(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_push
	testl	%eax, %eax
	jne	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	$0, %eax
	jmp	.L23
.L26:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	int_engine_init, .-int_engine_init
	.section	.rodata
.LC0:
	.string	"../crypto/engine/eng_cnf.c"
.LC1:
	.string	"engine_id"
.LC2:
	.string	"soft_load"
.LC3:
	.string	"dynamic_path"
.LC4:
	.string	"dynamic"
.LC5:
	.string	"SO_PATH"
.LC6:
	.string	"2"
.LC7:
	.string	"LIST_ADD"
.LC8:
	.string	"LOAD"
.LC9:
	.string	"EMPTY"
.LC10:
	.string	"init"
.LC11:
	.string	"default_algorithms"
.LC12:
	.string	"section=%s, name=%s, value=%s"
	.text
	.type	int_engine_configure, @function
int_engine_configure:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -8(%rbp)
	movq	$-1, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	skip_dot
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L28:
	movl	$0, -4(%rbp)
	jmp	.L30
.L46:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	skip_dot
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L32
.L31:
	leaq	.LC2(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$1, -36(%rbp)
	jmp	.L32
.L33:
	leaq	.LC3(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L34
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L51
	movq	-24(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L52
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L53
	leaq	.LC8(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	jne	.L32
	jmp	.L36
.L34:
	cmpq	$0, -32(%rbp)
	jne	.L39
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L40
	cmpl	$0, -36(%rbp)
	je	.L40
	call	ERR_clear_error@PLT
	movl	$1, %eax
	jmp	.L50
.L40:
	cmpq	$0, -32(%rbp)
	je	.L54
.L39:
	leaq	.LC9(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L41
	movq	$0, -24(%rbp)
.L41:
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L42
	leaq	-64(%rbp), %rdx
	leaq	.LC10(%rip), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	testl	%eax, %eax
	je	.L55
	movq	-64(%rbp), %rax
	cmpq	$1, %rax
	jne	.L44
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	int_engine_init
	testl	%eax, %eax
	jne	.L32
	jmp	.L36
.L44:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L42:
	leaq	.LC11(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_default_string@PLT
	testl	%eax, %eax
	jne	.L32
	jmp	.L36
.L45:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	je	.L56
.L32:
	addl	$1, -4(%rbp)
.L30:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L46
	cmpq	$0, -32(%rbp)
	je	.L47
	movq	-64(%rbp), %rax
	cmpq	$-1, %rax
	jne	.L47
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	int_engine_init
	testl	%eax, %eax
	jne	.L47
	movq	$0, -16(%rbp)
	jmp	.L36
.L47:
	movl	$1, -8(%rbp)
	jmp	.L36
.L51:
	nop
	jmp	.L36
.L52:
	nop
	jmp	.L36
.L53:
	nop
	jmp	.L36
.L54:
	nop
	jmp	.L36
.L55:
	nop
	jmp	.L36
.L56:
	nop
.L36:
	cmpl	$1, -8(%rbp)
	je	.L48
	cmpq	$0, -16(%rbp)
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L49:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L48:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	-8(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	int_engine_configure, .-int_engine_configure
	.type	int_engine_module_init, @function
int_engine_module_init:
.LFB590:
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
	movq	%rax, %rdi
	call	CONF_imodule_get_value@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$158, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L58:
	movl	$0, -4(%rbp)
	jmp	.L60
.L62:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int_engine_configure
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L59
.L61:
	addl	$1, -4(%rbp)
.L60:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L62
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	int_engine_module_init, .-int_engine_module_init
	.type	int_engine_module_finish, @function
int_engine_module_finish:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L64
.L65:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
.L64:
	movq	initialized_engines(%rip), %rax
	movq	%rax, %rdi
	call	sk_ENGINE_pop
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
	movq	initialized_engines(%rip), %rax
	movq	%rax, %rdi
	call	sk_ENGINE_free
	movq	$0, initialized_engines(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	int_engine_module_finish, .-int_engine_module_finish
	.section	.rodata
.LC13:
	.string	"engines"
	.text
	.globl	ENGINE_add_conf_module
	.type	ENGINE_add_conf_module, @function
ENGINE_add_conf_module:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	int_engine_module_finish(%rip), %rdx
	leaq	int_engine_module_init(%rip), %rcx
	leaq	.LC13(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_module_add@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ENGINE_add_conf_module, .-ENGINE_add_conf_module
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"int_engine_configure"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"int_engine_module_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

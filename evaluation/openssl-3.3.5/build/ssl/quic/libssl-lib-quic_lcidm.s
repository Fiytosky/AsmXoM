	.file	"quic_lcidm.c"
	.text
	.type	ossl_quic_conn_id_eq, @function
ossl_quic_conn_id_eq:
.LFB512:
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
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L2
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ossl_quic_conn_id_eq, .-ossl_quic_conn_id_eq
	.type	lh_QUIC_LCID_hfn_thunk, @function
lh_QUIC_LCID_hfn_thunk:
.LFB579:
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
.LFE579:
	.size	lh_QUIC_LCID_hfn_thunk, .-lh_QUIC_LCID_hfn_thunk
	.type	lh_QUIC_LCID_cfn_thunk, @function
lh_QUIC_LCID_cfn_thunk:
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
.LFE580:
	.size	lh_QUIC_LCID_cfn_thunk, .-lh_QUIC_LCID_cfn_thunk
	.type	lh_QUIC_LCID_free, @function
lh_QUIC_LCID_free:
.LFB581:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	lh_QUIC_LCID_free, .-lh_QUIC_LCID_free
	.type	lh_QUIC_LCID_insert, @function
lh_QUIC_LCID_insert:
.LFB583:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	lh_QUIC_LCID_insert, .-lh_QUIC_LCID_insert
	.type	lh_QUIC_LCID_delete, @function
lh_QUIC_LCID_delete:
.LFB584:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	lh_QUIC_LCID_delete, .-lh_QUIC_LCID_delete
	.type	lh_QUIC_LCID_retrieve, @function
lh_QUIC_LCID_retrieve:
.LFB585:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	lh_QUIC_LCID_retrieve, .-lh_QUIC_LCID_retrieve
	.type	lh_QUIC_LCID_error, @function
lh_QUIC_LCID_error:
.LFB586:
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
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	lh_QUIC_LCID_error, .-lh_QUIC_LCID_error
	.type	lh_QUIC_LCID_set_down_load, @function
lh_QUIC_LCID_set_down_load:
.LFB589:
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
	call	OPENSSL_LH_set_down_load@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	lh_QUIC_LCID_set_down_load, .-lh_QUIC_LCID_set_down_load
	.type	lh_QUIC_LCID_doall_thunk, @function
lh_QUIC_LCID_doall_thunk:
.LFB590:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	lh_QUIC_LCID_doall_thunk, .-lh_QUIC_LCID_doall_thunk
	.type	lh_QUIC_LCID_doall_arg_thunk, @function
lh_QUIC_LCID_doall_arg_thunk:
.LFB591:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	lh_QUIC_LCID_doall_arg_thunk, .-lh_QUIC_LCID_doall_arg_thunk
	.type	lh_QUIC_LCID_new, @function
lh_QUIC_LCID_new:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_QUIC_LCID_doall_arg_thunk(%rip), %rsi
	leaq	lh_QUIC_LCID_doall_thunk(%rip), %rcx
	leaq	lh_QUIC_LCID_cfn_thunk(%rip), %rdx
	leaq	lh_QUIC_LCID_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	lh_QUIC_LCID_new, .-lh_QUIC_LCID_new
	.type	lh_QUIC_LCID_doall_arg, @function
lh_QUIC_LCID_doall_arg:
.LFB594:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	lh_QUIC_LCID_doall_arg, .-lh_QUIC_LCID_doall_arg
	.type	lh_QUIC_LCIDM_CONN_hfn_thunk, @function
lh_QUIC_LCIDM_CONN_hfn_thunk:
.LFB595:
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
.LFE595:
	.size	lh_QUIC_LCIDM_CONN_hfn_thunk, .-lh_QUIC_LCIDM_CONN_hfn_thunk
	.type	lh_QUIC_LCIDM_CONN_cfn_thunk, @function
lh_QUIC_LCIDM_CONN_cfn_thunk:
.LFB596:
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
.LFE596:
	.size	lh_QUIC_LCIDM_CONN_cfn_thunk, .-lh_QUIC_LCIDM_CONN_cfn_thunk
	.type	lh_QUIC_LCIDM_CONN_free, @function
lh_QUIC_LCIDM_CONN_free:
.LFB597:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	lh_QUIC_LCIDM_CONN_free, .-lh_QUIC_LCIDM_CONN_free
	.type	lh_QUIC_LCIDM_CONN_insert, @function
lh_QUIC_LCIDM_CONN_insert:
.LFB599:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	lh_QUIC_LCIDM_CONN_insert, .-lh_QUIC_LCIDM_CONN_insert
	.type	lh_QUIC_LCIDM_CONN_delete, @function
lh_QUIC_LCIDM_CONN_delete:
.LFB600:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	lh_QUIC_LCIDM_CONN_delete, .-lh_QUIC_LCIDM_CONN_delete
	.type	lh_QUIC_LCIDM_CONN_retrieve, @function
lh_QUIC_LCIDM_CONN_retrieve:
.LFB601:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	lh_QUIC_LCIDM_CONN_retrieve, .-lh_QUIC_LCIDM_CONN_retrieve
	.type	lh_QUIC_LCIDM_CONN_error, @function
lh_QUIC_LCIDM_CONN_error:
.LFB602:
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
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	lh_QUIC_LCIDM_CONN_error, .-lh_QUIC_LCIDM_CONN_error
	.type	lh_QUIC_LCIDM_CONN_set_down_load, @function
lh_QUIC_LCIDM_CONN_set_down_load:
.LFB605:
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
	call	OPENSSL_LH_set_down_load@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	lh_QUIC_LCIDM_CONN_set_down_load, .-lh_QUIC_LCIDM_CONN_set_down_load
	.type	lh_QUIC_LCIDM_CONN_doall_thunk, @function
lh_QUIC_LCIDM_CONN_doall_thunk:
.LFB606:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	lh_QUIC_LCIDM_CONN_doall_thunk, .-lh_QUIC_LCIDM_CONN_doall_thunk
	.type	lh_QUIC_LCIDM_CONN_doall_arg_thunk, @function
lh_QUIC_LCIDM_CONN_doall_arg_thunk:
.LFB607:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	lh_QUIC_LCIDM_CONN_doall_arg_thunk, .-lh_QUIC_LCIDM_CONN_doall_arg_thunk
	.type	lh_QUIC_LCIDM_CONN_new, @function
lh_QUIC_LCIDM_CONN_new:
.LFB609:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_QUIC_LCIDM_CONN_doall_arg_thunk(%rip), %rsi
	leaq	lh_QUIC_LCIDM_CONN_doall_thunk(%rip), %rcx
	leaq	lh_QUIC_LCIDM_CONN_cfn_thunk(%rip), %rdx
	leaq	lh_QUIC_LCIDM_CONN_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	lh_QUIC_LCIDM_CONN_new, .-lh_QUIC_LCIDM_CONN_new
	.type	lh_QUIC_LCIDM_CONN_doall_arg, @function
lh_QUIC_LCIDM_CONN_doall_arg:
.LFB610:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	lh_QUIC_LCIDM_CONN_doall_arg, .-lh_QUIC_LCIDM_CONN_doall_arg
	.type	bin_hash, @function
bin_hash:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L44
.L45:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	andl	$7, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	xorq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L44:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L45
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	bin_hash, .-bin_hash
	.type	lcid_hash, @function
lcid_hash:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	bin_hash
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	lcid_hash, .-lcid_hash
	.type	lcid_comp, @function
lcid_comp:
.LFB613:
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
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	lcid_comp, .-lcid_comp
	.type	lcidm_conn_hash, @function
lcidm_conn_hash:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	lcidm_conn_hash, .-lcidm_conn_hash
	.type	lcidm_conn_comp, @function
lcidm_conn_comp:
.LFB615:
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
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	lcidm_conn_comp, .-lcidm_conn_comp
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_lcidm.c"
	.text
	.globl	ossl_quic_lcidm_new
	.type	ossl_quic_lcidm_new, @function
ossl_quic_lcidm_new:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$20, -32(%rbp)
	ja	.L63
	leaq	.LC0(%rip), %rax
	movl	$104, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L64
	leaq	lcid_comp(%rip), %rdx
	leaq	lcid_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L65
	leaq	lcidm_conn_comp(%rip), %rdx
	leaq	lcidm_conn_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_new
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	jmp	.L61
.L63:
	nop
	jmp	.L57
.L64:
	nop
	jmp	.L57
.L65:
	nop
	jmp	.L57
.L66:
	nop
.L57:
	cmpq	$0, -8(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCID_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L62:
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ossl_quic_lcidm_new, .-ossl_quic_lcidm_new
	.type	lcidm_delete_conn_, @function
lcidm_delete_conn_:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_delete_conn
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	lcidm_delete_conn_, .-lcidm_delete_conn_
	.globl	ossl_quic_lcidm_free
	.type	ossl_quic_lcidm_free, @function
ossl_quic_lcidm_free:
.LFB618:
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
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_set_down_load
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	lcidm_delete_conn_(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_doall_arg
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCID_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$162, %edx
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
.LFE618:
	.size	ossl_quic_lcidm_free, .-ossl_quic_lcidm_free
	.type	lcidm_get0_lcid, @function
lcidm_get0_lcid:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	13(%rcx), %rax
	movq	%rax, -35(%rbp)
	movzbl	-48(%rbp), %eax
	cmpb	$20, %al
	jbe	.L73
	movl	$0, %eax
	jmp	.L75
.L73:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_retrieve
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	lcidm_get0_lcid, .-lcidm_get0_lcid
	.type	lcidm_get0_conn, @function
lcidm_get0_conn:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_retrieve
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	lcidm_get0_conn, .-lcidm_get0_conn
	.type	lcidm_upsert_conn, @function
lcidm_upsert_conn:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_get0_conn
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	jmp	.L80
.L79:
	leaq	.LC0(%rip), %rax
	movl	$193, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L86
	leaq	lcid_comp(%rip), %rdx
	leaq	lcid_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_insert
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_error
	testl	%eax, %eax
	jne	.L88
	movq	-8(%rbp), %rax
	jmp	.L80
.L86:
	nop
	jmp	.L82
.L87:
	nop
	jmp	.L82
.L88:
	nop
.L82:
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCID_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L85:
	movl	$0, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	lcidm_upsert_conn, .-lcidm_upsert_conn
	.type	lcidm_delete_conn_lcid, @function
lcidm_delete_conn_lcid:
.LFB622:
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
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_delete
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_delete
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, (%rax)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	lcidm_delete_conn_lcid, .-lcidm_delete_conn_lcid
	.type	lcidm_delete_conn_lcid_, @function
lcidm_delete_conn_lcid_:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_delete_conn_lcid
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	lcidm_delete_conn_lcid_, .-lcidm_delete_conn_lcid_
	.type	lcidm_delete_conn, @function
lcidm_delete_conn:
.LFB624:
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
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_set_down_load
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	lcidm_delete_conn_lcid_(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_doall_arg
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_delete
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCID_free
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$238, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	lcidm_delete_conn, .-lcidm_delete_conn
	.type	lcidm_conn_new_lcid, @function
lcidm_conn_new_lcid:
.LFB625:
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
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	leaq	.LC0(%rip), %rax
	movl	$249, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L99
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 13(%rcx)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_insert
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCID_error
	testl	%eax, %eax
	jne	.L100
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_insert
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_LCID_error
	testl	%eax, %eax
	je	.L98
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_delete
	jmp	.L96
.L98:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L94
.L99:
	nop
	jmp	.L96
.L100:
	nop
.L96:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$269, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	lcidm_conn_new_lcid, .-lcidm_conn_new_lcid
	.globl	ossl_quic_lcidm_get_lcid_len
	.type	ossl_quic_lcidm_get_lcid_len, @function
ossl_quic_lcidm_get_lcid_len:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ossl_quic_lcidm_get_lcid_len, .-ossl_quic_lcidm_get_lcid_len
	.globl	ossl_quic_lcidm_get_num_active_lcid
	.type	ossl_quic_lcidm_get_num_active_lcid, @function
ossl_quic_lcidm_get_num_active_lcid:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_get0_conn
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ossl_quic_lcidm_get_num_active_lcid, .-ossl_quic_lcidm_get_num_active_lcid
	.type	lcidm_generate_cid, @function
lcidm_generate_cid:
.LFB628:
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
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_gen_rand_conn_id@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	lcidm_generate_cid, .-lcidm_generate_cid
	.type	lcidm_generate, @function
lcidm_generate:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_upsert_conn
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L109
	movl	$0, %eax
	jmp	.L119
.L109:
	cmpl	$1, -100(%rbp)
	jne	.L111
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L112
.L111:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movabsq	$4611686018427387903, %rdx
	cmpq	%rax, %rdx
	jnb	.L113
.L112:
	movl	$0, %eax
	jmp	.L119
.L113:
	movq	$0, -8(%rbp)
.L116:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	cmpq	$7, %rax
	jbe	.L114
	movl	$0, %eax
	jmp	.L119
.L114:
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_generate_cid
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L119
.L115:
	movq	-112(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	13(%rcx), %rax
	movq	%rax, -67(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_retrieve
	testq	%rax, %rax
	jne	.L116
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lcidm_conn_new_lcid
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L117
	movl	$0, %eax
	jmp	.L119
.L117:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-100(%rbp), %eax
	andl	$3, %eax
	movq	-24(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	40(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 40(%rdx)
	cmpq	$0, -120(%rbp)
	je	.L118
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
.L118:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	lcidm_generate, .-lcidm_generate
	.globl	ossl_quic_lcidm_enrol_odcid
	.type	ossl_quic_lcidm_enrol_odcid, @function
ossl_quic_lcidm_enrol_odcid:
.LFB630:
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
	cmpq	$0, -88(%rbp)
	je	.L121
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jbe	.L121
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L122
.L121:
	movl	$0, %eax
	jmp	.L128
.L122:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_upsert_conn
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L128
.L124:
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L125
	movl	$0, %eax
	jmp	.L128
.L125:
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	13(%rcx), %rax
	movq	%rax, -51(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_retrieve
	testq	%rax, %rax
	je	.L126
	movl	$0, %eax
	jmp	.L128
.L126:
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lcidm_conn_new_lcid
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-16(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-16(%rbp), %rax
	movzbl	40(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %edx
	orl	$1, %edx
	movb	%dl, 40(%rax)
	movl	$1, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ossl_quic_lcidm_enrol_odcid, .-ossl_quic_lcidm_enrol_odcid
	.globl	ossl_quic_lcidm_generate_initial
	.type	ossl_quic_lcidm_generate_initial, @function
ossl_quic_lcidm_generate_initial:
.LFB631:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	lcidm_generate
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_quic_lcidm_generate_initial, .-ossl_quic_lcidm_generate_initial
	.globl	ossl_quic_lcidm_generate
	.type	ossl_quic_lcidm_generate, @function
ossl_quic_lcidm_generate:
.LFB632:
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
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	lcidm_generate
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_quic_lcidm_generate, .-ossl_quic_lcidm_generate
	.globl	ossl_quic_lcidm_retire_odcid
	.type	ossl_quic_lcidm_retire_odcid, @function
ossl_quic_lcidm_retire_odcid:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_upsert_conn
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L134
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L136
	movl	$0, %eax
	jmp	.L135
.L136:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_delete_conn_lcid
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movl	$1, %eax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ossl_quic_lcidm_retire_odcid, .-ossl_quic_lcidm_retire_odcid
	.type	retire_for_conn, @function
retire_for_conn:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$3, %eax
	testb	%al, %al
	je	.L141
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L141
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L137
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L137
.L141:
	nop
.L137:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	retire_for_conn, .-retire_for_conn
	.globl	ossl_quic_lcidm_retire
	.type	ossl_quic_lcidm_retire, @function
ossl_quic_lcidm_retire:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	%xmm0, -80(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L143
	movl	$0, %eax
	jmp	.L150
.L143:
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L145
	movl	$1, %eax
	jmp	.L150
.L145:
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$-1, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rdx
	leaq	retire_for_conn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_doall_arg
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L146
	movl	$1, %eax
	jmp	.L150
.L146:
	cmpq	$0, -128(%rbp)
	je	.L147
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	je	.L147
	movl	$0, %eax
	jmp	.L150
.L147:
	movq	16(%rbp), %rax
	movl	$1, (%rax)
	cmpq	$0, -136(%rbp)
	je	.L148
	movq	-96(%rbp), %rsi
	movq	-136(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 13(%rcx)
.L148:
	cmpq	$0, -144(%rbp)
	je	.L149
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
.L149:
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_delete_conn_lcid
	movl	$1, %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_quic_lcidm_retire, .-ossl_quic_lcidm_retire
	.globl	ossl_quic_lcidm_cull
	.type	ossl_quic_lcidm_cull, @function
ossl_quic_lcidm_cull:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCIDM_CONN_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L152
	movl	$0, %eax
	jmp	.L154
.L152:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_delete_conn
	movl	$1, %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ossl_quic_lcidm_cull, .-ossl_quic_lcidm_cull
	.globl	ossl_quic_lcidm_lookup
	.type	ossl_quic_lcidm_lookup, @function
ossl_quic_lcidm_lookup:
.LFB637:
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
	cmpq	$0, -32(%rbp)
	jne	.L156
	movl	$0, %eax
	jmp	.L157
.L156:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_get0_lcid
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L158
	movl	$0, %eax
	jmp	.L157
.L158:
	cmpq	$0, -40(%rbp)
	je	.L159
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L159:
	cmpq	$0, -48(%rbp)
	je	.L160
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L160:
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ossl_quic_lcidm_lookup, .-ossl_quic_lcidm_lookup
	.globl	ossl_quic_lcidm_debug_remove
	.type	ossl_quic_lcidm_debug_remove, @function
ossl_quic_lcidm_debug_remove:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	13(%rcx), %rax
	movq	%rax, -51(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L162
	movl	$0, %eax
	jmp	.L164
.L162:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_delete_conn_lcid
	movl	$1, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ossl_quic_lcidm_debug_remove, .-ossl_quic_lcidm_debug_remove
	.globl	ossl_quic_lcidm_debug_add
	.type	ossl_quic_lcidm_debug_add, @function
ossl_quic_lcidm_debug_add:
.LFB639:
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
	movq	%rcx, -96(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L166
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L167
.L166:
	movl	$0, %eax
	jmp	.L172
.L167:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcidm_upsert_conn
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L169
	movl	$0, %eax
	jmp	.L172
.L169:
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	13(%rcx), %rax
	movq	%rax, -51(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_LCID_retrieve
	testq	%rax, %rax
	je	.L170
	movl	$0, %eax
	jmp	.L172
.L170:
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lcidm_conn_new_lcid
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L172
.L171:
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movzbl	40(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 40(%rax)
	movl	$1, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_quic_lcidm_debug_add, .-ossl_quic_lcidm_debug_add
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

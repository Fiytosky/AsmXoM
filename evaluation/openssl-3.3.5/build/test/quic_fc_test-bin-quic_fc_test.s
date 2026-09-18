	.file	"quic_fc_test.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L2
	movl	$1, %ecx
.L2:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB489:
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
.LFE489:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB491:
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
.LFE491:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_add, @function
ossl_time_add:
.LFB500:
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
	call	safe_add_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L14
	call	ossl_time_infinite
	jmp	.L16
.L14:
	movq	-8(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_time_add, .-ossl_time_add
	.section	.rodata
	.align 8
.LC0:
	.string	"ossl_quic_txfc_init(&conn_txfc, 0)"
.LC1:
	.string	"../test/quic_fc_test.c"
	.align 8
.LC2:
	.string	"ossl_quic_txfc_init(&stream_txfc, &conn_txfc)"
	.align 8
.LC3:
	.string	"ossl_quic_txfc_bump_cwm(txfc, 2000)"
	.align 8
.LC4:
	.string	"ossl_quic_txfc_bump_cwm(parent_txfc, 2000)"
.LC5:
	.string	"0"
.LC6:
	.string	"ossl_quic_txfc_get_swm(txfc)"
.LC7:
	.string	"2000"
.LC8:
	.string	"ossl_quic_txfc_get_cwm(txfc)"
	.align 8
.LC9:
	.string	"ossl_quic_txfc_get_credit_local(txfc, 0)"
.LC10:
	.string	"1900"
	.align 8
.LC11:
	.string	"ossl_quic_txfc_get_credit_local(txfc, 100)"
	.align 8
.LC12:
	.string	"ossl_quic_txfc_get_credit(txfc, 0)"
	.align 8
.LC13:
	.string	"ossl_quic_txfc_get_credit(txfc, 100)"
	.align 8
.LC14:
	.string	"ossl_quic_txfc_has_become_blocked(txfc, 0)"
	.align 8
.LC15:
	.string	"ossl_quic_txfc_consume_credit(txfc, 500)"
.LC16:
	.string	"1500"
.LC17:
	.string	"500"
	.align 8
.LC18:
	.string	"ossl_quic_txfc_consume_credit(txfc, 100)"
.LC19:
	.string	"600"
.LC20:
	.string	"1400"
	.align 8
.LC21:
	.string	"ossl_quic_txfc_consume_credit(txfc, 1400)"
	.align 8
.LC22:
	.string	"ossl_quic_txfc_has_become_blocked(txfc, 1)"
	.align 8
.LC23:
	.string	"ossl_quic_txfc_consume_credit(txfc, 1)"
	.align 8
.LC24:
	.string	"ossl_quic_txfc_bump_cwm(txfc, 2500)"
	.align 8
.LC25:
	.string	"ossl_quic_txfc_bump_cwm(parent_txfc, 2400)"
.LC26:
	.string	"2500"
	.align 8
.LC27:
	.string	"ossl_quic_txfc_get_credit(txfc, 400)"
	.align 8
.LC28:
	.string	"ossl_quic_txfc_consume_credit(txfc, 399)"
.LC29:
	.string	"1"
	.align 8
.LC30:
	.string	"ossl_quic_txfc_has_become_blocked(parent_txfc, 0)"
	.align 8
.LC31:
	.string	"ossl_quic_txfc_has_become_blocked(parent_txfc, 1)"
	.align 8
.LC32:
	.string	"ossl_quic_txfc_consume_credit(txfc, 499)"
	.text
	.type	test_txfc, @function
test_txfc:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	$0, -4(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$19, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	cmpl	$0, -100(%rbp)
	je	.L20
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$22, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L80
.L20:
	cmpl	$0, -100(%rbp)
	je	.L21
	leaq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L22
.L21:
	leaq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.L22:
	cmpl	$0, -100(%rbp)
	je	.L23
	leaq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L24
.L23:
	movq	$0, -24(%rbp)
.L24:
	movq	-16(%rbp), %rax
	movl	$2000, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$28, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	cmpl	$0, -100(%rbp)
	je	.L26
	movq	-24(%rbp), %rax
	movl	$2000, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$31, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
.L26:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$34, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_cwm@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-16(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1900, %r9d
	movq	%rsi, %r8
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L86
	cmpl	$0, -100(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1900, %r9d
	movq	%rsi, %r8
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L88
.L31:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$54, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movl	$500, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1500, %r9d
	movq	%rsi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L91
	cmpl	$0, -100(%rbp)
	je	.L36
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1500, %r9d
	movq	%rsi, %r8
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L92
.L36:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$500, %r9d
	movq	%rsi, %r8
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$600, %r9d
	movq	%rsi, %r8
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L96
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1400, %r9d
	movq	%rsi, %r8
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	cmpl	$0, -100(%rbp)
	je	.L42
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1400, %r9d
	movq	%rsi, %r8
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L98
.L42:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L99
	movq	-16(%rbp), %rax
	movl	$1400, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L101
	cmpl	$0, -100(%rbp)
	je	.L46
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L102
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L103
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L105
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L107
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$117, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L109
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_cwm@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L110
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L111
	movq	-16(%rbp), %rax
	movl	$2000, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movl	$2500, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$129, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L113
	cmpl	$0, -100(%rbp)
	je	.L58
	movq	-24(%rbp), %rax
	movl	$2400, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
.L58:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_cwm@PLT
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2500, %r9d
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L115
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2000, %r9d
	movq	%rsi, %r8
	movl	$138, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L116
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit_local@PLT
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$500, %r9d
	movq	%rsi, %r8
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L117
	cmpl	$0, -100(%rbp)
	je	.L62
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
.L62:
	cmpl	$0, -100(%rbp)
	je	.L63
	movq	-16(%rbp), %rax
	movl	$400, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L118
	movq	-16(%rbp), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L120
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L121
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L123
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L71
	jmp	.L19
.L63:
	movq	-16(%rbp), %rax
	movl	$499, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L126
	cmpl	$0, -100(%rbp)
	je	.L74
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L127
.L74:
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_consume_credit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_has_become_blocked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L131
.L71:
	movl	$1, -4(%rbp)
	jmp	.L19
.L79:
	nop
	jmp	.L19
.L80:
	nop
	jmp	.L19
.L81:
	nop
	jmp	.L19
.L82:
	nop
	jmp	.L19
.L83:
	nop
	jmp	.L19
.L84:
	nop
	jmp	.L19
.L85:
	nop
	jmp	.L19
.L86:
	nop
	jmp	.L19
.L87:
	nop
	jmp	.L19
.L88:
	nop
	jmp	.L19
.L89:
	nop
	jmp	.L19
.L90:
	nop
	jmp	.L19
.L91:
	nop
	jmp	.L19
.L92:
	nop
	jmp	.L19
.L93:
	nop
	jmp	.L19
.L94:
	nop
	jmp	.L19
.L95:
	nop
	jmp	.L19
.L96:
	nop
	jmp	.L19
.L97:
	nop
	jmp	.L19
.L98:
	nop
	jmp	.L19
.L99:
	nop
	jmp	.L19
.L100:
	nop
	jmp	.L19
.L101:
	nop
	jmp	.L19
.L102:
	nop
	jmp	.L19
.L103:
	nop
	jmp	.L19
.L104:
	nop
	jmp	.L19
.L105:
	nop
	jmp	.L19
.L106:
	nop
	jmp	.L19
.L107:
	nop
	jmp	.L19
.L108:
	nop
	jmp	.L19
.L109:
	nop
	jmp	.L19
.L110:
	nop
	jmp	.L19
.L111:
	nop
	jmp	.L19
.L112:
	nop
	jmp	.L19
.L113:
	nop
	jmp	.L19
.L114:
	nop
	jmp	.L19
.L115:
	nop
	jmp	.L19
.L116:
	nop
	jmp	.L19
.L117:
	nop
	jmp	.L19
.L118:
	nop
	jmp	.L19
.L119:
	nop
	jmp	.L19
.L120:
	nop
	jmp	.L19
.L121:
	nop
	jmp	.L19
.L122:
	nop
	jmp	.L19
.L123:
	nop
	jmp	.L19
.L124:
	nop
	jmp	.L19
.L125:
	nop
	jmp	.L19
.L126:
	nop
	jmp	.L19
.L127:
	nop
	jmp	.L19
.L128:
	nop
	jmp	.L19
.L129:
	nop
	jmp	.L19
.L130:
	nop
	jmp	.L19
.L131:
	nop
.L19:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_txfc, .-test_txfc
	.local	cur_time
	.comm	cur_time,8,8
	.type	fake_now, @function
fake_now:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	cur_time(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	fake_now, .-fake_now
	.section	.rodata
	.align 32
	.type	rx_script_1, @object
	.size	rx_script_1, 5040
rx_script_1:
	.byte	15
	.zero	7
	.quad	0
	.quad	1000000000
	.zero	24
	.byte	1
	.zero	7
	.quad	0
	.quad	1048576
	.quad	10485760
	.zero	16
	.byte	2
	.zero	7
	.quad	0
	.quad	1048576
	.quad	10485760
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	4
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.byte	1
	.zero	15
	.byte	4
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	15
	.byte	3
	.zero	7
	.quad	0
	.quad	50
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	7
	.zero	7
	.quad	0
	.quad	50
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	50
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	60
	.quad	0
	.zero	16
	.byte	7
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	4
	.zero	7
	.quad	0
	.quad	20
	.quad	50000000
	.byte	0
	.zero	15
	.byte	9
	.zero	7
	.quad	0
	.quad	20
	.zero	24
	.byte	10
	.zero	7
	.quad	0
	.quad	20
	.zero	24
	.byte	7
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	4
	.zero	7
	.quad	0
	.quad	41
	.quad	0
	.byte	1
	.zero	15
	.byte	4
	.zero	7
	.quad	0
	.quad	40
	.quad	0
	.byte	0
	.zero	15
	.byte	7
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	9
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	10
	.zero	7
	.quad	0
	.quad	60
	.zero	24
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	15
	.zero	7
	.quad	0
	.quad	201000000
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	1048576
	.quad	0
	.zero	16
	.byte	4
	.zero	7
	.quad	0
	.quad	1048516
	.quad	50000000
	.byte	0
	.zero	15
	.byte	7
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	2097152
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	2097152
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	1048577
	.quad	0
	.zero	16
	.byte	15
	.zero	7
	.quad	0
	.quad	201000000
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	2097152
	.quad	0
	.zero	16
	.byte	4
	.zero	7
	.quad	0
	.quad	1048576
	.quad	50000000
	.byte	0
	.zero	15
	.byte	7
	.zero	7
	.quad	0
	.quad	2097152
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	2097152
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	3145728
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	3145728
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	2097153
	.quad	0
	.zero	16
	.byte	15
	.zero	7
	.quad	0
	.quad	199000000
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	3145728
	.quad	0
	.zero	16
	.byte	4
	.zero	7
	.quad	0
	.quad	1048576
	.quad	50000000
	.byte	0
	.zero	15
	.byte	7
	.zero	7
	.quad	0
	.quad	3145728
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	3145728
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	5242880
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	5242880
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	5242875
	.quad	0
	.zero	16
	.byte	15
	.zero	7
	.quad	0
	.quad	250000000
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	5242881
	.quad	0
	.zero	16
	.byte	7
	.zero	7
	.quad	0
	.quad	5242880
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	5242880
	.zero	24
	.byte	13
	.zero	7
	.quad	0
	.quad	3
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	3
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	3
	.quad	1
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	3
	.quad	1
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	5242880
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	5242880
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	0
	.zero	47
	.align 32
	.type	rx_script_2, @object
	.size	rx_script_2, 3408
rx_script_2:
	.byte	15
	.zero	7
	.quad	0
	.quad	1000000000
	.zero	24
	.byte	1
	.zero	7
	.quad	0
	.quad	1048576
	.quad	10485760
	.zero	16
	.byte	2
	.zero	7
	.quad	0
	.quad	393216
	.quad	11796480
	.zero	16
	.byte	2
	.zero	7
	.quad	1
	.quad	393216
	.quad	11796480
	.zero	16
	.byte	3
	.zero	7
	.quad	0
	.quad	10
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	6
	.zero	7
	.quad	1
	.quad	393216
	.zero	24
	.byte	7
	.zero	7
	.quad	0
	.quad	10
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	10
	.zero	24
	.byte	8
	.zero	7
	.quad	1
	.quad	0
	.zero	24
	.byte	9
	.zero	7
	.quad	0
	.quad	0
	.zero	24
	.byte	10
	.zero	7
	.quad	0
	.quad	0
	.zero	24
	.byte	10
	.zero	7
	.quad	1
	.quad	0
	.zero	24
	.byte	3
	.zero	7
	.quad	1
	.quad	42
	.quad	0
	.zero	16
	.byte	3
	.zero	7
	.quad	1
	.quad	42
	.quad	0
	.zero	16
	.byte	3
	.zero	7
	.quad	1
	.quad	35
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	6
	.zero	7
	.quad	1
	.quad	393216
	.zero	24
	.byte	7
	.zero	7
	.quad	0
	.quad	52
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	10
	.zero	24
	.byte	8
	.zero	7
	.quad	1
	.quad	42
	.zero	24
	.byte	9
	.zero	7
	.quad	0
	.quad	0
	.zero	24
	.byte	10
	.zero	7
	.quad	0
	.quad	0
	.zero	24
	.byte	10
	.zero	7
	.quad	1
	.quad	0
	.zero	24
	.byte	4
	.zero	7
	.quad	0
	.quad	10
	.quad	50000000
	.byte	0
	.zero	15
	.byte	9
	.zero	7
	.quad	0
	.quad	10
	.zero	24
	.byte	10
	.zero	7
	.quad	0
	.quad	10
	.zero	24
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	6
	.zero	7
	.quad	1
	.quad	393216
	.zero	24
	.byte	4
	.zero	7
	.quad	1
	.quad	42
	.quad	50000000
	.byte	0
	.zero	15
	.byte	9
	.zero	7
	.quad	0
	.quad	52
	.zero	24
	.byte	10
	.zero	7
	.quad	1
	.quad	42
	.zero	24
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	6
	.zero	7
	.quad	1
	.quad	393216
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	15
	.zero	7
	.quad	0
	.quad	1000000000
	.zero	24
	.byte	3
	.zero	7
	.quad	0
	.quad	393216
	.quad	0
	.zero	16
	.byte	7
	.zero	7
	.quad	0
	.quad	393258
	.zero	24
	.byte	8
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	8
	.zero	7
	.quad	1
	.quad	42
	.zero	24
	.byte	5
	.zero	7
	.quad	0
	.quad	1048576
	.zero	24
	.byte	6
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	4
	.zero	7
	.quad	0
	.quad	393206
	.quad	50000000
	.byte	0
	.zero	15
	.byte	6
	.zero	7
	.quad	0
	.quad	786432
	.zero	24
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	12
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	5
	.zero	7
	.quad	0
	.quad	1441834
	.zero	24
	.byte	9
	.zero	7
	.quad	0
	.quad	393258
	.zero	24
	.byte	10
	.zero	7
	.quad	0
	.quad	393216
	.zero	24
	.byte	10
	.zero	7
	.quad	1
	.quad	42
	.zero	24
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	1
	.quad	1
	.zero	16
	.byte	11
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	1
	.quad	0
	.quad	0
	.zero	16
	.byte	3
	.zero	7
	.quad	0
	.quad	786433
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	3
	.quad	0
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	3
	.quad	1
	.zero	16
	.byte	14
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	3
	.zero	7
	.quad	0
	.quad	2097152
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	3
	.quad	0
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	3
	.quad	1
	.zero	16
	.byte	13
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.byte	0
	.zero	47
	.section	.data.rel.local,"aw"
	.align 16
	.type	rx_scripts, @object
	.size	rx_scripts, 16
rx_scripts:
	.quad	rx_script_1
	.quad	rx_script_2
	.section	.rodata
	.align 8
.LC33:
	.string	"ossl_quic_rxfc_init(&conn_rxfc, 0, op->arg0, op->arg1, fake_now, NULL)"
.LC34:
	.string	"OSSL_NELEM(stream_rxfc)"
.LC35:
	.string	"op->stream_idx"
.LC36:
	.string	"conn_init_done"
	.align 8
.LC37:
	.string	"ossl_quic_rxfc_init(&stream_rxfc[op->stream_idx], &conn_rxfc, op->arg0, op->arg1, fake_now, NULL)"
	.align 8
.LC38:
	.string	"conn_init_done && op->stream_idx < OSSL_NELEM(stream_rxfc) && stream_init_done[op->stream_idx]"
	.align 8
.LC39:
	.string	"ossl_quic_rxfc_on_rx_stream_frame(&stream_rxfc[op->stream_idx], op->arg0, (int)op->arg1)"
.LC40:
	.string	"!op->expect_fail"
	.align 8
.LC41:
	.string	"ossl_quic_rxfc_on_retire(&stream_rxfc[op->stream_idx], op->arg0, ossl_ticks2time(op->arg1))"
.LC42:
	.string	"op->arg0"
	.align 8
.LC43:
	.string	"ossl_quic_rxfc_get_cwm(&conn_rxfc)"
	.align 8
.LC44:
	.string	"op->stream_idx < OSSL_NELEM(stream_rxfc) && stream_init_done[op->stream_idx]"
	.align 8
.LC45:
	.string	"ossl_quic_rxfc_get_cwm(&stream_rxfc[op->stream_idx])"
	.align 8
.LC46:
	.string	"ossl_quic_rxfc_get_swm(&conn_rxfc)"
	.align 8
.LC47:
	.string	"ossl_quic_rxfc_get_swm(&stream_rxfc[op->stream_idx])"
	.align 8
.LC48:
	.string	"ossl_quic_rxfc_get_rwm(&conn_rxfc)"
	.align 8
.LC49:
	.string	"ossl_quic_rxfc_get_rwm(&stream_rxfc[op->stream_idx])"
.LC50:
	.string	"(int)op->arg0"
	.align 8
.LC51:
	.string	"ossl_quic_rxfc_has_cwm_changed(&conn_rxfc, (int)op->arg1)"
	.align 8
.LC52:
	.string	"ossl_quic_rxfc_has_cwm_changed(&stream_rxfc[op->stream_idx], (int)op->arg1)"
	.align 8
.LC53:
	.string	"ossl_quic_rxfc_get_error(&conn_rxfc, (int)op->arg1)"
	.align 8
.LC54:
	.string	"ossl_quic_rxfc_get_error(&stream_rxfc[op->stream_idx], (int)op->arg1)"
.LC55:
	.string	"# %s\n"
	.text
	.type	run_rxfc_script, @function
run_rxfc_script:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)
	movl	$0, -20(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-144(%rbp), %rdx
	movl	$0, %eax
	movl	$12, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-432(%rbp), %rdx
	movl	$0, %eax
	movl	$36, %ecx
	movq	%rdx, %rdi
	rep stosq
	movw	$0, -435(%rbp)
	movb	$0, -433(%rbp)
	movl	$0, -36(%rbp)
	call	ossl_time_zero
	movq	%rax, cur_time(%rip)
	jmp	.L135
.L197:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$16, %eax
	je	.L136
	cmpl	$16, %eax
	jg	.L199
	cmpl	$15, %eax
	je	.L138
	cmpl	$15, %eax
	jg	.L199
	cmpl	$14, %eax
	je	.L139
	cmpl	$14, %eax
	jg	.L199
	cmpl	$13, %eax
	je	.L140
	cmpl	$13, %eax
	jg	.L199
	cmpl	$12, %eax
	je	.L141
	cmpl	$12, %eax
	jg	.L199
	cmpl	$11, %eax
	je	.L142
	cmpl	$11, %eax
	jg	.L199
	cmpl	$10, %eax
	je	.L143
	cmpl	$10, %eax
	jg	.L199
	cmpl	$9, %eax
	je	.L144
	cmpl	$9, %eax
	jg	.L199
	cmpl	$8, %eax
	je	.L145
	cmpl	$8, %eax
	jg	.L199
	cmpl	$7, %eax
	je	.L146
	cmpl	$7, %eax
	jg	.L199
	cmpl	$6, %eax
	je	.L147
	cmpl	$6, %eax
	jg	.L199
	cmpl	$5, %eax
	je	.L148
	cmpl	$5, %eax
	jg	.L199
	cmpl	$4, %eax
	je	.L149
	cmpl	$4, %eax
	jg	.L199
	cmpl	$3, %eax
	je	.L150
	cmpl	$3, %eax
	jg	.L199
	cmpl	$1, %eax
	je	.L151
	cmpl	$2, %eax
	je	.L152
	jmp	.L199
.L151:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	fake_now(%rip), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$492, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L200
	movl	$1, -36(%rbp)
	jmp	.L155
.L152:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$501, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L201
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$502, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rdi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdi
	leaq	fake_now(%rip), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L202
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movb	$1, -435(%rbp,%rax)
	jmp	.L155
.L150:
	cmpl	$0, -36(%rbp)
	je	.L159
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L159
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L159
	movl	$1, %ecx
	jmp	.L160
.L159:
	movl	$0, %ecx
.L160:
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$515, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L203
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	movl	%edi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_rx_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$519, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L204
	jmp	.L154
.L149:
	cmpl	$0, -36(%rbp)
	je	.L163
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L163
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L163
	movl	$1, %ecx
	jmp	.L164
.L163:
	movl	$0, %ecx
.L164:
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$527, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rdi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	movl	%eax, %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$531, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L206
	jmp	.L154
.L148:
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$539, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$541, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L208
	jmp	.L154
.L147:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L169
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L169
	movl	$1, %ecx
	jmp	.L170
.L169:
	movl	$0, %ecx
.L170:
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$546, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L209
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$549, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L210
	jmp	.L154
.L146:
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$554, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L211
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$556, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L212
	jmp	.L154
.L145:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L175
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L175
	movl	$1, %ecx
	jmp	.L176
.L175:
	movl	$0, %ecx
.L176:
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$561, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L213
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_swm@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$564, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L214
	jmp	.L154
.L144:
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$569, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L215
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_rwm@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$571, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L216
	jmp	.L154
.L143:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L181
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L181
	movl	$1, %ecx
	jmp	.L182
.L181:
	movl	$0, %ecx
.L182:
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$576, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L217
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_rwm@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$579, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L218
	jmp	.L154
.L142:
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$584, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L219
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$586, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L220
	jmp	.L154
.L141:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L187
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L187
	movl	$1, %ecx
	jmp	.L188
.L187:
	movl	$0, %ecx
.L188:
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$592, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L221
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$595, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L222
	jmp	.L154
.L140:
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$601, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L223
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_error@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$603, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L224
	jmp	.L154
.L139:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$2, %rax
	ja	.L193
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-435(%rbp,%rax), %eax
	testb	%al, %al
	je	.L193
	movl	$1, %ecx
	jmp	.L194
.L193:
	movl	$0, %ecx
.L194:
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$609, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L225
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-432(%rbp), %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_error@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$612, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L226
	jmp	.L154
.L138:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	cur_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, cur_time(%rip)
	jmp	.L155
.L136:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L155
.L204:
	nop
	jmp	.L155
.L206:
	nop
	jmp	.L155
.L208:
	nop
	jmp	.L155
.L210:
	nop
	jmp	.L155
.L212:
	nop
	jmp	.L155
.L214:
	nop
	jmp	.L155
.L216:
	nop
	jmp	.L155
.L218:
	nop
	jmp	.L155
.L220:
	nop
	jmp	.L155
.L222:
	nop
	jmp	.L155
.L224:
	nop
	jmp	.L155
.L226:
	nop
.L155:
	addq	$48, -32(%rbp)
.L135:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L197
	movl	$1, -20(%rbp)
	jmp	.L154
.L199:
	nop
	jmp	.L154
.L200:
	nop
	jmp	.L154
.L201:
	nop
	jmp	.L154
.L202:
	nop
	jmp	.L154
.L203:
	nop
	jmp	.L154
.L205:
	nop
	jmp	.L154
.L207:
	nop
	jmp	.L154
.L209:
	nop
	jmp	.L154
.L211:
	nop
	jmp	.L154
.L213:
	nop
	jmp	.L154
.L215:
	nop
	jmp	.L154
.L217:
	nop
	jmp	.L154
.L219:
	nop
	jmp	.L154
.L221:
	nop
	jmp	.L154
.L223:
	nop
	jmp	.L154
.L225:
	nop
.L154:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	run_rxfc_script, .-run_rxfc_script
	.type	test_rxfc, @function
test_rxfc:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rx_scripts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	run_rxfc_script
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_rxfc, .-test_rxfc
	.section	.rodata
.LC56:
	.string	"test_txfc"
.LC57:
	.string	"test_rxfc"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_txfc(%rip), %rsi
	leaq	.LC56(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rxfc(%rip), %rsi
	leaq	.LC57(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

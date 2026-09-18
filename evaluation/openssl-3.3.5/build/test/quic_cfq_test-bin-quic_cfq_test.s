	.file	"quic_cfq_test.c"
	.text
	.section	.rodata
	.align 8
	.type	ref_buf, @object
	.size	ref_buf, 10
ref_buf:
	.base64	"EBESExQVFhcYGQ=="
	.align 32
	.type	ref_priority, @object
	.size	ref_priority, 40
ref_priority:
	.long	90
	.long	80
	.long	70
	.long	60
	.long	95
	.long	40
	.long	94
	.long	20
	.long	10
	.long	0
	.align 32
	.type	ref_pn_space, @object
	.size	ref_pn_space, 40
ref_pn_space:
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.align 32
	.type	ref_frame_type, @object
	.size	ref_frame_type, 80
ref_frame_type:
	.quad	24
	.quad	24
	.quad	24
	.quad	24
	.quad	24
	.quad	24
	.quad	24
	.quad	24
	.quad	24
	.quad	25
	.align 32
	.type	expect, @object
	.size	expect, 132
expect:
	.long	4
	.long	6
	.long	0
	.long	3
	.long	5
	.long	7
	.long	-1
	.zero	16
	.long	1
	.long	2
	.long	-1
	.zero	32
	.long	8
	.long	9
	.long	-1
	.zero	32
	.local	items
	.comm	items,240,32
	.local	g_free
	.comm	g_free,8,8
	.local	g_free_len
	.comm	g_free_len,8,8
	.text
	.type	free_cb, @function
free_cb:
.LFB579:
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
	movq	%rax, g_free(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, g_free_len(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	free_cb, .-free_cb
	.section	.rodata
.LC0:
	.string	"item"
.LC1:
	.string	"../test/quic_cfq_test.c"
.LC2:
	.string	"ref_buf + expect[pn_space][i]"
	.align 8
.LC3:
	.string	"ossl_quic_cfq_item_get_encoded(item)"
.LC4:
	.string	"pn_space"
	.align 8
.LC5:
	.string	"ossl_quic_cfq_item_get_pn_space(item)"
.LC6:
	.string	"QUIC_CFQ_STATE_NEW"
	.align 8
.LC7:
	.string	"ossl_quic_cfq_item_get_state(item)"
	.text
	.type	check, @function
check:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L3
.L11:
	movq	$0, -40(%rbp)
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, -32(%rbp)
.L10:
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	expect(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	jne	.L4
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$78, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L13
	jmp	.L6
.L4:
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rcx
	leaq	items(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$86, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	expect(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	leaq	ref_buf(%rip), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_encoded@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L14
	movl	-44(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_pn_space@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_state@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L14
	addq	$1, -40(%rbp)
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_priority_next@PLT
	movq	%rax, -32(%rbp)
	jmp	.L10
.L13:
	nop
	addl	$1, -44(%rbp)
.L3:
	cmpl	$2, -44(%rbp)
	jbe	.L11
	movl	$1, -20(%rbp)
	jmp	.L6
.L14:
	nop
.L6:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	check, .-check
	.section	.rodata
.LC8:
	.string	"cfq = ossl_quic_cfq_new()"
	.align 8
.LC9:
	.string	"item = ossl_quic_cfq_add_frame(cfq, ref_priority[i], ref_pn_space[i], ref_frame_type[i], 0, ref_buf + i, 1, free_cb, NULL)"
.LC10:
	.string	"ref_pn_space[i]"
.LC11:
	.string	"ref_frame_type[i]"
	.align 8
.LC12:
	.string	"ossl_quic_cfq_item_get_frame_type(item)"
.LC13:
	.string	"ref_buf + i"
.LC14:
	.string	"1"
	.align 8
.LC15:
	.string	"ossl_quic_cfq_item_get_encoded_len(item)"
	.align 8
.LC16:
	.string	"ossl_quic_cfq_get_priority_head(cfq, pn_space)"
	.text
	.type	test_cfq, @function
test_cfq:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -56(%rbp)
	call	ossl_quic_cfq_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$108, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	$0, g_free(%rip)
	movq	$0, g_free_len(%rip)
	movq	$0, -40(%rbp)
	jmp	.L18
.L21:
	leaq	ref_buf(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ref_frame_type(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	ref_pn_space(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rsi
	leaq	ref_priority(%rip), %rax
	movl	(%rsi,%rax), %esi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	free_cb(%rip), %rdi
	pushq	%rdi
	pushq	$1
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_quic_cfq_add_frame@PLT
	addq	$32, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_state@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	ref_pn_space(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_pn_space@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ref_frame_type(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_frame_type@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$126, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	ref_buf(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_encoded@PLT
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$128, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_encoded_len@PLT
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L46
	addq	$1, -40(%rbp)
.L18:
	cmpq	$9, -40(%rbp)
	jbe	.L21
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	check
	testl	%eax, %eax
	je	.L47
	movl	$0, -44(%rbp)
	jmp	.L23
.L26:
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, -32(%rbp)
	jmp	.L24
.L25:
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_get_priority_next@PLT
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_mark_tx@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
.L24:
	cmpq	$0, -32(%rbp)
	jne	.L25
	addl	$1, -44(%rbp)
.L23:
	cmpl	$2, -44(%rbp)
	jbe	.L26
	movl	$0, -44(%rbp)
	jmp	.L27
.L29:
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L48
	addl	$1, -44(%rbp)
.L27:
	cmpl	$2, -44(%rbp)
	jbe	.L29
	movl	$0, -44(%rbp)
	jmp	.L30
.L34:
	movq	$0, -40(%rbp)
	jmp	.L31
.L33:
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	items(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L32
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	items(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_mark_lost@PLT
.L32:
	addq	$1, -40(%rbp)
.L31:
	cmpq	$9, -40(%rbp)
	jbe	.L33
	addl	$1, -44(%rbp)
.L30:
	cmpl	$2, -44(%rbp)
	jbe	.L34
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	check
	testl	%eax, %eax
	je	.L49
	movl	$0, -44(%rbp)
	jmp	.L36
.L40:
	movq	$0, -40(%rbp)
	jmp	.L37
.L39:
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	items(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L38
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	items(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_release@PLT
.L38:
	addq	$1, -40(%rbp)
.L37:
	cmpq	$9, -40(%rbp)
	jbe	.L39
	addl	$1, -44(%rbp)
.L36:
	cmpl	$2, -44(%rbp)
	jbe	.L40
	movl	$0, -44(%rbp)
	jmp	.L41
.L43:
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_get_priority_head@PLT
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L50
	addl	$1, -44(%rbp)
.L41:
	cmpl	$2, -44(%rbp)
	jbe	.L43
	movl	$1, -20(%rbp)
	jmp	.L17
.L45:
	nop
	jmp	.L17
.L46:
	nop
	jmp	.L17
.L47:
	nop
	jmp	.L17
.L48:
	nop
	jmp	.L17
.L49:
	nop
	jmp	.L17
.L50:
	nop
.L17:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	test_cfq, .-test_cfq
	.section	.rodata
.LC17:
	.string	"test_cfq"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_cfq(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

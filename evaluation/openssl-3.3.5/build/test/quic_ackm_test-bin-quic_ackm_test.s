	.file	"quic_ackm_test.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB499:
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
.LFE499:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB508:
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
.LFE508:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB510:
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
.LFE510:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB511:
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
.LFE511:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB516:
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
	cmpq	%rax, %rdx
	jnb	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L16
	movl	$-1, %eax
	jmp	.L15
.L16:
	movl	$0, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_infinite
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	ossl_time_add, @function
ossl_time_add:
.LFB519:
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
	je	.L22
	call	ossl_time_infinite
	jmp	.L24
.L22:
	movq	-8(%rbp), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_time_add, .-ossl_time_add
	.local	fake_time
	.comm	fake_time,8,8
	.type	fake_now, @function
fake_now:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	fake_time(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	fake_now, .-fake_now
	.type	on_lost, @function
on_lost:
.LFB580:
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
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	on_lost, .-on_lost
	.type	on_acked, @function
on_acked:
.LFB581:
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
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	on_acked, .-on_acked
	.type	on_discarded, @function
on_discarded:
.LFB582:
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
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	on_discarded, .-on_discarded
	.section	.rodata
.LC0:
	.string	"../test/quic_ackm_test.c"
	.text
	.type	helper_destroy, @function
helper_destroy:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L31:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
.L32:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_statm_destroy@PLT
	movq	-24(%rbp), %rax
	movl	$0, 72(%rax)
.L33:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	$0, -8(%rbp)
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	$0, (%rax)
	addq	$1, -8(%rbp)
.L35:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$81, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	helper_destroy, .-helper_destroy
	.section	.rodata
.LC1:
	.string	"1"
.LC2:
	.string	"ossl_statm_init(&h->statm)"
.LC3:
	.string	"h->ccdata"
.LC4:
	.string	"h->ackm"
.LC5:
	.string	"h->pkts"
	.text
	.type	helper_init, @function
helper_init:
.LFB584:
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
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movabsq	$123000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, fake_time(%rip)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_statm_init@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
	movq	-24(%rbp), %rax
	movl	$1, 72(%rax)
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	fake_now(%rip), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ackm_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$115, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L44
	jmp	.L40
.L43:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L44:
	movl	$1, -4(%rbp)
	jmp	.L40
.L47:
	nop
	jmp	.L40
.L48:
	nop
	jmp	.L40
.L49:
	nop
.L40:
	cmpl	$0, -4(%rbp)
	jne	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	helper_destroy
.L45:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	helper_init, .-helper_init
	.section	.rodata
	.align 32
	.type	linear_20, @object
	.size	linear_20, 160
linear_20:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.quad	8
	.quad	9
	.quad	10
	.quad	11
	.quad	12
	.quad	13
	.quad	14
	.quad	15
	.quad	16
	.quad	17
	.quad	18
	.quad	19
	.align 32
	.type	high_linear_20, @object
	.size	high_linear_20, 160
high_linear_20:
	.quad	1000
	.quad	1001
	.quad	1002
	.quad	1003
	.quad	1004
	.quad	1005
	.quad	1006
	.quad	1007
	.quad	1008
	.quad	1009
	.quad	1010
	.quad	1011
	.quad	1012
	.quad	1013
	.quad	1014
	.quad	1015
	.quad	1016
	.quad	1017
	.quad	1018
	.quad	1019
	.align 16
	.type	tx_ack_range_1, @object
	.size	tx_ack_range_1, 16
tx_ack_range_1:
	.quad	0
	.quad	10
	.align 16
	.type	tx_ack_expect_1, @object
	.size	tx_ack_expect_1, 20
tx_ack_expect_1:
	.base64	"AQEBAQEBAQEBAQEAAAAAAAAAAAA="
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	tx_ack_case_1, @object
	.size	tx_ack_case_1, 40
tx_ack_case_1:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_1
	.quad	1
	.quad	tx_ack_expect_1
	.section	.rodata
	.align 32
	.type	tx_ack_range_2, @object
	.size	tx_ack_range_2, 32
tx_ack_range_2:
	.quad	5
	.quad	10
	.quad	0
	.quad	5
	.align 16
	.type	tx_ack_expect_2, @object
	.size	tx_ack_expect_2, 20
tx_ack_expect_2:
	.base64	"AQEBAQEBAQEBAQEAAAAAAAAAAAA="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_2, @object
	.size	tx_ack_case_2, 40
tx_ack_case_2:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_2
	.quad	2
	.quad	tx_ack_expect_2
	.section	.rodata
	.align 32
	.type	tx_ack_range_3, @object
	.size	tx_ack_range_3, 32
tx_ack_range_3:
	.quad	6
	.quad	10
	.quad	0
	.quad	5
	.align 16
	.type	tx_ack_expect_3, @object
	.size	tx_ack_expect_3, 20
tx_ack_expect_3:
	.base64	"AQEBAQEBAQEBAQEAAAAAAAAAAAA="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_3, @object
	.size	tx_ack_case_3, 40
tx_ack_case_3:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_3
	.quad	2
	.quad	tx_ack_expect_3
	.section	.rodata
	.align 32
	.type	tx_ack_range_4, @object
	.size	tx_ack_range_4, 32
tx_ack_range_4:
	.quad	7
	.quad	10
	.quad	0
	.quad	5
	.align 16
	.type	tx_ack_expect_4, @object
	.size	tx_ack_expect_4, 20
tx_ack_expect_4:
	.base64	"AQEBAQEBAgEBAQEAAAAAAAAAAAA="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_4, @object
	.size	tx_ack_case_4, 40
tx_ack_case_4:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_4
	.quad	2
	.quad	tx_ack_expect_4
	.section	.rodata
	.align 32
	.type	tx_ack_range_5, @object
	.size	tx_ack_range_5, 32
tx_ack_range_5:
	.quad	7
	.quad	10
	.quad	0
	.quad	4
	.align 16
	.type	tx_ack_expect_5, @object
	.size	tx_ack_expect_5, 20
tx_ack_expect_5:
	.base64	"AQEBAQECAgEBAQEAAAAAAAAAAAA="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_5, @object
	.size	tx_ack_case_5, 40
tx_ack_case_5:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_5
	.quad	2
	.quad	tx_ack_expect_5
	.section	.rodata
	.align 16
	.type	tx_ack_range_6, @object
	.size	tx_ack_range_6, 16
tx_ack_range_6:
	.quad	0
	.quad	20
	.align 16
	.type	tx_ack_expect_6, @object
	.size	tx_ack_expect_6, 20
tx_ack_expect_6:
	.base64	"AQEBAQEBAQEBAQEBAQEBAQEBAQE="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_6, @object
	.size	tx_ack_case_6, 40
tx_ack_case_6:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_6
	.quad	1
	.quad	tx_ack_expect_6
	.section	.rodata
	.align 16
	.type	tx_ack_range_7, @object
	.size	tx_ack_range_7, 16
tx_ack_range_7:
	.quad	0
	.quad	30
	.align 16
	.type	tx_ack_expect_7, @object
	.size	tx_ack_expect_7, 20
tx_ack_expect_7:
	.base64	"AQEBAQEBAQEBAQEBAQEBAQEBAQE="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_7, @object
	.size	tx_ack_case_7, 40
tx_ack_case_7:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_7
	.quad	1
	.quad	tx_ack_expect_7
	.section	.rodata
	.align 16
	.type	tx_ack_range_8, @object
	.size	tx_ack_range_8, 16
tx_ack_range_8:
	.quad	21
	.quad	30
	.align 16
	.type	tx_ack_expect_8, @object
	.size	tx_ack_expect_8, 20
tx_ack_expect_8:
	.zero	20
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_8, @object
	.size	tx_ack_case_8, 40
tx_ack_case_8:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_8
	.quad	1
	.quad	tx_ack_expect_8
	.section	.rodata
	.align 16
	.type	tx_ack_range_9, @object
	.size	tx_ack_range_9, 16
tx_ack_range_9:
	.quad	0
	.quad	999
	.align 16
	.type	tx_ack_expect_9, @object
	.size	tx_ack_expect_9, 20
tx_ack_expect_9:
	.zero	20
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_9, @object
	.size	tx_ack_case_9, 40
tx_ack_case_9:
	.quad	high_linear_20
	.quad	20
	.quad	tx_ack_range_9
	.quad	1
	.quad	tx_ack_expect_9
	.section	.rodata
	.align 16
	.type	tx_ack_range_10, @object
	.size	tx_ack_range_10, 16
tx_ack_range_10:
	.zero	16
	.align 16
	.type	tx_ack_expect_10, @object
	.size	tx_ack_expect_10, 20
tx_ack_expect_10:
	.string	"\001"
	.zero	18
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_10, @object
	.size	tx_ack_case_10, 40
tx_ack_case_10:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_10
	.quad	1
	.quad	tx_ack_expect_10
	.section	.rodata
	.align 16
	.type	tx_ack_range_11, @object
	.size	tx_ack_range_11, 16
tx_ack_range_11:
	.quad	3
	.quad	3
	.align 16
	.type	tx_ack_expect_11, @object
	.size	tx_ack_expect_11, 20
tx_ack_expect_11:
	.base64	"AgAAAQAAAAAAAAAAAAAAAAAAAAA="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_11, @object
	.size	tx_ack_case_11, 40
tx_ack_case_11:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_11
	.quad	1
	.quad	tx_ack_expect_11
	.section	.rodata
	.align 16
	.type	tx_ack_range_12, @object
	.size	tx_ack_range_12, 16
tx_ack_range_12:
	.quad	19
	.quad	19
	.align 16
	.type	tx_ack_expect_12, @object
	.size	tx_ack_expect_12, 20
tx_ack_expect_12:
	.base64	"AgICAgICAgICAgICAgICAgIAAAE="
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_12, @object
	.size	tx_ack_case_12, 40
tx_ack_case_12:
	.quad	linear_20
	.quad	20
	.quad	tx_ack_range_12
	.quad	1
	.quad	tx_ack_expect_12
	.section	.rodata
	.align 32
	.type	tx_ack_range_13, @object
	.size	tx_ack_range_13, 48
tx_ack_range_13:
	.quad	1008
	.quad	1008
	.quad	1004
	.quad	1005
	.quad	1001
	.quad	1002
	.align 16
	.type	tx_ack_expect_13, @object
	.size	tx_ack_expect_13, 21
tx_ack_expect_13:
	.base64	"AgEBAgEBAAABAAAAAAAAAAAAAAAA"
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_case_13, @object
	.size	tx_ack_case_13, 40
tx_ack_case_13:
	.quad	high_linear_20
	.quad	20
	.quad	tx_ack_range_13
	.quad	3
	.quad	tx_ack_expect_13
	.align 32
	.type	tx_ack_cases, @object
	.size	tx_ack_cases, 104
tx_ack_cases:
	.quad	tx_ack_case_1
	.quad	tx_ack_case_2
	.quad	tx_ack_case_3
	.quad	tx_ack_case_4
	.quad	tx_ack_case_5
	.quad	tx_ack_case_6
	.quad	tx_ack_case_7
	.quad	tx_ack_case_8
	.quad	tx_ack_case_9
	.quad	tx_ack_case_10
	.quad	tx_ack_case_11
	.quad	tx_ack_case_12
	.quad	tx_ack_case_13
	.section	.rodata
.LC6:
	.string	"anti_deadlock_handshake"
.LC7:
	.string	"p->anti_deadlock_handshake"
.LC8:
	.string	"anti_deadlock_initial"
.LC9:
	.string	"p->anti_deadlock_initial"
.LC10:
	.string	"pto_initial"
.LC11:
	.string	"p->pto[QUIC_PN_SPACE_INITIAL]"
.LC12:
	.string	"pto_handshake"
	.align 8
.LC13:
	.string	"p->pto[QUIC_PN_SPACE_HANDSHAKE]"
.LC14:
	.string	"pto_app"
.LC15:
	.string	"p->pto[QUIC_PN_SPACE_APP]"
	.text
	.type	test_probe_counts, @function
test_probe_counts:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movl	-12(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	-16(%rbp), %edi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$321, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L52
.L53:
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movl	-20(%rbp), %edi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$323, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L52
.L54:
	movq	-8(%rbp), %rax
	movl	12(%rax), %esi
	movl	-24(%rbp), %edi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$325, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L52
.L55:
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	movl	-28(%rbp), %edi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$327, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L52
.L56:
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	test_probe_counts, .-test_probe_counts
	.type	on_loss_detection_deadline_callback, @function
on_loss_detection_deadline_callback:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	on_loss_detection_deadline_callback, .-on_loss_detection_deadline_callback
	.section	.rodata
.LC16:
	.string	"skipping test for app space"
	.align 8
.LC17:
	.string	"helper_init(&h, c->pn_table_len)"
.LC18:
	.string	"tx"
	.align 8
.LC19:
	.string	"ossl_ackm_on_tx_packet(h.ackm, tx)"
	.align 8
.LC20:
	.string	"ossl_ackm_on_pkt_space_discarded(h.ackm, space)"
.LC21:
	.string	"0"
.LC22:
	.string	"h.pkts[i].acked"
.LC23:
	.string	"h.pkts[i].lost"
.LC24:
	.string	"h.pkts[i].discarded"
	.align 8
.LC25:
	.string	"ossl_ackm_on_rx_ack_frame(h.ackm, &ack, space, fake_time)"
	.align 8
.LC26:
	.string	"(c->expect_ack[i] & 1) != 0 ? 1 : 0"
	.align 8
.LC27:
	.string	"(c->expect_ack[i] & 2) != 0 ? 1 : 0"
	.align 8
.LC28:
	.string	"(c->expect_ack[i] & 4) != 0 ? 1 : 0"
	.align 8
.LC29:
	.string	"ossl_time_compare(deadline, loss_detection_deadline)"
	.align 8
.LC30:
	.string	"ossl_time_compare(deadline, fake_time)"
	.align 8
.LC31:
	.string	"test_probe_counts(&probe, 0, 0, 0, 0, 0)"
	.align 8
.LC32:
	.string	"ossl_ackm_on_handshake_confirmed(h.ackm)"
.LC33:
	.string	"ossl_ackm_on_timeout(h.ackm)"
	.align 8
.LC34:
	.string	"test_probe_counts(&probe, 0, 0, space == QUIC_PN_SPACE_INITIAL, space == QUIC_PN_SPACE_HANDSHAKE, space == QUIC_PN_SPACE_APP)"
	.text
	.type	test_tx_ack_case_actual, @function
test_tx_ack_case_actual:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	$0, -4(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tx_ack_cases(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -144(%rbp)
	movq	%xmm0, -128(%rbp)
	call	ossl_time_zero
	movq	%rax, -184(%rbp)
	cmpl	$1, -236(%rbp)
	jne	.L59
	cmpl	$2, -232(%rbp)
	jne	.L59
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	$1, %eax
	jmp	.L94
.L59:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_init
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L95
	movq	-112(%rbp), %rax
	leaq	-184(%rbp), %rdx
	leaq	on_loss_detection_deadline_callback(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_set_loss_detection_deadline_callback@PLT
	movq	$0, -16(%rbp)
	jmp	.L63
.L66:
	leaq	.LC0(%rip), %rax
	movl	$363, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$364, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L96
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-232(%rbp), %eax
	andl	$3, %eax
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	32(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$8, %edx
	movb	%dl, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$123, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-32(%rbp), %rax
	leaq	on_lost(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	on_acked(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	leaq	on_discarded(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-32(%rbp), %rax
	movq	fake_time(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_tx_packet@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$380, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	addq	$1, -16(%rbp)
.L63:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L66
	cmpl	$1, -236(%rbp)
	jne	.L67
	movq	-112(%rbp), %rax
	movl	-232(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_on_pkt_space_discarded@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$386, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L98
	movq	$0, -16(%rbp)
	jmp	.L69
.L73:
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	12(%rax), %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$391, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L99
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	8(%rax), %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$393, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L100
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$395, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	addq	$1, -16(%rbp)
.L69:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L73
	jmp	.L74
.L67:
	cmpl	$0, -236(%rbp)
	jne	.L75
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movq	fake_time(%rip), %rcx
	movl	-232(%rbp), %edx
	leaq	-176(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_ack_frame@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$402, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L102
	movq	$0, -16(%rbp)
	jmp	.L77
.L81:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	12(%rax), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L103
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	sarl	%eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	8(%rax), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$410, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L104
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$413, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L105
	addq	$1, -16(%rbp)
.L77:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L81
	jmp	.L74
.L75:
	cmpl	$2, -236(%rbp)
	jne	.L106
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get_loss_detection_deadline@PLT
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$421, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L107
	movq	fake_time(%rip), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L108
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movl	16(%rcx), %eax
	movl	%eax, -208(%rbp)
	leaq	-224(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_probe_counts
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$430, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	cmpl	$2, -232(%rbp)
	jne	.L87
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_on_handshake_confirmed@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$438, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L110
.L87:
	movl	$1, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_time(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_on_timeout@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$444, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L111
	movq	$0, -16(%rbp)
	jmp	.L89
.L93:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movl	16(%rcx), %eax
	movl	%eax, -208(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L90
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L90:
	cmpq	$2, -16(%rbp)
	jne	.L91
	leaq	-224(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_probe_counts
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$454, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L92
	jmp	.L62
.L91:
	cmpl	$2, -232(%rbp)
	sete	%al
	movzbl	%al, %esi
	cmpl	$1, -232(%rbp)
	sete	%al
	movzbl	%al, %ecx
	cmpl	$0, -232(%rbp)
	sete	%al
	movzbl	%al, %edx
	leaq	-224(%rbp), %rax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_probe_counts
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$457, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L112
.L92:
	addq	$1, -16(%rbp)
.L89:
	cmpq	$2, -16(%rbp)
	jbe	.L93
.L74:
	movl	$1, -4(%rbp)
	jmp	.L62
.L95:
	nop
	jmp	.L62
.L96:
	nop
	jmp	.L62
.L97:
	nop
	jmp	.L62
.L98:
	nop
	jmp	.L62
.L99:
	nop
	jmp	.L62
.L100:
	nop
	jmp	.L62
.L101:
	nop
	jmp	.L62
.L102:
	nop
	jmp	.L62
.L103:
	nop
	jmp	.L62
.L104:
	nop
	jmp	.L62
.L105:
	nop
	jmp	.L62
.L106:
	nop
	jmp	.L62
.L107:
	nop
	jmp	.L62
.L108:
	nop
	jmp	.L62
.L109:
	nop
	jmp	.L62
.L110:
	nop
	jmp	.L62
.L111:
	nop
	jmp	.L62
.L112:
	nop
.L62:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	helper_destroy
	movl	-4(%rbp), %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	test_tx_ack_case_actual, .-test_tx_ack_case_actual
	.section	.rodata
	.type	tx_ack_time_script_1_expect, @object
	.size	tx_ack_time_script_1_expect, 2
tx_ack_time_script_1_expect:
	.ascii	"\002\001"
	.section	.data.rel.ro.local
	.align 32
	.type	tx_ack_time_script_1, @object
	.size	tx_ack_time_script_1, 200
tx_ack_time_script_1:
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.long	1
	.zero	4
	.quad	3600000000000
	.quad	1
	.quad	1
	.quad	0
	.long	2
	.zero	4
	.quad	1000000000
	.quad	1
	.quad	1
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	tx_ack_time_script_1_expect
	.long	0
	.zero	36
	.align 8
	.type	tx_ack_time_scripts, @object
	.size	tx_ack_time_scripts, 8
tx_ack_time_scripts:
	.quad	tx_ack_time_script_1
	.section	.rodata
.LC35:
	.string	"helper_init(&h, num_pkts)"
	.align 8
.LC36:
	.string	"ossl_ackm_on_rx_ack_frame(h.ackm, &ack, QUIC_PN_SPACE_INITIAL, fake_time)"
	.align 8
.LC37:
	.string	"(s->expect[i] & 1) != 0 ? 1 : 0"
	.align 8
.LC38:
	.string	"(s->expect[i] & 2) != 0 ? 1 : 0"
	.align 8
.LC39:
	.string	"(s->expect[i] & 4) != 0 ? 1 : 0"
	.text
	.type	test_tx_ack_time_script, @function
test_tx_ack_time_script:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -176(%rbp)
	movq	%xmm0, -160(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	tx_ack_time_script_1(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L114
.L116:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L115
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -24(%rbp)
.L115:
	addq	$40, -40(%rbp)
.L114:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L116
	movq	-24(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_init
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$533, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L138
	movq	$0, -16(%rbp)
	jmp	.L119
.L121:
	leaq	.LC0(%rip), %rax
	movl	$537, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$538, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L139
	addq	$1, -16(%rbp)
.L119:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L121
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L122
.L136:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L123
	cmpl	$3, %eax
	jg	.L124
	cmpl	$1, %eax
	je	.L125
	cmpl	$2, %eax
	je	.L126
	jmp	.L124
.L125:
	movq	$0, -16(%rbp)
	jmp	.L127
.L129:
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 32(%rax)
	movq	-48(%rbp), %rax
	movq	$123, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$8, %edx
	movb	%dl, 32(%rax)
	movq	-48(%rbp), %rax
	leaq	on_lost(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-48(%rbp), %rax
	leaq	on_acked(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	leaq	on_discarded(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_time(%rip)
	movq	-48(%rbp), %rax
	movq	fake_time(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-144(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_tx_packet@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$564, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L140
	addq	$1, -16(%rbp)
.L127:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L129
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -32(%rbp)
	jmp	.L124
.L126:
	leaq	-224(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$1, -200(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_time(%rip)
	movq	-144(%rbp), %rax
	movq	fake_time(%rip), %rdx
	leaq	-208(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_ack_frame@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$581, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L141
	jmp	.L118
.L123:
	movq	$0, -16(%rbp)
	jmp	.L131
.L135:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-136(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	12(%rax), %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$590, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L142
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	sarl	%eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-136(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	8(%rax), %esi
	leaq	.LC38(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$593, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L143
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	sarl	$2, %eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-136(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$596, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L144
	addq	$1, -16(%rbp)
.L131:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L135
	jmp	.L124
.L141:
	nop
.L124:
	addq	$40, -40(%rbp)
.L122:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L136
	movl	$1, -4(%rbp)
	jmp	.L118
.L138:
	nop
	jmp	.L118
.L139:
	nop
	jmp	.L118
.L140:
	nop
	jmp	.L118
.L142:
	nop
	jmp	.L118
.L143:
	nop
	jmp	.L118
.L144:
	nop
.L118:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	helper_destroy
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	test_tx_ack_time_script, .-test_tx_ack_time_script
	.section	.rodata
	.align 16
	.type	rx_ack_ranges_1a, @object
	.size	rx_ack_ranges_1a, 16
rx_ack_ranges_1a:
	.quad	0
	.quad	1
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_1, @object
	.size	rx_script_1, 896
rx_script_1:
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	3
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	2
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	2
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_1a
	.quad	1
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_1a
	.quad	1
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	2
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	60
	.section	.rodata
	.align 16
	.type	rx_ack_ranges_2a, @object
	.size	rx_ack_ranges_2a, 16
rx_ack_ranges_2a:
	.zero	16
	.align 16
	.type	rx_ack_ranges_2b, @object
	.size	rx_ack_ranges_2b, 16
rx_ack_ranges_2b:
	.quad	0
	.quad	2
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_2, @object
	.size	rx_script_2, 1664
rx_script_2:
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	8
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	3
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_2a
	.quad	1
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	2
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	1
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	3
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	3
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_2b
	.quad	1
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	2
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_2b
	.quad	1
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	3
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	3
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	60
	.section	.rodata
	.align 16
	.type	rx_ack_ranges_3a, @object
	.size	rx_ack_ranges_3a, 16
rx_ack_ranges_3a:
	.zero	16
	.align 16
	.type	rx_ack_ranges_3b, @object
	.size	rx_ack_ranges_3b, 16
rx_ack_ranges_3b:
	.quad	0
	.quad	10
	.align 16
	.type	rx_ack_ranges_3c, @object
	.size	rx_ack_ranges_3c, 16
rx_ack_ranges_3c:
	.quad	6
	.quad	10
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_3, @object
	.size	rx_script_3, 1792
rx_script_3:
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	11
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_3a
	.quad	1
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	10
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	11
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	11
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_3b
	.quad	1
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	-1
	.long	7
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_3b
	.quad	1
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_3c
	.quad	1
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	11
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	11
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	10
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_3c
	.quad	1
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	11
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	11
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	60
	.section	.rodata
	.align 16
	.type	rx_ack_ranges_4a, @object
	.size	rx_ack_ranges_4a, 16
rx_ack_ranges_4a:
	.quad	0
	.quad	1
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_4, @object
	.size	rx_script_4, 1408
rx_script_4:
	.long	8
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	3
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_2a
	.quad	1
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	2
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	1
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_4a
	.quad	1
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	rx_ack_ranges_4a
	.quad	1
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.quad	0
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	2
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.quad	2
	.quad	1
	.byte	0
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	60
	.align 32
	.type	rx_test_scripts, @object
	.size	rx_test_scripts, 32
rx_test_scripts:
	.quad	rx_script_1
	.quad	rx_script_2
	.quad	rx_script_3
	.quad	rx_script_4
	.text
	.type	on_ack_deadline_callback, @function
on_ack_deadline_callback:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	on_ack_deadline_callback, .-on_ack_deadline_callback
	.section	.rodata
.LC40:
	.string	"helper_init(&h, 0)"
.LC41:
	.string	"txs"
.LC42:
	.string	"pkts"
	.align 8
.LC43:
	.string	"ossl_ackm_is_rx_pn_processable(h.ackm, pkt.pkt_num, pkt.pkt_space)"
	.align 8
.LC44:
	.string	"ossl_ackm_on_rx_packet(h.ackm, &pkt)"
	.align 8
.LC45:
	.string	"(s->kind == RX_OPK_CHECK_PROC)"
	.align 8
.LC46:
	.string	"ossl_ackm_is_rx_pn_processable(h.ackm, s->pn + i, space)"
.LC47:
	.string	"s->expect_desired"
	.align 8
.LC48:
	.string	"ossl_ackm_is_ack_desired(h.ackm, space)"
.LC49:
	.string	"s->expect_deadline"
	.align 8
.LC50:
	.string	"!ossl_time_is_infinite(ossl_ackm_get_ack_deadline(h.ackm, space)) && !ossl_time_is_zero(ossl_ackm_get_ack_deadline(h.ackm, space))"
	.align 8
.LC51:
	.string	"ossl_time_is_infinite(ossl_ackm_get_ack_deadline(h.ackm, i))"
	.align 8
.LC52:
	.string	"ossl_time_compare(ossl_ackm_get_ack_deadline(h.ackm, i), ack_deadline[i])"
.LC53:
	.string	"ack"
.LC54:
	.string	"s->num_ack_ranges"
.LC55:
	.string	"ack->num_ack_ranges"
.LC56:
	.string	"s->ack_ranges[i].start"
.LC57:
	.string	"ack->ack_ranges[i].start"
.LC58:
	.string	"s->ack_ranges[i].end"
.LC59:
	.string	"ack->ack_ranges[i].end"
	.align 8
.LC60:
	.string	"ossl_ackm_on_rx_ack_frame(h.ackm, &rx_ack, space, fake_time)"
	.align 8
.LC61:
	.string	"error in ACKM RX script %d, op %zu"
	.text
	.type	test_rx_ack_actual, @function
test_rx_ack_actual:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movl	%edi, -340(%rbp)
	movl	%esi, -344(%rbp)
	movl	$0, -20(%rbp)
	movl	-340(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rx_test_scripts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movq	%xmm0, -208(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L147
.L148:
	movq	-40(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, -304(%rbp,%rbx,8)
	addq	$1, -40(%rbp)
.L147:
	cmpq	$2, -40(%rbp)
	jbe	.L148
	leaq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	helper_init
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$922, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L195
	movq	-192(%rbp), %rax
	leaq	-304(%rbp), %rdx
	leaq	on_ack_deadline_callback(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_set_ack_deadline_callback@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L151
.L153:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L152
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -48(%rbp)
.L152:
	addq	$64, -32(%rbp)
.L151:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L153
	movq	-48(%rbp), %rax
	imulq	$104, %rax, %rax
	leaq	.LC0(%rip), %rcx
	movl	$938, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$939, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L196
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$942, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$943, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L197
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L156
.L191:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	fake_time(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, fake_time(%rip)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	je	.L157
	cmpl	$8, %eax
	jg	.L198
	cmpl	$7, %eax
	je	.L159
	cmpl	$7, %eax
	jg	.L198
	cmpl	$6, %eax
	je	.L160
	cmpl	$6, %eax
	jg	.L198
	cmpl	$5, %eax
	je	.L161
	cmpl	$5, %eax
	jg	.L198
	cmpl	$4, %eax
	je	.L162
	cmpl	$4, %eax
	jg	.L198
	cmpl	$1, %eax
	je	.L163
	testl	%eax, %eax
	jle	.L198
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L198
	jmp	.L194
.L163:
	movq	$0, -40(%rbp)
	jmp	.L165
.L169:
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -336(%rbp)
	movq	%xmm0, -320(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movq	fake_time(%rip), %rax
	movq	%rax, -328(%rbp)
	movl	-344(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	-320(%rbp), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, -320(%rbp)
	movzbl	-320(%rbp), %eax
	orl	$4, %eax
	movb	%al, -320(%rbp)
	movzbl	-320(%rbp), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movq	-336(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_is_rx_pn_processable@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$961, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L199
	movq	-192(%rbp), %rax
	leaq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_packet@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$966, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L200
	addq	$1, -40(%rbp)
.L165:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L169
	jmp	.L170
.L194:
	movq	$0, -40(%rbp)
	jmp	.L171
.L173:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-192(%rbp), %rax
	movl	-344(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_is_rx_pn_processable@PLT
	movl	%eax, %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$975, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L201
	addq	$1, -40(%rbp)
.L171:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L173
	jmp	.L170
.L162:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %ebx
	movq	-192(%rbp), %rax
	movl	-344(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_is_ack_desired@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$983, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L202
	movq	-32(%rbp), %rax
	movzbl	33(%rax), %eax
	movsbl	%al, %ebx
	movq	-192(%rbp), %rax
	movl	-344(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L175
	movq	-192(%rbp), %rax
	movl	-344(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L175
	movl	$1, %esi
	jmp	.L176
.L175:
	movl	$0, %esi
.L176:
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$987, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L203
	movq	$0, -40(%rbp)
	jmp	.L178
.L181:
	movl	-344(%rbp), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	je	.L179
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$994, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
.L179:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_deadline@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	-304(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_compare
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$997, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L205
	addq	$1, -40(%rbp)
.L178:
	cmpq	$2, -40(%rbp)
	jbe	.L181
	jmp	.L170
.L161:
	movq	-192(%rbp), %rax
	movl	-344(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_get_ack_frame@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$1008, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L206
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.LC54(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1011, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L207
	movq	$0, -40(%rbp)
	jmp	.L184
.L187:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1015, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L208
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1018, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L209
	addq	$1, -40(%rbp)
.L184:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L187
	jmp	.L170
.L160:
	movq	-56(%rbp), %rax
	imulq	$104, %rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-344(%rbp), %eax
	andl	$3, %eax
	movq	-96(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	32(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	movq	-96(%rbp), %rax
	movq	$123, 8(%rax)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$8, %edx
	movb	%dl, 32(%rax)
	movq	-96(%rbp), %rax
	leaq	on_lost(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-96(%rbp), %rax
	leaq	on_acked(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	-96(%rbp), %rax
	leaq	on_discarded(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-96(%rbp), %rax
	movq	fake_time(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-192(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_tx_packet@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1040, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L210
	addq	$1, -56(%rbp)
	jmp	.L170
.L159:
	leaq	-272(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$1, -248(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -264(%rbp)
	movq	-192(%rbp), %rax
	movq	fake_time(%rip), %rcx
	movl	-344(%rbp), %edx
	leaq	-256(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_ack_frame@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1053, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L211
	jmp	.L150
.L157:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	%eax, -344(%rbp)
	jne	.L212
	movl	$1, -20(%rbp)
	jmp	.L150
.L211:
	nop
	jmp	.L170
.L212:
	nop
.L170:
	addq	$64, -32(%rbp)
	addq	$1, -80(%rbp)
.L156:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L191
	movl	$1, -20(%rbp)
	jmp	.L150
.L195:
	nop
	jmp	.L150
.L196:
	nop
	jmp	.L150
.L197:
	nop
	jmp	.L150
.L198:
	nop
	jmp	.L150
.L199:
	nop
	jmp	.L150
.L200:
	nop
	jmp	.L150
.L201:
	nop
	jmp	.L150
.L202:
	nop
	jmp	.L150
.L203:
	nop
	jmp	.L150
.L204:
	nop
	jmp	.L150
.L205:
	nop
	jmp	.L150
.L206:
	nop
	jmp	.L150
.L207:
	nop
	jmp	.L150
.L208:
	nop
	jmp	.L150
.L209:
	nop
	jmp	.L150
.L210:
	nop
.L150:
	cmpl	$0, -20(%rbp)
	jne	.L192
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	movl	-340(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	.LC61(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r8
	movl	$1075, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
.L192:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	helper_destroy
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$1078, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$1079, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	test_rx_ack_actual, .-test_rx_ack_actual
	.type	test_tx_ack_case, @function
test_tx_ack_case:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movabsq	$5675921253449092805, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movabsq	$5675921253449092805, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	test_tx_ack_case_actual
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	test_tx_ack_case, .-test_tx_ack_case
	.type	test_rx_ack, @function
test_rx_ack:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	shrq	$2, %rax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_rx_ack_actual
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	test_rx_ack, .-test_rx_ack
	.section	.rodata
.LC62:
	.string	"test_tx_ack_case"
.LC63:
	.string	"test_tx_ack_time_script"
.LC64:
	.string	"test_rx_ack"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_tx_ack_case(%rip), %rsi
	leaq	.LC62(%rip), %rax
	movl	$1, %ecx
	movl	$117, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_tx_ack_time_script(%rip), %rsi
	leaq	.LC63(%rip), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rx_ack(%rip), %rsi
	leaq	.LC64(%rip), %rax
	movl	$1, %ecx
	movl	$12, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

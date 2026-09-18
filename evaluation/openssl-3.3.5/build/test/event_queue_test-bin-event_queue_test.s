	.file	"event_queue_test.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB39:
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
.LFE39:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB40:
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
.LFE40:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_event_get_type, @function
ossl_event_get_type:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	ossl_event_get_type, .-ossl_event_get_type
	.type	ossl_event_get_priority, @function
ossl_event_get_priority:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	ossl_event_get_priority, .-ossl_event_get_priority
	.type	ossl_event_get_when, @function
ossl_event_get_when:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	ossl_event_get_when, .-ossl_event_get_when
	.type	ossl_event_get0_ctx, @function
ossl_event_get0_ctx:
.LFB70:
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
.LFE70:
	.size	ossl_event_get0_ctx, .-ossl_event_get0_ctx
	.type	ossl_event_get0_payload, @function
ossl_event_get0_payload:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	ossl_event_get0_payload, .-ossl_event_get0_payload
	.data
	.align 8
	.type	cur_time, @object
	.size	cur_time, 8
cur_time:
	.quad	100
	.text
	.globl	ossl_time_now
	.type	ossl_time_now, @function
ossl_time_now:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	cur_time(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ossl_time_now, .-ossl_time_now
	.section	.rodata
.LC0:
	.string	"q = ossl_event_queue_new()"
.LC1:
	.string	"../test/event_queue_test.c"
.LC2:
	.string	"ctx 1"
	.align 8
.LC3:
	.string	"e1 = ossl_event_queue_add_new(q, 1, 10, ossl_ticks2time(1100), \"ctx 1\", PAYLOAD(payload))"
.LC4:
	.string	"data"
.LC5:
	.string	"ctx 2"
	.align 8
.LC6:
	.string	"e2 = ossl_event_queue_add_new(q, 2, 5, ossl_ticks2time(1100), \"ctx 2\", PAYLOAD(\"data\"))"
.LC7:
	.string	"ctx 3"
.LC8:
	.string	"more data"
	.align 8
.LC9:
	.string	"ossl_event_queue_add(q, &e3, 3, 20, ossl_ticks2time(1200), \"ctx 3\", PAYLOAD(\"more data\"))"
	.align 8
.LC10:
	.string	"e4 = ossl_event_queue_add_new(q, 2, 5, ossl_ticks2time(1150), \"ctx 2\", PAYLOAD(\"data\"))"
.LC11:
	.string	"1"
.LC12:
	.string	"ossl_event_get_type(e1)"
.LC13:
	.string	"10"
.LC14:
	.string	"ossl_event_get_priority(e1)"
.LC15:
	.string	"1100"
	.align 8
.LC16:
	.string	"ossl_time2ticks(ossl_event_get_when(e1))"
.LC17:
	.string	"\"ctx 1\""
.LC18:
	.string	"ossl_event_get0_ctx(e1)"
	.align 8
.LC19:
	.string	"p = ossl_event_get0_payload(e1, &len)"
.LC20:
	.string	"payload"
.LC21:
	.string	"(char *)p"
	.align 8
.LC22:
	.string	"ossl_time2ticks(ossl_event_time_until(&e3))"
.LC23:
	.string	"1000"
	.align 8
.LC24:
	.string	"ossl_time2ticks(ossl_event_queue_time_until_next(q))"
	.align 8
.LC25:
	.string	"ossl_event_queue_postpone_until(q, e1, ossl_ticks2time(1200))"
.LC26:
	.string	"1200"
	.align 8
.LC27:
	.string	"ossl_event_queue_remove(q, e4)"
	.align 8
.LC28:
	.string	"ossl_event_queue_get1_next_event(q, &ep)"
.LC29:
	.string	"ep"
.LC30:
	.string	"e2"
.LC31:
	.string	"&e3"
.LC32:
	.string	"e1"
	.text
	.type	event_test, @function
event_test:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -40(%rbp)
	call	ossl_event_queue_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$33, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	payload.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rbx
	movl	$1100, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	leaq	payload.0(%rip), %rsi
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_event_queue_add_new@PLT
	addq	$16, %rsp
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$34, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1100, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$5
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_event_queue_add_new@PLT
	addq	$16, %rsp
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1200, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rdi
	leaq	-144(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$10
	leaq	.LC8(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rdx, %r8
	movl	$20, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ossl_event_queue_add@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1150, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rsi
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$5
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_event_queue_add_new@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_get_type
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_get_priority
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_get_when
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1100, %r9d
	movq	%rsi, %r8
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_get0_ctx
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_get0_payload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	payload.0(%rip), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_time_until@PLT
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1100, %r9d
	movq	%rsi, %r8
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_queue_time_until_next@PLT
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1000, %r9d
	movq	%rsi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1200, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_postpone_until@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_get_when
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1200, %r9d
	movq	%rsi, %r8
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_free@PLT
	movl	$1000, %edi
	call	ossl_ticks2time
	movq	%rax, cur_time(%rip)
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_get1_next_event@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-152(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$74, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L36
	movl	$1100, %edi
	call	ossl_ticks2time
	movq	%rax, cur_time(%rip)
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_get1_next_event@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$77, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-152(%rbp), %rsi
	movq	-56(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L37
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_free@PLT
	movq	$0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_get1_next_event@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-152(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$83, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L38
	movl	$1250, %edi
	call	ossl_ticks2time
	movq	%rax, cur_time(%rip)
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_get1_next_event@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	-152(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L39
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_free@PLT
	movq	$0, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_get1_next_event@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	-152(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L40
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_free@PLT
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_event_queue_get1_next_event@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movq	-152(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L41
	movl	$1, -20(%rbp)
	jmp	.L21
.L35:
	nop
	jmp	.L21
.L36:
	nop
	jmp	.L21
.L37:
	nop
	jmp	.L21
.L38:
	nop
	jmp	.L21
.L39:
	nop
	jmp	.L21
.L40:
	nop
	jmp	.L21
.L41:
	nop
.L21:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_event_queue_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	event_test, .-event_test
	.section	.rodata
.LC33:
	.string	"event_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	event_test(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	setup_tests, .-setup_tests
	.data
	.align 8
	.type	payload.0, @object
	.size	payload.0, 8
payload.0:
	.string	"payload"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

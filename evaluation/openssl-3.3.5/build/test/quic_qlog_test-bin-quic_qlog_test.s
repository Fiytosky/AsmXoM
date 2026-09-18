	.file	"quic_qlog_test.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB485:
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
.LFE485:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB494:
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
.LFE494:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB497:
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
.LFE497:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_from_time_t, @function
ossl_time_from_time_t:
.LFB501:
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
	imulq	$1000000000, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_time_from_time_t, .-ossl_time_from_time_t
	.type	ossl_time_add, @function
ossl_time_add:
.LFB505:
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
.LFE505:
	.size	ossl_time_add, .-ossl_time_add
	.section	.rodata
	.align 32
	.type	expected, @object
	.size	expected, 639
expected:
	.ascii	"\036{\"qlog_version\":\"0.3\",\"qlog_format\":\"JSON-SEQ\",\""
	.ascii	"title\":\"test title\",\"description\":\"test description\","
	.ascii	"\"trace\":{\"common_fields\":{\"time_format\":\"delta\",\"pr"
	.ascii	"otocol_type\":[\"QUIC\"],\"group_id\":\"test group ID\",\"sy"
	.ascii	"stem_info\":{\"process_id\":123}},\"vantage_point\":{\"type\""
	.ascii	":\"client\",\"name\":\"OpenSSL/x.y.z\"}}}\n\036{\"name\":\"t"
	.ascii	"ransport:packet_sent\",\"data\":{\"field1\":\"foo\",\"field2"
	.ascii	"\":\"bar\",\"field3\":42,\"field4\":\"1152921504606846976\","
	.ascii	"\"field5\":\"18446744073709551615\",\"field6\":false,\"field"
	.ascii	"7\":true,\"field8\":\"01af\",\"field9\":\"55\",\"subgroup\":"
	.ascii	"{\"field10\":\"baz\"},\"array\":[\"a\",\"b\"]},\"time\":1706"
	.ascii	"53117000}\n\036{\"name\":\"transport:packet_sent\",\"data\":"
	.ascii	"{\"field1\":\"bar\"},\"time\":1000}\n"
	.type	bin_buf, @object
	.size	bin_buf, 2
bin_buf:
	.ascii	"\001\257"
	.local	last_time
	.comm	last_time,8,8
	.text
	.type	now, @function
now:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	last_time(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1000000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, last_time(%rip)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	now, .-now
	.section	.rodata
.LC0:
	.string	"test title"
.LC1:
	.string	"test description"
.LC2:
	.string	"test group ID"
.LC3:
	.string	"OpenSSL/x.y.z"
.LC4:
	.string	"qlog = ossl_qlog_new(&qti)"
.LC5:
	.string	"../test/quic_qlog_test.c"
	.align 8
.LC6:
	.string	"ossl_qlog_set_event_type_enabled(qlog, QLOG_EVENT_TYPE_transport_packet_sent, 1)"
.LC7:
	.string	"bio = BIO_new(BIO_s_mem())"
	.align 8
.LC8:
	.string	"ossl_qlog_set_sink_bio(qlog, bio)"
.LC9:
	.string	"transport:packet_sent"
.LC10:
	.string	"packet_sent"
.LC11:
	.string	"transport"
.LC12:
	.string	"foo"
.LC13:
	.string	"field1"
.LC14:
	.string	"bar"
.LC15:
	.string	"field2"
.LC16:
	.string	"field3"
.LC17:
	.string	"field4"
.LC18:
	.string	"field5"
.LC19:
	.string	"field6"
.LC20:
	.string	"field7"
.LC21:
	.string	"field8"
.LC22:
	.string	"field9"
.LC23:
	.string	"subgroup"
.LC24:
	.string	"baz"
.LC25:
	.string	"field10"
.LC26:
	.string	"array"
.LC27:
	.string	"a"
.LC28:
	.string	"b"
.LC29:
	.string	"transport:packet_received"
.LC30:
	.string	"packet_received"
.LC31:
	.string	"ossl_qlog_flush(qlog)"
.LC32:
	.string	"0"
.LC33:
	.string	"buf_len"
.LC34:
	.string	"expected"
.LC35:
	.string	"buf"
	.text
	.type	test_qlog, @function
test_qlog:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	$0, -4(%rbp)
	leaq	-176(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -184(%rbp)
	movq	$0, -16(%rbp)
	movl	$170653117, %edi
	call	ossl_time_from_time_t
	movq	%rax, last_time(%rip)
	movb	$1, -176(%rbp)
	movb	$85, -175(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	$123, -104(%rbp)
	leaq	now(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_qlog_set_event_type_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$103, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_set_sink_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$5, -44(%rbp)
	leaq	.LC9(%rip), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L25
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	leaq	.LC14(%rip), %rdx
	leaq	.LC15(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_str_len@PLT
	leaq	.LC16(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_i64@PLT
	movabsq	$1152921504606846976, %rdx
	leaq	.LC17(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_i64@PLT
	leaq	.LC18(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_u64@PLT
	leaq	.LC19(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_bool@PLT
	leaq	.LC20(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_bool@PLT
	leaq	bin_buf(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	movzbl	-176(%rbp), %eax
	movzbl	%al, %edx
	leaq	-176(%rbp), %rax
	leaq	1(%rax), %rdi
	leaq	.LC22(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_qlog_bin@PLT
	leaq	.LC23(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_group_begin@PLT
	leaq	.LC24(%rip), %rdx
	leaq	.LC25(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_group_end@PLT
	leaq	.LC26(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_array_begin@PLT
	leaq	.LC27(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	leaq	.LC28(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_array_end@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$6, -60(%rbp)
	leaq	.LC29(%rip), %rdi
	leaq	.LC30(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L26
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L26:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$5, -76(%rbp)
	leaq	.LC9(%rip), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_qlog_event_try_begin@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC14(%rip), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_str@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_event_end@PLT
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_flush@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movl	%eax, %ecx
	movl	$138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L37
	movq	-184(%rbp), %rdi
	movq	-16(%rbp), %r8
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC5(%rip), %rax
	pushq	$639
	leaq	expected(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L38
	movl	$1, -4(%rbp)
	jmp	.L21
.L32:
	nop
	jmp	.L21
.L33:
	nop
	jmp	.L21
.L34:
	nop
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
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	test_qlog, .-test_qlog
	.section	.rodata
.LC36:
	.string	"*"
.LC37:
	.string	"-*"
.LC38:
	.string	"+*"
.LC39:
	.string	"* *"
.LC40:
	.string	"-* +*"
.LC41:
	.string	"-* +* -*"
.LC42:
	.string	"  *"
.LC43:
	.string	" "
.LC44:
	.string	""
.LC45:
	.string	"* -transport:packet_sent"
.LC46:
	.string	"unknown:event"
	.align 8
.LC47:
	.string	"unknown:event +transport:packet_sent"
.LC48:
	.string	"unknown:event transport:*"
	.align 8
.LC49:
	.string	"unknown:event +transport:* -transport:packet_sent"
	.align 8
.LC50:
	.string	"unknown:event transport:* -transport:packet_sent"
.LC51:
	.string	"* -transport:*"
.LC52:
	.string	"&"
.LC53:
	.string	"event_name_without_category"
.LC54:
	.string	"event_name_with_@badchar:foo"
.LC55:
	.string	"event_name_with_badchar:f@oo"
.LC56:
	.string	"category:"
.LC57:
	.string	":name"
.LC58:
	.string	":"
.LC59:
	.string	"**"
.LC60:
	.string	"foo:bar*"
.LC61:
	.string	"foo:*bar"
.LC62:
	.string	"foo*:bar"
.LC63:
	.string	"*foo:bar"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	filters, @object
	.size	filters, 768
filters:
	.quad	.LC36
	.long	1
	.long	5
	.long	1
	.zero	4
	.quad	.LC37
	.long	1
	.long	5
	.long	0
	.zero	4
	.quad	.LC38
	.long	1
	.long	5
	.long	1
	.zero	4
	.quad	.LC39
	.long	1
	.long	6
	.long	1
	.zero	4
	.quad	.LC40
	.long	1
	.long	6
	.long	1
	.zero	4
	.quad	.LC41
	.long	1
	.long	6
	.long	0
	.zero	4
	.quad	.LC42
	.long	1
	.long	5
	.long	1
	.zero	4
	.quad	.LC43
	.long	1
	.long	5
	.long	0
	.zero	4
	.quad	.LC44
	.long	1
	.long	5
	.long	0
	.zero	4
	.quad	.LC9
	.long	1
	.long	5
	.long	1
	.zero	4
	.quad	.LC9
	.long	1
	.long	6
	.long	0
	.zero	4
	.quad	.LC45
	.long	1
	.long	6
	.long	1
	.zero	4
	.quad	.LC45
	.long	1
	.long	5
	.long	0
	.zero	4
	.quad	.LC46
	.long	1
	.long	5
	.long	0
	.zero	4
	.quad	.LC47
	.long	1
	.long	5
	.long	1
	.zero	4
	.quad	.LC48
	.long	1
	.long	5
	.long	1
	.zero	4
	.quad	.LC49
	.long	1
	.long	6
	.long	1
	.zero	4
	.quad	.LC50
	.long	1
	.long	5
	.long	0
	.zero	4
	.quad	.LC51
	.long	1
	.long	1
	.long	1
	.zero	4
	.quad	.LC51
	.long	1
	.long	4
	.long	0
	.zero	4
	.quad	.LC52
	.long	0
	.zero	12
	.quad	.LC53
	.long	0
	.zero	12
	.quad	.LC54
	.long	0
	.zero	12
	.quad	.LC55
	.long	0
	.zero	12
	.quad	.LC56
	.long	0
	.zero	12
	.quad	.LC57
	.long	0
	.zero	12
	.quad	.LC58
	.long	0
	.zero	12
	.quad	.LC59
	.long	0
	.zero	12
	.quad	.LC60
	.long	0
	.zero	12
	.quad	.LC61
	.long	0
	.zero	12
	.quad	.LC62
	.long	0
	.zero	12
	.quad	.LC63
	.long	0
	.zero	12
	.section	.rodata
.LC64:
	.string	"filters[idx].expect_ok"
	.align 8
.LC65:
	.string	"ossl_qlog_set_filter(qlog, filters[idx].filter)"
	.align 8
.LC66:
	.string	"filters[idx].expect_event_enable"
	.align 8
.LC67:
	.string	"ossl_qlog_enabled(qlog, filters[idx].expect_event_type)"
	.text
	.type	test_qlog_filter, @function
test_qlog_filter:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)
	movl	$0, -20(%rbp)
	leaq	-128(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movb	$1, -128(%rbp)
	movb	$85, -127(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$225, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+filters(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	filters(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_set_filter@PLT
	movl	%eax, %esi
	leaq	.LC64(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+filters(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L43
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+filters(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+filters(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qlog_enabled@PLT
	movl	%eax, %esi
	leaq	.LC66(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$233, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
.L43:
	movl	$1, -20(%rbp)
	jmp	.L41
.L45:
	nop
	jmp	.L41
.L46:
	nop
	jmp	.L41
.L47:
	nop
.L41:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qlog_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	test_qlog_filter, .-test_qlog_filter
	.section	.rodata
.LC68:
	.string	"test_qlog"
.LC69:
	.string	"test_qlog_filter"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_qlog(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_qlog_filter(%rip), %rsi
	leaq	.LC69(%rip), %rax
	movl	$1, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

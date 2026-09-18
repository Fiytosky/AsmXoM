	.file	"quic_stream_test.c"
	.text
	.type	compare_iov, @function
compare_iov:
.LFB602:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L3
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	$0, -8(%rbp)
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L7
	movl	$0, %eax
	jmp	.L5
.L7:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	addq	%rax, -24(%rbp)
	addq	$1, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L8
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	compare_iov, .-compare_iov
	.section	.rodata
	.align 16
	.type	data_1, @object
	.size	data_1, 16
data_1:
	.ascii	"PQRSTUVWXYZ[\\]^_"
	.align 8
.LC0:
	.string	"sstream = ossl_quic_sstream_new(init_size)"
.LC1:
	.string	"../test/quic_stream_test.c"
	.align 8
.LC2:
	.string	"ossl_quic_sstream_is_totally_acked(sstream)"
	.align 8
.LC3:
	.string	"ossl_quic_sstream_get_stream_frame(sstream, 0, &hdr, iov, &num_iov)"
	.align 8
.LC4:
	.string	"ossl_quic_sstream_append(sstream, data_1, sizeof(data_1), &wr)"
.LC5:
	.string	"sizeof(data_1)"
.LC6:
	.string	"wr"
.LC7:
	.string	"0"
.LC8:
	.string	"num_iov"
.LC9:
	.string	"hdr.offset"
.LC10:
	.string	"hdr.len"
.LC11:
	.string	"hdr.is_fin"
	.align 8
.LC12:
	.string	"compare_iov(data_1, sizeof(data_1), iov, num_iov)"
	.align 8
.LC13:
	.string	"ossl_quic_sstream_mark_transmitted(sstream, 0, 7)"
.LC14:
	.string	"8"
.LC15:
	.string	"sizeof(data_1) - 8"
	.align 8
.LC16:
	.string	"compare_iov(data_1 + 8, sizeof(data_1) - 8, iov, num_iov)"
	.align 8
.LC17:
	.string	"ossl_quic_sstream_mark_transmitted(sstream, 8, 15)"
	.align 8
.LC18:
	.string	"ossl_quic_sstream_mark_lost(sstream, 4, 6)"
.LC19:
	.string	"4"
.LC20:
	.string	"3"
	.align 8
.LC21:
	.string	"compare_iov(data_1 + 4, 3, iov, num_iov)"
	.align 8
.LC22:
	.string	"ossl_quic_sstream_mark_transmitted(sstream, 4, 6)"
.LC23:
	.string	"16"
	.align 8
.LC24:
	.string	"ossl_quic_sstream_get_buffer_used(sstream)"
	.align 8
.LC25:
	.string	"ossl_quic_sstream_mark_acked(sstream, 1, 7)"
	.align 8
.LC26:
	.string	"ossl_quic_sstream_mark_acked(sstream, 0, 0)"
	.align 8
.LC27:
	.string	"ossl_quic_sstream_mark_acked(sstream, 0, 15)"
	.align 8
.LC28:
	.string	"ossl_quic_sstream_mark_transmitted_fin(sstream, 16)"
	.align 8
.LC29:
	.string	"ossl_quic_sstream_mark_lost_fin(sstream)"
	.align 8
.LC30:
	.string	"ossl_quic_sstream_mark_acked_fin(sstream)"
	.text
	.type	test_sstream_simple, @function
test_sstream_simple:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$8192, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$52, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-128(%rbp), %rdx
	leaq	data_1(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	movq	-128(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L59
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-120(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L60
	movq	-72(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L60
	movq	-64(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L60
	movzbl	-48(%rbp), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L60
	movq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	data_1(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$16, %esi
	call	compare_iov
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-120(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L63
	movq	-72(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L63
	movq	-64(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L63
	movzbl	-48(%rbp), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L63
	movq	-120(%rbp), %rdx
	leaq	8+data_1(%rip), %rdi
	leaq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$8, %esi
	call	compare_iov
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movq	-24(%rbp), %rax
	movl	$15, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_lost@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	movq	-120(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L68
	movq	-72(%rbp), %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L68
	movq	-64(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L68
	movzbl	-48(%rbp), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L68
	movq	-120(%rbp), %rdx
	leaq	4+data_1(%rip), %rdi
	leaq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	call	compare_iov
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$137, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L72
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$141, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$147, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L74
	movq	-24(%rbp), %rax
	movl	$15, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L75
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_fin@PLT
	movq	$0, -16(%rbp)
	jmp	.L39
.L42:
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-72(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L76
	movq	-64(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L76
	movzbl	-48(%rbp), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-120(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L76
	addq	$1, -16(%rbp)
.L39:
	cmpq	$1, -16(%rbp)
	jbe	.L42
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted_fin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$174, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_lost_fin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	movq	$0, -16(%rbp)
	jmp	.L46
.L49:
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$185, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L80
	movq	-72(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L80
	movq	-64(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L80
	movzbl	-48(%rbp), %eax
	andl	$2, %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L80
	movq	-120(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L80
	addq	$1, -16(%rbp)
.L46:
	cmpq	$1, -16(%rbp)
	jbe	.L49
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted_fin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	$2, -120(%rbp)
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L82
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked_fin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movl	$1, -4(%rbp)
	jmp	.L11
.L55:
	nop
	jmp	.L11
.L56:
	nop
	jmp	.L11
.L57:
	nop
	jmp	.L11
.L58:
	nop
	jmp	.L11
.L59:
	nop
	jmp	.L11
.L60:
	nop
	jmp	.L11
.L61:
	nop
	jmp	.L11
.L62:
	nop
	jmp	.L11
.L63:
	nop
	jmp	.L11
.L64:
	nop
	jmp	.L11
.L65:
	nop
	jmp	.L11
.L66:
	nop
	jmp	.L11
.L67:
	nop
	jmp	.L11
.L68:
	nop
	jmp	.L11
.L69:
	nop
	jmp	.L11
.L70:
	nop
	jmp	.L11
.L71:
	nop
	jmp	.L11
.L72:
	nop
	jmp	.L11
.L73:
	nop
	jmp	.L11
.L74:
	nop
	jmp	.L11
.L75:
	nop
	jmp	.L11
.L76:
	nop
	jmp	.L11
.L77:
	nop
	jmp	.L11
.L78:
	nop
	jmp	.L11
.L79:
	nop
	jmp	.L11
.L80:
	nop
	jmp	.L11
.L81:
	nop
	jmp	.L11
.L82:
	nop
	jmp	.L11
.L83:
	nop
	jmp	.L11
.L84:
	nop
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	test_sstream_simple, .-test_sstream_simple
	.section	.rodata
.LC31:
	.string	"init_size"
	.align 8
.LC32:
	.string	"ossl_quic_sstream_get_buffer_size(sstream)"
	.align 8
.LC33:
	.string	"src_buf = OPENSSL_zalloc(init_size)"
	.align 8
.LC34:
	.string	"dst_buf = OPENSSL_malloc(init_size)"
	.align 8
.LC35:
	.string	"ref_src_buf = OPENSSL_malloc(init_size)"
	.align 8
.LC36:
	.string	"ref_dst_buf = OPENSSL_malloc(init_size)"
	.align 8
.LC37:
	.string	"ossl_quic_sstream_append(sstream, src_buf, init_size / 2, &consumed)"
.LC38:
	.string	"init_size / 2"
.LC39:
	.string	"consumed"
	.align 8
.LC40:
	.string	"ossl_quic_sstream_mark_transmitted(sstream, 0, init_size / 2 - 1)"
	.align 8
.LC41:
	.string	"ossl_quic_sstream_mark_acked(sstream, 0, init_size / 2 - 1)"
	.align 8
.LC42:
	.string	"ossl_quic_sstream_append(sstream, src_buf, l, &consumed)"
	.align 8
.LC43:
	.string	"ossl_quic_sstream_get_buffer_avail(sstream)"
	.align 8
.LC44:
	.string	"ossl_quic_sstream_mark_transmitted(sstream, start_at + i, start_at + i)"
	.align 8
.LC45:
	.string	"ossl_quic_sstream_set_buffer_size(sstream, init_size * 2)"
	.align 8
.LC46:
	.string	"ossl_quic_sstream_set_buffer_size(sstream, init_size)"
	.align 8
.LC47:
	.string	"ossl_quic_sstream_get_stream_frame(sstream, i, &hdr, iov, &num_iov)"
.LC48:
	.string	"expected"
.LC49:
	.string	"iov[j].buf_len + rd"
.LC50:
	.string	"cur_rd"
.LC51:
	.string	"ref_dst_buf"
.LC52:
	.string	"dst_buf"
	.text
	.type	test_sstream_bulk, @function
test_sstream_bulk:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -244(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -232(%rbp)
	movq	$8192, -128(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_new@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L116
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_size@PLT
	movq	%rax, %rsi
	movq	-128(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L117
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$234, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$237, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L119
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$240, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$240, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$243, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$243, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-128(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdi
	leaq	-240(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-128(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdi
	movq	-240(%rbp), %rsi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$251, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L122
	movq	-128(%rbp), %rax
	shrq	%rax
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$252, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-128(%rbp), %rax
	shrq	%rax
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_acked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-128(%rbp), %rax
	shrq	%rax
	movq	%rax, -136(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L95
.L96:
	call	test_random@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L95:
	movq	-16(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L96
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
.L98:
	call	test_random@PLT
	movl	%eax, %eax
	movl	$0, %edx
	divq	-128(%rbp)
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	leaq	-240(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$268, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L123
	movq	-240(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-240(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-240(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-240(%rbp), %rax
	testq	%rax, %rax
	jne	.L98
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_used@PLT
	movq	%rax, %rsi
	movq	-128(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_buffer_avail@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$277, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L101
.L104:
	call	test_random@PLT
	andl	$1, %eax
	testl	%eax, %eax
	je	.L102
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, -56(%rbp)
	jmp	.L103
.L102:
	movq	-136(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_mark_transmitted@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$291, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
.L103:
	addq	$1, -104(%rbp)
	addq	$1, -16(%rbp)
.L101:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L104
	movq	-128(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_set_buffer_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_set_buffer_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$301, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L107
.L113:
	movq	$2, -232(%rbp)
	leaq	-232(%rbp), %rdi
	leaq	-224(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$308, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L127
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L109
.L111:
	movq	-24(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	je	.L128
	movq	-24(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$224, %rax
	movq	(%rax), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	(%rax), %rax
	addq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	(%rax), %rax
	addq	%rax, -48(%rbp)
	addq	$1, -24(%rbp)
.L109:
	movq	-232(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L111
	movq	-176(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$322, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L129
	movq	-48(%rbp), %rax
	addq	%rax, -40(%rbp)
	addq	$1, -16(%rbp)
.L107:
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L113
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-56(%rbp)
	pushq	-88(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$328, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L130
	movl	$1, -4(%rbp)
	jmp	.L87
.L116:
	nop
	jmp	.L87
.L117:
	nop
	jmp	.L87
.L118:
	nop
	jmp	.L87
.L119:
	nop
	jmp	.L87
.L120:
	nop
	jmp	.L87
.L121:
	nop
	jmp	.L87
.L122:
	nop
	jmp	.L87
.L123:
	nop
	jmp	.L87
.L124:
	nop
	jmp	.L87
.L125:
	nop
	jmp	.L87
.L126:
	nop
	jmp	.L87
.L127:
	nop
	jmp	.L87
.L128:
	nop
	jmp	.L87
.L129:
	nop
	jmp	.L87
.L130:
	nop
.L87:
	leaq	.LC1(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$334, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$335, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	test_sstream_bulk, .-test_sstream_bulk
	.type	test_single_copy_read, @function
test_single_copy_read:
.LFB605:
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
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L138:
	movq	-56(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_get_record@PLT
	testl	%eax, %eax
	jne	.L132
	movl	$0, %eax
	jmp	.L139
.L132:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L140
	movq	-16(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L136
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L136:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_release_record@PLT
	testl	%eax, %eax
	jne	.L137
	movl	$0, %eax
	jmp	.L139
.L137:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L135
	cmpq	$0, -40(%rbp)
	je	.L135
	jmp	.L138
.L140:
	nop
.L135:
	movl	$1, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	test_single_copy_read, .-test_single_copy_read
	.section	.rodata
	.align 32
	.type	simple_data, @object
	.size	simple_data, 45
simple_data:
	.string	"Hello world! And thank you for all the fish!"
	.align 8
.LC53:
	.string	"rstream = ossl_quic_rstream_new(NULL, NULL, 0)"
	.align 8
.LC54:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, 5, simple_data + 5, 10, 0)"
	.align 8
.LC55:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, sizeof(simple_data) - 1, simple_data + sizeof(simple_data) - 1, 1, 1)"
	.align 8
.LC56:
	.string	"ossl_quic_rstream_peek(rstream, buf, sizeof(buf), &readbytes, &fin)"
.LC57:
	.string	"fin"
.LC58:
	.string	"readbytes"
	.align 8
.LC59:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, sizeof(simple_data) - 10, simple_data + sizeof(simple_data) - 10, 10, 1)"
	.align 8
.LC60:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, 0, simple_data, 1, 0)"
.LC61:
	.string	"1"
.LC62:
	.string	"simple_data"
.LC63:
	.string	"buf"
	.align 8
.LC64:
	.string	"ossl_quic_rstream_move_to_rbuf(rstream)"
	.align 8
.LC65:
	.string	"ossl_quic_rstream_resize_rbuf(rstream, sizeof(simple_data))"
	.align 8
.LC66:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, 0, simple_data, 10, 0)"
	.align 8
.LC67:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, sizeof(simple_data), NULL, 0, 1)"
.LC68:
	.string	"15"
	.align 8
.LC69:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, 15, simple_data + 15, sizeof(simple_data) - 15, 1)"
	.align 8
.LC70:
	.string	"ossl_quic_rstream_available(rstream, &avail, &fin)"
.LC71:
	.string	"sizeof(simple_data)"
.LC72:
	.string	"avail"
	.align 8
.LC73:
	.string	"read_fn(rstream, buf, 2, &readbytes, &fin)"
.LC74:
	.string	"2"
	.align 8
.LC75:
	.string	"read_fn(rstream, buf + 2, 12, &readbytes, &fin)"
.LC76:
	.string	"12"
.LC77:
	.string	"simple_data + 2"
.LC78:
	.string	"buf + 2"
	.align 8
.LC79:
	.string	"ossl_quic_rstream_resize_rbuf(rstream, 2 * sizeof(simple_data))"
	.align 8
.LC80:
	.string	"read_fn(rstream, buf + 14, 5, &readbytes, &fin)"
.LC81:
	.string	"5"
	.align 8
.LC82:
	.string	"read_fn(rstream, buf + 14 + 5, sizeof(buf) - 14 - 5, &readbytes, &fin)"
.LC83:
	.string	"sizeof(buf) - 14 - 5"
	.align 8
.LC84:
	.string	"read_fn(rstream, buf, sizeof(buf), &readbytes, &fin)"
	.text
	.type	test_rstream_simple, @function
test_rstream_simple:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	cmpl	$1, -116(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L142
	leaq	test_single_copy_read(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L143
.L142:
	movq	ossl_quic_rstream_read@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
.L143:
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_rstream_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$389, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L155
	leaq	5+simple_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$10, %r8d
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$392, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	44+simple_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$44, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$394, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$45, %edx
	movq	%rax, %rdi
	call	ossl_quic_rstream_peek@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$398, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$401, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	35+simple_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$10, %r8d
	movq	%rdx, %rcx
	movl	$35, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$402, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	simple_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$45, %edx
	movq	%rax, %rdi
	call	ossl_quic_rstream_peek@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$410, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC61(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$411, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$1
	leaq	simple_data(%rip), %rsi
	pushq	%rsi
	movl	$1, %r9d
	movq	%rdi, %r8
	movl	$412, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L156
	cmpl	$0, -28(%rbp)
	je	.L147
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_move_to_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$413, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
.L147:
	cmpl	$0, -28(%rbp)
	je	.L148
	movq	-24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_resize_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$415, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
.L148:
	cmpl	$0, -28(%rbp)
	je	.L149
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_move_to_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$417, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
.L149:
	leaq	simple_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$10, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$418, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$45, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$45, %edx
	movq	%rax, %rdi
	call	ossl_quic_rstream_peek@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$425, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$427, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC68(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$15, %r9d
	movq	%rsi, %r8
	movl	$428, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$15
	leaq	simple_data(%rip), %rsi
	pushq	%rsi
	movl	$15, %r9d
	movq	%rdi, %r8
	movl	$429, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L156
	leaq	15+simple_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$30, %r8d
	movq	%rdx, %rcx
	movl	$15, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$430, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$435, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-96(%rbp), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$45, %r9d
	movq	%rsi, %r8
	movl	$436, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$438, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC74(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$439, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	simple_data(%rip), %rsi
	pushq	%rsi
	movl	$2, %r9d
	movq	%rdi, %r8
	movl	$440, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rax
	addq	$2, %rax
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$12, %edx
	movq	%rax, %rsi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$441, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$442, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC76(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movq	%rsi, %r8
	movl	$443, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	2+simple_data(%rip), %rsi
	leaq	-80(%rbp), %rax
	addq	$2, %rax
	leaq	.LC77(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	pushq	$12
	pushq	%rsi
	movl	$12, %r9d
	movq	%rax, %r8
	movl	$444, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L156
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$45, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$445, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	cmpl	$0, -28(%rbp)
	je	.L150
	movq	-24(%rbp), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_resize_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$450, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
.L150:
	cmpl	$0, -28(%rbp)
	je	.L151
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_move_to_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$452, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
.L151:
	leaq	-80(%rbp), %rax
	addq	$14, %rax
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rsi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$454, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC81(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$455, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$19
	leaq	simple_data(%rip), %rsi
	pushq	%rsi
	movl	$19, %r9d
	movq	%rdi, %r8
	movl	$456, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$26, %edx
	movq	%rax, %rsi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$457, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$459, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC83(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$26, %r9d
	movq	%rsi, %r8
	movl	$460, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	leaq	-80(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$45
	leaq	simple_data(%rip), %rsi
	pushq	%rsi
	movl	$45, %r9d
	movq	%rdi, %r8
	movl	$461, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L156
	cmpl	$0, -28(%rbp)
	je	.L152
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_move_to_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
.L152:
	leaq	-100(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$45, %edx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$463, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$464, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-88(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$465, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L156
	movl	$1, -4(%rbp)
	jmp	.L145
.L155:
	nop
	jmp	.L145
.L156:
	nop
.L145:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	test_rstream_simple, .-test_rstream_simple
	.section	.rodata
	.align 8
.LC85:
	.string	"bulk_data = OPENSSL_malloc(data_size)"
	.align 8
.LC86:
	.string	"read_buf = OPENSSL_malloc(data_size)"
	.align 8
.LC87:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, off, bulk_data + off, size, 0)"
	.align 8
.LC88:
	.string	"test_single_copy_read(rstream, read_buf, data_size, &readbytes, &fin)"
	.align 8
.LC89:
	.string	"ossl_quic_rstream_read(rstream, read_buf, data_size, &readbytes, &fin)"
.LC90:
	.string	"queued_min - read_off"
.LC91:
	.string	"data_size"
.LC92:
	.string	"readbytes + read_off"
.LC93:
	.string	"bulk_data + read_off"
.LC94:
	.string	"read_buf"
	.align 8
.LC95:
	.string	"ossl_quic_rstream_resize_rbuf(rstream, queued_max - read_off + 1)"
	.align 8
.LC96:
	.string	"ossl_quic_rstream_queue_data(rstream, NULL, data_size, NULL, 0, 1)"
	.align 8
.LC97:
	.string	"Total read bytes: %zu Fin rcvd: %d"
.LC98:
	.string	"bulk_data[i]"
	.text
	.type	test_rstream_random, @function
test_rstream_random:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$10000, -88(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -112(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$486, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$486, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L194
	leaq	.LC1(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$487, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$487, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L194
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_rstream_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$488, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L194
	movl	-116(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L161
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_set_cleanse@PLT
.L161:
	movq	$0, -24(%rbp)
	jmp	.L162
.L163:
	call	test_random@PLT
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L162:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L163
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L164
.L184:
	movl	$0, -56(%rbp)
	jmp	.L165
.L176:
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	$10, -96(%rbp)
	call	test_random@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	.L195
	movq	-72(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L168
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L168
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L168:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$509, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L196
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L170
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L170:
	call	test_random@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L197
	call	test_random@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$4, %eax
	imull	$50, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpq	$50, -72(%rbp)
	jbe	.L172
	subq	$50, -72(%rbp)
.L172:
	call	test_random@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$5, %eax
	imull	$100, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -88(%rbp)
	jnb	.L173
	movq	-88(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
.L173:
	movq	-72(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L174
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L174
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L174:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$529, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L198
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L167
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L167
.L195:
	nop
	jmp	.L167
.L197:
	nop
.L167:
	addl	$1, -56(%rbp)
.L165:
	cmpl	$9, -56(%rbp)
	jle	.L176
	movl	-116(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L177
	leaq	-100(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_single_copy_read
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$537, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L178
	jmp	.L160
.L177:
	leaq	-100(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$540, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
.L178:
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi
	leaq	.LC90(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$545, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L200
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-88(%rbp), %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$546, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	je	.L200
	movl	-116(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	.L180
	movq	-112(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-112(%rbp), %r9
	movq	-8(%rbp), %r8
	leaq	.LC93(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$548, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L200
.L180:
	movq	-112(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	call	test_random@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$4, %eax
	imull	$50, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L181
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rstream_resize_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$554, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_move_to_rbuf@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$556, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
.L181:
	cmpl	$0, -60(%rbp)
	jne	.L183
	call	test_random@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$200, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	subq	%rdx, %rax
	cmpq	%rax, -48(%rbp)
	jb	.L183
	movl	$1, -60(%rbp)
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_queue_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$561, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L202
.L183:
	addl	$1, -52(%rbp)
.L164:
	cmpl	$99, -52(%rbp)
	jle	.L184
	movl	-100(%rbp), %ecx
	movq	-32(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$567, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	-116(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L185
	movq	$0, -24(%rbp)
	jmp	.L186
.L188:
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$571, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L203
	addq	$1, -24(%rbp)
.L186:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L188
.L185:
	movq	-32(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L189
	cmpl	$0, -60(%rbp)
	je	.L189
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L189
	movl	-116(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L190
	leaq	-100(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_single_copy_read
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$577, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L191
	jmp	.L160
.L190:
	leaq	-100(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_rstream_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$580, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L204
.L191:
	movq	-112(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$585, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L205
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$585, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
.L189:
	movl	$1, -64(%rbp)
	jmp	.L160
.L194:
	nop
	jmp	.L160
.L196:
	nop
	jmp	.L160
.L198:
	nop
	jmp	.L160
.L199:
	nop
	jmp	.L160
.L200:
	nop
	jmp	.L160
.L201:
	nop
	jmp	.L160
.L202:
	nop
	jmp	.L160
.L203:
	nop
	jmp	.L160
.L204:
	nop
	jmp	.L160
.L205:
	nop
.L160:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$593, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$594, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-64(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	test_rstream_random, .-test_rstream_random
	.section	.rodata
.LC99:
	.string	"test_sstream_simple"
.LC100:
	.string	"test_sstream_bulk"
.LC101:
	.string	"test_rstream_simple"
.LC102:
	.string	"test_rstream_random"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_sstream_simple(%rip), %rdx
	leaq	.LC99(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sstream_bulk(%rip), %rsi
	leaq	.LC100(%rip), %rax
	movl	$1, %ecx
	movl	$100, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rstream_simple(%rip), %rsi
	leaq	.LC101(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rstream_random(%rip), %rsi
	leaq	.LC102(%rip), %rax
	movl	$1, %ecx
	movl	$100, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

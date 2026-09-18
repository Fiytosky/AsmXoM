	.file	"quic_wire_test.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB31:
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
.LFE31:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_forward, @function
PACKET_forward:
.LFB63:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-16(%rbp), %rax
	jnb	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	PACKET_forward, .-PACKET_forward
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB79:
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
.LFE79:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.section	.rodata
.LC0:
	.string	"1"
	.align 8
.LC1:
	.string	"ossl_quic_wire_encode_padding(pkt, 3)"
.LC2:
	.string	"../test/quic_wire_test.c"
	.text
	.type	encode_case_1_enc, @function
encode_case_1_enc:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_padding@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$30, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	encode_case_1_enc, .-encode_case_1_enc
	.section	.rodata
.LC3:
	.string	"3"
	.align 8
.LC4:
	.string	"ossl_quic_wire_decode_padding(pkt)"
	.text
	.type	encode_case_1_dec, @function
encode_case_1_dec:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_padding@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	encode_case_1_dec, .-encode_case_1_dec
	.section	.rodata
	.type	encode_case_1_expect, @object
	.size	encode_case_1_expect, 3
encode_case_1_expect:
	.zero	3
	.align 8
.LC5:
	.string	"ossl_quic_wire_encode_frame_ping(pkt)"
	.text
	.type	encode_case_2_enc, @function
encode_case_2_enc:
.LFB589:
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
	call	ossl_quic_wire_encode_frame_ping@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	encode_case_2_enc, .-encode_case_2_enc
	.section	.rodata
.LC6:
	.string	"fail < 0"
	.align 8
.LC7:
	.string	"ossl_quic_wire_decode_frame_ping(pkt)"
	.text
	.type	encode_case_2_dec, @function
encode_case_2_dec:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ping@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movl	$1, %eax
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	encode_case_2_dec, .-encode_case_2_dec
	.section	.rodata
	.type	encode_case_2_expect, @object
	.size	encode_case_2_expect, 1
encode_case_2_expect:
	.ascii	"\001"
	.align 32
	.type	encode_case_3_ranges, @object
	.size	encode_case_3_ranges, 32
encode_case_3_ranges:
	.quad	20
	.quad	30
	.quad	0
	.quad	10
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	encode_case_3_f, @object
	.size	encode_case_3_f, 56
encode_case_3_f:
	.quad	encode_case_3_ranges
	.quad	2
	.quad	1000000
	.quad	60
	.quad	70
	.quad	80
	.byte	1
	.zero	7
	.section	.rodata
	.align 8
.LC8:
	.string	"ossl_quic_wire_encode_frame_ack(pkt, 3, &encode_case_3_f)"
	.text
	.type	encode_case_3_enc, @function
encode_case_3_enc:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_3_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_ack@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	encode_case_3_enc, .-encode_case_3_enc
	.section	.rodata
.LC9:
	.string	"ret"
	.align 8
.LC10:
	.string	"ossl_quic_wire_decode_frame_ack(pkt, 3, &f, &total_ranges)"
.LC11:
	.string	"2"
.LC12:
	.string	"peek_total_ranges"
.LC13:
	.string	"total_ranges"
.LC14:
	.string	"SIZE_MAX"
	.align 8
.LC15:
	.string	"f.num_ack_ranges * sizeof(OSSL_QUIC_ACK_RANGE)"
	.align 8
.LC16:
	.string	"encode_case_3_f.num_ack_ranges * sizeof(OSSL_QUIC_ACK_RANGE)"
.LC17:
	.string	"encode_case_3_f.ack_ranges"
.LC18:
	.string	"f.ack_ranges"
	.align 8
.LC19:
	.string	"ossl_time2ticks(encode_case_3_f.delay_time)"
.LC20:
	.string	"ossl_time2ticks(f.delay_time)"
.LC21:
	.string	"f.ecn_present"
.LC22:
	.string	"encode_case_3_f.ect0"
.LC23:
	.string	"f.ect0"
.LC24:
	.string	"encode_case_3_f.ect1"
.LC25:
	.string	"f.ect1"
.LC26:
	.string	"encode_case_3_f.ecnce"
.LC27:
	.string	"f.ecnce"
	.text
	.type	encode_case_3_dec, @function
encode_case_3_dec:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movq	%xmm0, -112(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$4, -152(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_ack_num_ranges@PLT
	movl	%eax, -20(%rbp)
	cmpq	$0, -192(%rbp)
	jns	.L29
	movl	-20(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$107, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L43
.L29:
	movq	-192(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ack@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L43
.L31:
	cmpl	$1, -20(%rbp)
	jne	.L32
	movq	-176(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L43
.L32:
	cmpq	$0, -192(%rbp)
	js	.L33
	movl	$1, %eax
	jmp	.L43
.L33:
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L43
.L34:
	movq	-152(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	je	.L35
	movl	$2, %eax
	salq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L36
.L35:
	movl	$0, %eax
	jmp	.L43
.L36:
	movl	$2, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	leaq	encode_case_3_ranges(%rip), %rsi
	movq	-152(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %r9
	movq	-160(%rbp), %r8
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$129, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L43
.L37:
	movq	16+encode_case_3_f(%rip), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L43
.L38:
	movzbl	-112(%rbp), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L43
.L39:
	movl	$60, %edi
	movq	-136(%rbp), %rsi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L43
.L40:
	movl	$70, %edi
	movq	-128(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L43
.L41:
	movl	$80, %edi
	movq	-120(%rbp), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movl	$1, %eax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	encode_case_3_dec, .-encode_case_3_dec
	.section	.rodata
	.align 8
	.type	encode_case_3_expect, @object
	.size	encode_case_3_expect, 13
encode_case_3_expect:
	.base64	"Ax5AfQEKCAo8QEZAUA=="
	.align 16
	.type	encode_case_4_f, @object
	.size	encode_case_4_f, 24
encode_case_4_f:
	.quad	4660
	.quad	38785
	.quad	71447
	.align 8
.LC28:
	.string	"ossl_quic_wire_encode_frame_reset_stream(pkt, &encode_case_4_f)"
	.text
	.type	encode_case_4_enc, @function
encode_case_4_enc:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_4_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_reset_stream@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	encode_case_4_enc, .-encode_case_4_enc
	.section	.rodata
	.align 8
.LC29:
	.string	"ossl_quic_wire_decode_frame_reset_stream(pkt, &f)"
.LC30:
	.string	"&encode_case_4_f"
.LC31:
	.string	"&f"
	.text
	.type	encode_case_4_dec, @function
encode_case_4_dec:
.LFB594:
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
	movq	%rsi, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-64(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_reset_stream@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L52
.L48:
	cmpq	$0, -64(%rbp)
	js	.L50
	movl	$1, %eax
	jmp	.L52
.L50:
	leaq	-48(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$24
	leaq	encode_case_4_f(%rip), %rsi
	pushq	%rsi
	movl	$24, %r9d
	movq	%rdi, %r8
	movl	$193, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movl	$1, %eax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	encode_case_4_dec, .-encode_case_4_dec
	.section	.rodata
	.align 8
	.type	encode_case_4_expect, @object
	.size	encode_case_4_expect, 11
encode_case_4_expect:
	.base64	"BFI0gACXgYABFxc="
	.align 16
	.type	encode_case_5_f, @object
	.size	encode_case_5_f, 16
encode_case_5_f:
	.quad	4660
	.quad	38785
	.align 8
.LC32:
	.string	"ossl_quic_wire_encode_frame_stop_sending(pkt, &encode_case_5_f)"
	.text
	.type	encode_case_5_enc, @function
encode_case_5_enc:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_5_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stop_sending@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$213, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	encode_case_5_enc, .-encode_case_5_enc
	.section	.rodata
	.align 8
.LC33:
	.string	"ossl_quic_wire_decode_frame_stop_sending(pkt, &f)"
.LC34:
	.string	"&encode_case_5_f"
	.text
	.type	encode_case_5_dec, @function
encode_case_5_dec:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stop_sending@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$224, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L61
.L57:
	cmpq	$0, -48(%rbp)
	js	.L59
	movl	$1, %eax
	jmp	.L61
.L59:
	leaq	-32(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	encode_case_5_f(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movl	$1, %eax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	encode_case_5_dec, .-encode_case_5_dec
	.section	.rodata
	.type	encode_case_5_expect, @object
	.size	encode_case_5_expect, 7
encode_case_5_expect:
	.base64	"BVI0gACXgQ=="
	.type	encode_case_6_data, @object
	.size	encode_case_6_data, 5
encode_case_6_data:
	.base64	"XRIRZiE="
	.section	.data.rel.ro.local
	.align 16
	.type	encode_case_6_f, @object
	.size	encode_case_6_f, 24
encode_case_6_f:
	.quad	4660
	.quad	5
	.quad	encode_case_6_data
	.section	.rodata
	.align 8
.LC35:
	.string	"ossl_quic_wire_encode_frame_crypto(pkt, &encode_case_6_f)"
	.text
	.type	encode_case_6_enc, @function
encode_case_6_enc:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_6_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_crypto@PLT
	movq	%rax, %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	encode_case_6_enc, .-encode_case_6_enc
	.section	.rodata
	.align 8
.LC36:
	.string	"ossl_quic_wire_decode_frame_crypto(pkt, 0, &f)"
.LC37:
	.string	"0x1234"
.LC38:
	.string	"f.offset"
.LC39:
	.string	"f.len"
.LC40:
	.string	"encode_case_6_data"
.LC41:
	.string	"f.data"
	.text
	.type	encode_case_6_dec, @function
encode_case_6_dec:
.LFB598:
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
	movq	%rsi, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-64(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_crypto@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L72
.L66:
	cmpq	$0, -64(%rbp)
	js	.L68
	movl	$1, %eax
	jmp	.L72
.L68:
	movq	-48(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L72
.L69:
	movq	-40(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L72
.L70:
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rdi
	leaq	.LC40(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$5
	leaq	encode_case_6_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movl	$1, %eax
.L72:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	encode_case_6_dec, .-encode_case_6_dec
	.section	.rodata
	.align 8
	.type	encode_case_6_expect, @object
	.size	encode_case_6_expect, 9
encode_case_6_expect:
	.base64	"BlI0BV0SEWYh"
	.align 16
	.type	encode_case_7_token, @object
	.size	encode_case_7_token, 16
encode_case_7_token:
	.base64	"3gbLdl2xp3F4CbvoUBkSmg=="
	.align 8
.LC42:
	.string	"ossl_quic_wire_encode_frame_new_token(pkt, encode_case_7_token, sizeof(encode_case_7_token))"
	.text
	.type	encode_case_7_enc, @function
encode_case_7_enc:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_7_token(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_new_token@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$298, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	encode_case_7_enc, .-encode_case_7_enc
	.section	.rodata
	.align 8
.LC43:
	.string	"ossl_quic_wire_decode_frame_new_token(pkt, &token, &token_len)"
.LC44:
	.string	"encode_case_7_token"
.LC45:
	.string	"token"
	.text
	.type	encode_case_7_dec, @function
encode_case_7_dec:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_token@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L81
.L77:
	cmpq	$0, -48(%rbp)
	js	.L79
	movl	$1, %eax
	jmp	.L81
.L79:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	encode_case_7_token(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	encode_case_7_dec, .-encode_case_7_dec
	.section	.rodata
	.align 16
	.type	encode_case_7_expect, @object
	.size	encode_case_7_expect, 18
encode_case_7_expect:
	.base64	"BxDeBst2XbGncXgJu+hQGRKa"
	.type	encode_case_8_data, @object
	.size	encode_case_8_data, 5
encode_case_8_data:
	.base64	"3gbLdl0="
	.section	.data.rel.ro.local
	.align 32
	.type	encode_case_8_f, @object
	.size	encode_case_8_f, 40
encode_case_8_f:
	.quad	4660
	.quad	0
	.quad	5
	.quad	encode_case_8_data
	.byte	0
	.zero	7
	.section	.rodata
	.align 8
.LC46:
	.string	"ossl_quic_wire_encode_frame_stream(pkt, &encode_case_8_f)"
	.text
	.type	encode_case_8_enc, @function
encode_case_8_enc:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_8_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stream@PLT
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	encode_case_8_enc, .-encode_case_8_enc
	.section	.rodata
	.align 8
.LC47:
	.string	"ossl_quic_wire_decode_frame_stream(pkt, 0, &f)"
.LC48:
	.string	"encode_case_8_data"
.LC49:
	.string	"f.stream_id"
.LC50:
	.string	"0"
.LC51:
	.string	"f.has_explicit_len"
.LC52:
	.string	"f.is_fin"
	.text
	.type	encode_case_8_dec, @function
encode_case_8_dec:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	cmpq	$2, -80(%rbp)
	jle	.L86
	movl	$1, %eax
	jmp	.L96
.L86:
	movq	-80(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$361, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L96
.L88:
	cmpq	$0, -80(%rbp)
	js	.L89
	movl	$1, %eax
	jmp	.L96
.L89:
	movq	-48(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$367, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L96
.L90:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$5
	leaq	encode_case_8_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$370, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L96
.L91:
	movq	-64(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$374, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L96
.L92:
	movq	-56(%rbp), %rsi
	leaq	.LC50(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$377, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L96
.L93:
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$380, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L96
.L94:
	movzbl	-32(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$383, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L96
.L95:
	movl	$1, %eax
.L96:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	encode_case_8_dec, .-encode_case_8_dec
	.section	.rodata
	.align 8
	.type	encode_case_8_expect, @object
	.size	encode_case_8_expect, 8
encode_case_8_expect:
	.base64	"CFI03gbLdl0="
	.type	encode_case_9_data, @object
	.size	encode_case_9_data, 5
encode_case_9_data:
	.base64	"3gbLdl0="
	.section	.data.rel.ro.local
	.align 32
	.type	encode_case_9_f, @object
	.size	encode_case_9_f, 40
encode_case_9_f:
	.quad	4660
	.quad	57
	.quad	5
	.quad	encode_case_9_data
	.byte	3
	.zero	7
	.section	.rodata
	.align 8
.LC53:
	.string	"ossl_quic_wire_encode_frame_stream(pkt, &encode_case_9_f)"
	.text
	.type	encode_case_9_enc, @function
encode_case_9_enc:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_9_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stream@PLT
	movq	%rax, %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$405, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	encode_case_9_enc, .-encode_case_9_enc
	.section	.rodata
.LC54:
	.string	"encode_case_9_data"
.LC55:
	.string	"0x39"
	.text
	.type	encode_case_9_dec, @function
encode_case_9_dec:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-80(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$416, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L110
.L101:
	cmpq	$0, -80(%rbp)
	js	.L103
	movl	$1, %eax
	jmp	.L110
.L103:
	movq	-48(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$422, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L110
.L104:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC54(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$5
	leaq	encode_case_9_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$425, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L110
.L105:
	movq	-64(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$429, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L110
.L106:
	movq	-56(%rbp), %rsi
	leaq	.LC55(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$57, %r9d
	movq	%rsi, %r8
	movl	$432, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L110
.L107:
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$435, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L110
.L108:
	movzbl	-32(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$438, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movl	$1, %eax
.L110:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	encode_case_9_dec, .-encode_case_9_dec
	.section	.rodata
	.align 8
	.type	encode_case_9_expect, @object
	.size	encode_case_9_expect, 10
encode_case_9_expect:
	.base64	"D1I0OQXeBst2XQ=="
	.align 8
.LC56:
	.string	"ossl_quic_wire_encode_frame_max_data(pkt, 0x1234)"
	.text
	.type	encode_case_10_enc, @function
encode_case_10_enc:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_data@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$455, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movl	$1, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	encode_case_10_enc, .-encode_case_10_enc
	.section	.rodata
	.align 8
.LC57:
	.string	"ossl_quic_wire_decode_frame_max_data(pkt, &max_data)"
.LC58:
	.string	"max_data"
	.text
	.type	encode_case_10_dec, @function
encode_case_10_dec:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_data@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$465, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L119
.L115:
	cmpq	$0, -48(%rbp)
	js	.L117
	movl	$1, %eax
	jmp	.L119
.L117:
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$471, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movl	$1, %eax
.L119:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	encode_case_10_dec, .-encode_case_10_dec
	.section	.rodata
	.type	encode_case_10_expect, @object
	.size	encode_case_10_expect, 3
encode_case_10_expect:
	.base64	"EFI0"
	.align 8
.LC59:
	.string	"ossl_quic_wire_encode_frame_max_stream_data(pkt, 0x1234, 0x9781)"
	.text
	.type	encode_case_11_enc, @function
encode_case_11_enc:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$38785, %edx
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_stream_data@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movl	$1, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	encode_case_11_enc, .-encode_case_11_enc
	.section	.rodata
	.align 8
.LC60:
	.string	"ossl_quic_wire_decode_frame_max_stream_data(pkt, &stream_id, &max_data)"
.LC61:
	.string	"stream_id"
.LC62:
	.string	"0x9781"
	.text
	.type	encode_case_11_dec, @function
encode_case_11_dec:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_stream_data@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$497, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L129
.L124:
	cmpq	$0, -48(%rbp)
	js	.L126
	movl	$1, %eax
	jmp	.L129
.L126:
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$505, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L127
	movl	$0, %eax
	jmp	.L129
.L127:
	movq	-32(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$508, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movl	$1, %eax
.L129:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	encode_case_11_dec, .-encode_case_11_dec
	.section	.rodata
	.type	encode_case_11_expect, @object
	.size	encode_case_11_expect, 7
encode_case_11_expect:
	.base64	"EVI0gACXgQ=="
	.align 8
.LC63:
	.string	"ossl_quic_wire_encode_frame_max_streams(pkt, 0, 0x1234)"
	.align 8
.LC64:
	.string	"ossl_quic_wire_encode_frame_max_streams(pkt, 1, 0x9781)"
	.text
	.type	encode_case_12_enc, @function
encode_case_12_enc:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4660, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_streams@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$523, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-8(%rbp), %rax
	movl	$38785, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_max_streams@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$526, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L132
.L133:
	movl	$1, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	encode_case_12_enc, .-encode_case_12_enc
	.section	.rodata
.LC65:
	.string	"success_if"
	.align 8
.LC66:
	.string	"ossl_quic_wire_peek_frame_header(pkt, &frame_type_1, &is_minimal)"
.LC67:
	.string	"!success_if || is_minimal"
	.align 8
.LC68:
	.string	"ossl_quic_wire_decode_frame_max_streams(pkt, &max_streams_1)"
	.align 8
.LC69:
	.string	"ossl_quic_wire_peek_frame_header(pkt, &frame_type_2, &is_minimal)"
	.align 8
.LC70:
	.string	"ossl_quic_wire_decode_frame_max_streams(pkt, &max_streams_2)"
	.align 8
.LC71:
	.string	"OSSL_QUIC_FRAME_TYPE_MAX_STREAMS_BIDI"
.LC72:
	.string	"frame_type_1"
.LC73:
	.string	"max_streams_1"
	.align 8
.LC74:
	.string	"OSSL_QUIC_FRAME_TYPE_MAX_STREAMS_UNI"
.LC75:
	.string	"frame_type_2"
.LC76:
	.string	"max_streams_2"
	.text
	.type	encode_case_12_dec, @function
encode_case_12_dec:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	cmpq	$0, -64(%rbp)
	js	.L135
	cmpq	$0, -64(%rbp)
	jle	.L136
.L135:
	movl	$1, %eax
	jmp	.L137
.L136:
	movl	$0, %eax
.L137:
	movl	%eax, -4(%rbp)
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$539, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L138
	movl	$0, %eax
	jmp	.L165
.L138:
	cmpl	$0, -4(%rbp)
	je	.L140
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.L141
.L140:
	movl	$1, %ecx
	jmp	.L142
.L141:
	movl	$0, %ecx
.L142:
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$544, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L143
	movl	$0, %eax
	jmp	.L165
.L143:
	cmpq	$0, -64(%rbp)
	js	.L144
	cmpq	$2, -64(%rbp)
	jle	.L145
.L144:
	movl	$1, %eax
	jmp	.L146
.L145:
	movl	$0, %eax
.L146:
	movl	%eax, -4(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_streams@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$548, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L165
.L147:
	cmpq	$0, -64(%rbp)
	js	.L148
	cmpq	$3, -64(%rbp)
	jle	.L149
.L148:
	movl	$1, %eax
	jmp	.L150
.L149:
	movl	$0, %eax
.L150:
	movl	%eax, -4(%rbp)
	leaq	-44(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$554, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L151
	movl	$0, %eax
	jmp	.L165
.L151:
	cmpl	$0, -4(%rbp)
	je	.L152
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.L153
.L152:
	movl	$1, %ecx
	jmp	.L154
.L153:
	movl	$0, %ecx
.L154:
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L155
	movl	$0, %eax
	jmp	.L165
.L155:
	movq	-64(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_streams@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$563, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L165
.L156:
	cmpq	$0, -64(%rbp)
	js	.L157
	cmpq	$2, -64(%rbp)
	jle	.L158
.L157:
	movq	-32(%rbp), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$18, %r9d
	movq	%rsi, %r8
	movl	$569, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L158
	movl	$0, %eax
	jmp	.L165
.L158:
	cmpq	$0, -64(%rbp)
	js	.L159
	cmpq	$2, -64(%rbp)
	jle	.L160
.L159:
	movq	-16(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$573, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$0, %eax
	jmp	.L165
.L160:
	cmpq	$0, -64(%rbp)
	js	.L161
	cmpq	$7, -64(%rbp)
	jle	.L162
.L161:
	movq	-40(%rbp), %rsi
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$19, %r9d
	movq	%rsi, %r8
	movl	$577, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$0, %eax
	jmp	.L165
.L162:
	cmpq	$0, -64(%rbp)
	js	.L163
	cmpq	$7, -64(%rbp)
	jle	.L164
.L163:
	movq	-24(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$581, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L164
	movl	$0, %eax
	jmp	.L165
.L164:
	movl	$1, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	encode_case_12_dec, .-encode_case_12_dec
	.section	.rodata
	.align 8
	.type	encode_case_12_expect, @object
	.size	encode_case_12_expect, 8
encode_case_12_expect:
	.base64	"ElI0E4AAl4E="
	.align 8
.LC77:
	.string	"ossl_quic_wire_encode_frame_data_blocked(pkt, 0x1234)"
	.text
	.type	encode_case_13_enc, @function
encode_case_13_enc:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_data_blocked@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$597, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L167
	movl	$0, %eax
	jmp	.L168
.L167:
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	encode_case_13_enc, .-encode_case_13_enc
	.section	.rodata
	.align 8
.LC78:
	.string	"ossl_quic_wire_decode_frame_data_blocked(pkt, &max_data)"
	.text
	.type	encode_case_13_dec, @function
encode_case_13_dec:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_data_blocked@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$607, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L170
	movl	$0, %eax
	jmp	.L174
.L170:
	cmpq	$0, -48(%rbp)
	js	.L172
	movl	$1, %eax
	jmp	.L174
.L172:
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$614, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L174
.L173:
	movl	$1, %eax
.L174:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	encode_case_13_dec, .-encode_case_13_dec
	.section	.rodata
	.type	encode_case_13_expect, @object
	.size	encode_case_13_expect, 3
encode_case_13_expect:
	.base64	"FFI0"
	.align 8
.LC79:
	.string	"ossl_quic_wire_encode_frame_stream_data_blocked(pkt, 0x1234, 0x9781)"
	.text
	.type	encode_case_14_enc, @function
encode_case_14_enc:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$38785, %edx
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stream_data_blocked@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$628, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L177
.L176:
	movl	$1, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	encode_case_14_enc, .-encode_case_14_enc
	.section	.rodata
	.align 8
.LC80:
	.string	"ossl_quic_wire_decode_frame_stream_data_blocked(pkt, &stream_id, &max_data)"
	.text
	.type	encode_case_14_dec, @function
encode_case_14_dec:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream_data_blocked@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$640, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L179
	movl	$0, %eax
	jmp	.L184
.L179:
	cmpq	$0, -48(%rbp)
	js	.L181
	movl	$1, %eax
	jmp	.L184
.L181:
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$648, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L182
	movl	$0, %eax
	jmp	.L184
.L182:
	movq	-32(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$651, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	movl	$1, %eax
.L184:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	encode_case_14_dec, .-encode_case_14_dec
	.section	.rodata
	.type	encode_case_14_expect, @object
	.size	encode_case_14_expect, 7
encode_case_14_expect:
	.base64	"FVI0gACXgQ=="
	.align 8
.LC81:
	.string	"ossl_quic_wire_encode_frame_streams_blocked(pkt, 0, 0x1234)"
	.align 8
.LC82:
	.string	"ossl_quic_wire_encode_frame_streams_blocked(pkt, 1, 0x9781)"
	.text
	.type	encode_case_15_enc, @function
encode_case_15_enc:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4660, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_streams_blocked@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$666, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L187
.L186:
	movq	-8(%rbp), %rax
	movl	$38785, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_streams_blocked@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$669, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L188
	movl	$0, %eax
	jmp	.L187
.L188:
	movl	$1, %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	encode_case_15_enc, .-encode_case_15_enc
	.section	.rodata
	.align 8
.LC83:
	.string	"ossl_quic_wire_decode_frame_streams_blocked(pkt, &max_streams_1)"
.LC84:
	.string	"fail < 0 || fail >= 8"
	.align 8
.LC85:
	.string	"ossl_quic_wire_decode_frame_streams_blocked(pkt, &max_streams_2)"
	.align 8
.LC86:
	.string	"OSSL_QUIC_FRAME_TYPE_STREAMS_BLOCKED_BIDI"
	.align 8
.LC87:
	.string	"OSSL_QUIC_FRAME_TYPE_STREAMS_BLOCKED_UNI"
	.text
	.type	encode_case_15_dec, @function
encode_case_15_dec:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -60(%rbp)
	cmpq	$0, -80(%rbp)
	js	.L190
	cmpq	$0, -80(%rbp)
	jle	.L191
.L190:
	movl	$1, %eax
	jmp	.L192
.L191:
	movl	$0, %eax
.L192:
	movl	%eax, -20(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$682, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L193
	movl	$0, %eax
	jmp	.L223
.L193:
	cmpl	$0, -20(%rbp)
	je	.L195
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L196
.L195:
	movl	$1, %ecx
	jmp	.L197
.L196:
	movl	$0, %ecx
.L197:
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$687, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L223
.L198:
	cmpq	$0, -80(%rbp)
	js	.L199
	cmpq	$2, -80(%rbp)
	jle	.L200
.L199:
	movl	$1, %eax
	jmp	.L201
.L200:
	movl	$0, %eax
.L201:
	movl	%eax, -20(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_streams_blocked@PLT
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$691, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L202
	movl	$0, %eax
	jmp	.L223
.L202:
	cmpq	$0, -80(%rbp)
	js	.L203
	cmpq	$3, -80(%rbp)
	jle	.L204
.L203:
	movl	$1, %eax
	jmp	.L205
.L204:
	movl	$0, %eax
.L205:
	movl	%eax, -20(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC65(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$697, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L206
	movl	$0, %eax
	jmp	.L223
.L206:
	cmpl	$0, -20(%rbp)
	je	.L207
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L208
.L207:
	movl	$1, %ecx
	jmp	.L209
.L208:
	movl	$0, %ecx
.L209:
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$702, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L210
	movl	$0, %eax
	jmp	.L223
.L210:
	cmpq	$0, -80(%rbp)
	js	.L211
	cmpq	$7, -80(%rbp)
	jle	.L212
.L211:
	movl	$1, %ebx
	jmp	.L213
.L212:
	movl	$0, %ebx
.L213:
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_streams_blocked@PLT
	movl	%eax, %esi
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$705, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L214
	movl	$0, %eax
	jmp	.L223
.L214:
	cmpq	$0, -80(%rbp)
	js	.L215
	cmpq	$0, -80(%rbp)
	jle	.L216
.L215:
	movq	-48(%rbp), %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$22, %r9d
	movq	%rsi, %r8
	movl	$711, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L216
	movl	$0, %eax
	jmp	.L223
.L216:
	cmpq	$0, -80(%rbp)
	js	.L217
	cmpq	$2, -80(%rbp)
	jle	.L218
.L217:
	movq	-32(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$715, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L223
.L218:
	cmpq	$0, -80(%rbp)
	js	.L219
	cmpq	$3, -80(%rbp)
	jle	.L220
.L219:
	movq	-56(%rbp), %rsi
	leaq	.LC87(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$23, %r9d
	movq	%rsi, %r8
	movl	$719, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L220
	movl	$0, %eax
	jmp	.L223
.L220:
	cmpq	$0, -80(%rbp)
	js	.L221
	cmpq	$7, -80(%rbp)
	jle	.L222
.L221:
	movq	-40(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$723, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L223
.L222:
	movl	$1, %eax
.L223:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	encode_case_15_dec, .-encode_case_15_dec
	.section	.rodata
	.align 8
	.type	encode_case_15_expect, @object
	.size	encode_case_15_expect, 8
encode_case_15_expect:
	.base64	"FlI0F4AAl4E="
	.type	encode_case_16_conn_id, @object
	.size	encode_case_16_conn_id, 4
encode_case_16_conn_id:
	.ascii	"3DUf"
	.align 32
	.type	encode_case_16_f, @object
	.size	encode_case_16_f, 56
encode_case_16_f:
	.quad	38785
	.quad	4660
	.byte	4
	.string	"3DUf"
	.zero	15
	.base64	"3gbLdl2xp3F4CbvoUBkSmg=="
	.zero	3
	.align 8
.LC88:
	.string	"ossl_quic_wire_encode_frame_new_conn_id(pkt, &encode_case_16_f)"
	.text
	.type	encode_case_16_enc, @function
encode_case_16_enc:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_16_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_new_conn_id@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$758, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L225
	movl	$0, %eax
	jmp	.L226
.L225:
	movl	$1, %eax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	encode_case_16_enc, .-encode_case_16_enc
	.section	.rodata
	.align 8
.LC89:
	.string	"ossl_quic_wire_decode_frame_new_conn_id(pkt, &f)"
.LC90:
	.string	"f.seq_num"
.LC91:
	.string	"f.retire_prior_to"
	.align 8
.LC92:
	.string	"sizeof(encode_case_16_conn_id)"
.LC93:
	.string	"f.conn_id.id_len"
.LC94:
	.string	"encode_case_16_conn_id"
.LC95:
	.string	"f.conn_id.id"
	.align 8
.LC96:
	.string	"encode_case_16_f.stateless_reset.token"
.LC97:
	.string	"f.stateless_reset.token"
	.text
	.type	encode_case_16_dec, @function
encode_case_16_dec:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-96(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_conn_id@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$769, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L228
	movl	$0, %eax
	jmp	.L236
.L228:
	cmpq	$0, -96(%rbp)
	js	.L230
	movl	$1, %eax
	jmp	.L236
.L230:
	movq	-80(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$775, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L231
	movl	$0, %eax
	jmp	.L236
.L231:
	movq	-72(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$778, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L232
	movl	$0, %eax
	jmp	.L236
.L232:
	movzbl	-64(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC92(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$781, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L233
	movl	$0, %eax
	jmp	.L236
.L233:
	movzbl	-64(%rbp), %eax
	movzbl	%al, %edi
	leaq	-80(%rbp), %rax
	leaq	17(%rax), %r8
	leaq	.LC94(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$4
	leaq	encode_case_16_conn_id(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$784, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L234
	movl	$0, %eax
	jmp	.L236
.L234:
	leaq	-80(%rbp), %rax
	leaq	37(%rax), %rdi
	leaq	.LC96(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	37+encode_case_16_f(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$788, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L235
	movl	$0, %eax
	jmp	.L236
.L235:
	movl	$1, %eax
.L236:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	encode_case_16_dec, .-encode_case_16_dec
	.section	.rodata
	.align 16
	.type	encode_case_16_expect, @object
	.size	encode_case_16_expect, 28
encode_case_16_expect:
	.base64	"GIAAl4FSNAQzRFVm3gbLdl2xp3F4CbvoUBkSmg=="
	.align 32
	.type	encode_case_16b_f, @object
	.size	encode_case_16b_f, 56
encode_case_16b_f:
	.quad	4660
	.quad	38785
	.byte	4
	.string	"3DUf"
	.zero	15
	.base64	"3gbLdl2xp3F4CbvoUBkSmg=="
	.zero	3
	.align 8
.LC98:
	.string	"ossl_quic_wire_encode_frame_new_conn_id(pkt, &encode_case_16b_f)"
	.text
	.type	encode_case_16b_enc, @function
encode_case_16b_enc:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_16b_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_new_conn_id@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$825, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L238
	movl	$0, %eax
	jmp	.L239
.L238:
	movl	$1, %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	encode_case_16b_enc, .-encode_case_16b_enc
	.section	.rodata
	.align 8
.LC99:
	.string	"PACKET_forward(pkt, PACKET_remaining(pkt))"
	.text
	.type	encode_case_16b_dec, @function
encode_case_16b_dec:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_conn_id@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$836, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L241
	movl	$0, %eax
	jmp	.L244
.L241:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$839, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L243
	movl	$0, %eax
	jmp	.L244
.L243:
	movl	$1, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	encode_case_16b_dec, .-encode_case_16b_dec
	.section	.rodata
	.align 16
	.type	encode_case_16b_expect, @object
	.size	encode_case_16b_expect, 28
encode_case_16b_expect:
	.base64	"GFI0gACXgQQzRFVm3gbLdl2xp3F4CbvoUBkSmg=="
	.align 8
.LC100:
	.string	"ossl_quic_wire_encode_frame_retire_conn_id(pkt, 0x1234)"
	.text
	.type	encode_case_17_enc, @function
encode_case_17_enc:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_retire_conn_id@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$858, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L246
	movl	$0, %eax
	jmp	.L247
.L246:
	movl	$1, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	encode_case_17_enc, .-encode_case_17_enc
	.section	.rodata
	.align 8
.LC101:
	.string	"ossl_quic_wire_decode_frame_retire_conn_id(pkt, &seq_num)"
.LC102:
	.string	"seq_num"
	.text
	.type	encode_case_17_dec, @function
encode_case_17_dec:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_retire_conn_id@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$868, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L249
	movl	$0, %eax
	jmp	.L253
.L249:
	cmpq	$0, -48(%rbp)
	js	.L251
	movl	$1, %eax
	jmp	.L253
.L251:
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$874, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L252
	movl	$0, %eax
	jmp	.L253
.L252:
	movl	$1, %eax
.L253:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	encode_case_17_dec, .-encode_case_17_dec
	.section	.rodata
	.type	encode_case_17_expect, @object
	.size	encode_case_17_expect, 3
encode_case_17_expect:
	.base64	"GVI0"
	.align 8
	.type	encode_case_18_data, @object
	.size	encode_case_18_data, 8
encode_case_18_data:
	.quad	6866601848073295924
	.align 8
.LC103:
	.string	"ossl_quic_wire_encode_frame_path_challenge(pkt, encode_case_18_data)"
	.text
	.type	encode_case_18_enc, @function
encode_case_18_enc:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$6866601848073295924, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_path_challenge@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$891, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L255
	movl	$0, %eax
	jmp	.L256
.L255:
	movl	$1, %eax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	encode_case_18_enc, .-encode_case_18_enc
	.section	.rodata
	.align 8
.LC104:
	.string	"ossl_quic_wire_decode_frame_path_challenge(pkt, &challenge)"
.LC105:
	.string	"encode_case_18_data"
.LC106:
	.string	"challenge"
	.text
	.type	encode_case_18_dec, @function
encode_case_18_dec:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_challenge@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$902, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L258
	movl	$0, %eax
	jmp	.L262
.L258:
	cmpq	$0, -48(%rbp)
	js	.L260
	movl	$1, %eax
	jmp	.L262
.L260:
	movabsq	$6866601848073295924, %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$908, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L261
	movl	$0, %eax
	jmp	.L262
.L261:
	movl	$1, %eax
.L262:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	encode_case_18_dec, .-encode_case_18_dec
	.section	.rodata
	.align 8
	.type	encode_case_18_expect, @object
	.size	encode_case_18_expect, 9
encode_case_18_expect:
	.base64	"Gl9LEgAAcxg0"
	.align 8
	.type	encode_case_19_data, @object
	.size	encode_case_19_data, 8
encode_case_19_data:
	.quad	6866601848073295924
	.align 8
.LC107:
	.string	"ossl_quic_wire_encode_frame_path_response(pkt, encode_case_19_data)"
	.text
	.type	encode_case_19_enc, @function
encode_case_19_enc:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$6866601848073295924, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_path_response@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC107(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$925, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L264
	movl	$0, %eax
	jmp	.L265
.L264:
	movl	$1, %eax
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	encode_case_19_enc, .-encode_case_19_enc
	.section	.rodata
	.align 8
.LC108:
	.string	"ossl_quic_wire_decode_frame_path_response(pkt, &challenge)"
.LC109:
	.string	"encode_case_19_data"
	.text
	.type	encode_case_19_dec, @function
encode_case_19_dec:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_response@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$936, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L267
	movl	$0, %eax
	jmp	.L271
.L267:
	cmpq	$0, -48(%rbp)
	js	.L269
	movl	$1, %eax
	jmp	.L271
.L269:
	movabsq	$6866601848073295924, %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC109(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$942, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L270
	movl	$0, %eax
	jmp	.L271
.L270:
	movl	$1, %eax
.L271:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	encode_case_19_dec, .-encode_case_19_dec
	.section	.rodata
	.align 8
	.type	encode_case_19_expect, @object
	.size	encode_case_19_expect, 9
encode_case_19_expect:
	.base64	"G19LEgAAcxg0"
	.align 16
	.type	encode_case_20_reason, @object
	.size	encode_case_20_reason, 18
encode_case_20_reason:
	.ascii	"reason for closure"
	.section	.data.rel.ro.local
	.align 32
	.type	encode_case_20_f, @object
	.size	encode_case_20_f, 40
encode_case_20_f:
	.byte	0
	.zero	7
	.quad	4660
	.quad	38785
	.quad	encode_case_20_reason
	.quad	18
	.section	.rodata
	.align 8
.LC110:
	.string	"ossl_quic_wire_encode_frame_conn_close(pkt, &encode_case_20_f)"
	.text
	.type	encode_case_20_enc, @function
encode_case_20_enc:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	encode_case_20_f(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_conn_close@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$970, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L273
	movl	$0, %eax
	jmp	.L274
.L273:
	movl	$1, %eax
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	encode_case_20_enc, .-encode_case_20_enc
	.section	.rodata
	.align 8
.LC111:
	.string	"ossl_quic_wire_decode_frame_conn_close(pkt, &f)"
.LC112:
	.string	"f.is_app"
.LC113:
	.string	"f.error_code"
.LC114:
	.string	"f.frame_type"
.LC115:
	.string	"18"
.LC116:
	.string	"f.reason_len"
.LC117:
	.string	"encode_case_20_f.reason"
.LC118:
	.string	"f.reason"
	.text
	.type	encode_case_20_dec, @function
encode_case_20_dec:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-80(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_conn_close@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$981, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L276
	movl	$0, %eax
	jmp	.L284
.L276:
	cmpq	$0, -80(%rbp)
	js	.L278
	movl	$1, %eax
	jmp	.L284
.L278:
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$987, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L279
	movl	$0, %eax
	jmp	.L284
.L279:
	movq	-56(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$990, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L280
	movl	$0, %eax
	jmp	.L284
.L280:
	movq	-48(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$993, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L281
	movl	$0, %eax
	jmp	.L284
.L281:
	movq	-32(%rbp), %rsi
	leaq	.LC115(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$18, %r9d
	movq	%rsi, %r8
	movl	$996, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L282
	movl	$0, %eax
	jmp	.L284
.L282:
	movl	$18, %r9d
	leaq	encode_case_20_reason(%rip), %rsi
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC117(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%r9
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$999, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L283
	movl	$0, %eax
	jmp	.L284
.L283:
	movl	$1, %eax
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	encode_case_20_dec, .-encode_case_20_dec
	.section	.rodata
	.align 16
	.type	encode_case_20_expect, @object
	.size	encode_case_20_expect, 26
encode_case_20_expect:
	.base64	"HFI0gACXgRJyZWFzb24gZm9yIGNsb3N1cmU="
	.align 8
.LC119:
	.string	"ossl_quic_wire_encode_frame_handshake_done(pkt)"
	.text
	.type	encode_case_21_enc, @function
encode_case_21_enc:
.LFB629:
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
	call	ossl_quic_wire_encode_frame_handshake_done@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC119(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1019, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L286
	movl	$0, %eax
	jmp	.L287
.L286:
	movl	$1, %eax
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	encode_case_21_enc, .-encode_case_21_enc
	.section	.rodata
	.align 8
.LC120:
	.string	"ossl_quic_wire_decode_frame_handshake_done(pkt)"
	.text
	.type	encode_case_21_dec, @function
encode_case_21_dec:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_handshake_done@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC120(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1028, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L289
	movl	$0, %eax
	jmp	.L290
.L289:
	movl	$1, %eax
.L290:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	encode_case_21_dec, .-encode_case_21_dec
	.section	.rodata
	.type	encode_case_21_expect, @object
	.size	encode_case_21_expect, 1
encode_case_21_expect:
	.ascii	"\036"
	.type	encode_case_22_data, @object
	.size	encode_case_22_data, 5
encode_case_22_data:
	.ascii	"Uw2F\231"
	.align 8
.LC121:
	.string	"ossl_quic_wire_encode_transport_param_bytes(pkt, 0x1234, encode_case_22_data, sizeof(encode_case_22_data))"
	.align 8
.LC122:
	.string	"p = ossl_quic_wire_encode_transport_param_bytes(pkt, 0x9781, NULL, 2)"
	.text
	.type	encode_case_22_enc, @function
encode_case_22_enc:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	encode_case_22_data(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$5, %ecx
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1045, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L292
	movl	$0, %eax
	jmp	.L293
.L292:
	movq	-24(%rbp), %rax
	movl	$2, %ecx
	movl	$0, %edx
	movl	$38785, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC122(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1050, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L294
	movl	$0, %eax
	jmp	.L293
.L294:
	movq	-8(%rbp), %rax
	movb	$51, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	$68, (%rax)
	movl	$1, %eax
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	encode_case_22_enc, .-encode_case_22_enc
	.section	.rodata
.LC123:
	.string	"fail < 0 || fail >= 2"
	.align 8
.LC124:
	.string	"ossl_quic_wire_peek_transport_param(pkt, &id)"
.LC125:
	.string	"id"
.LC126:
	.string	"p"
.LC127:
	.string	"encode_case_22_data"
.LC128:
	.string	"fail < 0 || fail >= 12"
.LC129:
	.string	"data"
	.text
	.type	encode_case_22_dec, @function
encode_case_22_dec:
.LFB632:
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
	movq	%rsi, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -64(%rbp)
	js	.L296
	cmpq	$1, -64(%rbp)
	jle	.L297
.L296:
	movl	$1, %ebx
	jmp	.L298
.L297:
	movl	$0, %ebx
.L298:
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_transport_param@PLT
	movl	%eax, %esi
	leaq	.LC123(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1067, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L299
	movl	$0, %eax
	jmp	.L326
.L299:
	cmpq	$0, -64(%rbp)
	js	.L301
	cmpq	$1, -64(%rbp)
	jle	.L302
.L301:
	movq	-32(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$1072, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L302
	movl	$0, %eax
	jmp	.L326
.L302:
	movq	$0, -32(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	js	.L303
	cmpq	$7, -64(%rbp)
	jle	.L304
.L303:
	movq	-24(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1079, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L306
	movl	$0, %eax
	jmp	.L326
.L304:
	movq	-24(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1082, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L306
	movl	$0, %eax
	jmp	.L326
.L306:
	cmpq	$0, -64(%rbp)
	js	.L307
	cmpq	$7, -64(%rbp)
	jle	.L308
.L307:
	movq	-32(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$1087, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L308
	movl	$0, %eax
	jmp	.L326
.L308:
	cmpq	$0, -64(%rbp)
	js	.L309
	cmpq	$7, -64(%rbp)
	jle	.L310
.L309:
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC127(%rip), %rcx
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$5
	leaq	encode_case_22_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1091, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L310
	movl	$0, %eax
	jmp	.L326
.L310:
	cmpq	$0, -64(%rbp)
	js	.L311
	cmpq	$7, -64(%rbp)
	jle	.L312
.L311:
	cmpq	$0, -64(%rbp)
	js	.L313
	cmpq	$11, -64(%rbp)
	jle	.L314
.L313:
	movl	$1, %ebx
	jmp	.L315
.L314:
	movl	$0, %ebx
.L315:
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_transport_param@PLT
	movl	%eax, %esi
	leaq	.LC128(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1095, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L312
	movl	$0, %eax
	jmp	.L326
.L312:
	cmpq	$0, -64(%rbp)
	js	.L316
	cmpq	$11, -64(%rbp)
	jle	.L317
.L316:
	movq	-32(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$1100, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L317
	movl	$0, %eax
	jmp	.L326
.L317:
	movq	$0, -32(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	js	.L318
	cmpq	$14, -64(%rbp)
	jle	.L319
.L318:
	movq	-24(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1107, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L321
	movl	$0, %eax
	jmp	.L326
.L319:
	movq	-24(%rbp), %rax
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1110, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L321
	movl	$0, %eax
	jmp	.L326
.L321:
	cmpq	$0, -64(%rbp)
	js	.L322
	cmpq	$14, -64(%rbp)
	jle	.L323
.L322:
	movq	-32(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$1115, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L323
	movl	$0, %eax
	jmp	.L326
.L323:
	cmpq	$0, -64(%rbp)
	js	.L324
	cmpq	$14, -64(%rbp)
	jle	.L325
.L324:
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC129(%rip), %rcx
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$2
	leaq	data.0(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1119, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L325
	movl	$0, %eax
	jmp	.L326
.L325:
	movl	$1, %eax
.L326:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	encode_case_22_dec, .-encode_case_22_dec
	.section	.rodata
	.align 8
	.type	encode_case_22_expect, @object
	.size	encode_case_22_expect, 15
encode_case_22_expect:
	.base64	"UjQFVXcyRpmAAJeBAjNE"
	.align 8
.LC130:
	.string	"ossl_quic_wire_encode_transport_param_int(pkt, 0x1234, 0x9781)"
	.align 8
.LC131:
	.string	"ossl_quic_wire_encode_transport_param_int(pkt, 0x2233, 0x4545)"
	.text
	.type	encode_case_23_enc, @function
encode_case_23_enc:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$38785, %edx
	movl	$4660, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1138, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L328
	movl	$0, %eax
	jmp	.L329
.L328:
	movq	-8(%rbp), %rax
	movl	$17733, %edx
	movl	$8755, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_int@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC131(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1141, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L330
	movl	$0, %eax
	jmp	.L329
.L330:
	movl	$1, %eax
.L329:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	encode_case_23_enc, .-encode_case_23_enc
	.section	.rodata
.LC132:
	.string	"fail < 0 || fail >= 7"
	.align 8
.LC133:
	.string	"ossl_quic_wire_decode_transport_param_int(pkt, &id, &value)"
.LC134:
	.string	"value"
.LC135:
	.string	"fail < 0 || fail >= 14"
.LC136:
	.string	"0x2233"
.LC137:
	.string	"0x4545"
	.text
	.type	encode_case_23_dec, @function
encode_case_23_dec:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -48(%rbp)
	js	.L332
	cmpq	$6, -48(%rbp)
	jle	.L333
.L332:
	movl	$1, %ebx
	jmp	.L334
.L333:
	movl	$0, %ebx
.L334:
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	movl	%eax, %esi
	leaq	.LC132(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1151, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L335
	movl	$0, %eax
	jmp	.L349
.L335:
	cmpq	$0, -48(%rbp)
	js	.L337
	cmpq	$6, -48(%rbp)
	jle	.L338
.L337:
	movq	-24(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4660, %r9d
	movq	%rsi, %r8
	movl	$1157, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L338
	movl	$0, %eax
	jmp	.L349
.L338:
	cmpq	$0, -48(%rbp)
	js	.L339
	cmpq	$6, -48(%rbp)
	jle	.L340
.L339:
	movq	-32(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38785, %r9d
	movq	%rsi, %r8
	movl	$1161, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L340
	movl	$0, %eax
	jmp	.L349
.L340:
	cmpq	$0, -48(%rbp)
	js	.L341
	cmpq	$13, -48(%rbp)
	jle	.L342
.L341:
	movl	$1, %ebx
	jmp	.L343
.L342:
	movl	$0, %ebx
.L343:
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_int@PLT
	movl	%eax, %esi
	leaq	.LC135(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$1164, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L344
	movl	$0, %eax
	jmp	.L349
.L344:
	cmpq	$0, -48(%rbp)
	js	.L345
	cmpq	$13, -48(%rbp)
	jle	.L346
.L345:
	movq	-24(%rbp), %rsi
	leaq	.LC136(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8755, %r9d
	movq	%rsi, %r8
	movl	$1170, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L346
	movl	$0, %eax
	jmp	.L349
.L346:
	cmpq	$0, -48(%rbp)
	js	.L347
	cmpq	$13, -48(%rbp)
	jle	.L348
.L347:
	movq	-32(%rbp), %rsi
	leaq	.LC137(%rip), %rcx
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$17733, %r9d
	movq	%rsi, %r8
	movl	$1174, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L348
	movl	$0, %eax
	jmp	.L349
.L348:
	movl	$1, %eax
.L349:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	encode_case_23_dec, .-encode_case_23_dec
	.section	.rodata
	.align 8
	.type	encode_case_23_expect, @object
	.size	encode_case_23_expect, 14
encode_case_23_expect:
	.base64	"UjQEgACXgWIzBIAARUU="
	.section	.data.rel.ro.local
	.align 32
	.type	encode_cases, @object
	.size	encode_cases, 768
encode_cases:
	.quad	encode_case_1_enc
	.quad	encode_case_1_expect
	.quad	3
	.quad	encode_case_1_dec
	.quad	encode_case_2_enc
	.quad	encode_case_2_expect
	.quad	1
	.quad	encode_case_2_dec
	.quad	encode_case_3_enc
	.quad	encode_case_3_expect
	.quad	13
	.quad	encode_case_3_dec
	.quad	encode_case_4_enc
	.quad	encode_case_4_expect
	.quad	11
	.quad	encode_case_4_dec
	.quad	encode_case_5_enc
	.quad	encode_case_5_expect
	.quad	7
	.quad	encode_case_5_dec
	.quad	encode_case_6_enc
	.quad	encode_case_6_expect
	.quad	9
	.quad	encode_case_6_dec
	.quad	encode_case_7_enc
	.quad	encode_case_7_expect
	.quad	18
	.quad	encode_case_7_dec
	.quad	encode_case_8_enc
	.quad	encode_case_8_expect
	.quad	8
	.quad	encode_case_8_dec
	.quad	encode_case_9_enc
	.quad	encode_case_9_expect
	.quad	10
	.quad	encode_case_9_dec
	.quad	encode_case_10_enc
	.quad	encode_case_10_expect
	.quad	3
	.quad	encode_case_10_dec
	.quad	encode_case_11_enc
	.quad	encode_case_11_expect
	.quad	7
	.quad	encode_case_11_dec
	.quad	encode_case_12_enc
	.quad	encode_case_12_expect
	.quad	8
	.quad	encode_case_12_dec
	.quad	encode_case_13_enc
	.quad	encode_case_13_expect
	.quad	3
	.quad	encode_case_13_dec
	.quad	encode_case_14_enc
	.quad	encode_case_14_expect
	.quad	7
	.quad	encode_case_14_dec
	.quad	encode_case_15_enc
	.quad	encode_case_15_expect
	.quad	8
	.quad	encode_case_15_dec
	.quad	encode_case_16_enc
	.quad	encode_case_16_expect
	.quad	28
	.quad	encode_case_16_dec
	.quad	encode_case_16b_enc
	.quad	encode_case_16b_expect
	.quad	28
	.quad	encode_case_16b_dec
	.quad	encode_case_17_enc
	.quad	encode_case_17_expect
	.quad	3
	.quad	encode_case_17_dec
	.quad	encode_case_18_enc
	.quad	encode_case_18_expect
	.quad	9
	.quad	encode_case_18_dec
	.quad	encode_case_19_enc
	.quad	encode_case_19_expect
	.quad	9
	.quad	encode_case_19_dec
	.quad	encode_case_20_enc
	.quad	encode_case_20_expect
	.quad	26
	.quad	encode_case_20_dec
	.quad	encode_case_21_enc
	.quad	encode_case_21_expect
	.quad	1
	.quad	encode_case_21_dec
	.quad	encode_case_22_enc
	.quad	encode_case_22_expect
	.quad	15
	.quad	encode_case_22_dec
	.quad	encode_case_23_enc
	.quad	encode_case_23_expect
	.quad	14
	.quad	encode_case_23_dec
	.section	.rodata
.LC138:
	.string	"buf = BUF_MEM_new()"
.LC139:
	.string	"WPACKET_init(&wpkt, buf)"
.LC140:
	.string	"c->serializer(&wpkt)"
	.align 8
.LC141:
	.string	"WPACKET_get_total_written(&wpkt, &written)"
.LC142:
	.string	"c->expect_buf"
.LC143:
	.string	"buf->data"
	.align 8
.LC144:
	.string	"PACKET_buf_init(&pkt, (unsigned char *)buf->data, written)"
.LC145:
	.string	"c->deserializer(&pkt, -1)"
.LC146:
	.string	"PACKET_remaining(&pkt)"
	.align 8
.LC147:
	.string	"PACKET_buf_init(&pkt2, (unsigned char *)c->expect_buf, i)"
.LC148:
	.string	"c->deserializer(&pkt2, i)"
	.text
	.type	test_wire_encode, @function
test_wire_encode:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	-148(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	encode_cases(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -8(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC138(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1236, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L367
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1239, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L368
	movl	$1, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC140(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1243, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L369
	leaq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC141(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1246, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L370
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-120(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	8(%rax), %r8
	leaq	.LC142(%rip), %rcx
	leaq	.LC143(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1249, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L371
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC144(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1252, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L372
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC145(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1255, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L373
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1258, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L374
	movq	$0, -16(%rbp)
	jmp	.L360
.L364:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1271, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L375
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1274, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L376
	addq	$1, -16(%rbp)
.L360:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L364
	movl	$1, -4(%rbp)
	jmp	.L352
.L367:
	nop
	jmp	.L352
.L368:
	nop
	jmp	.L352
.L369:
	nop
	jmp	.L352
.L370:
	nop
	jmp	.L352
.L371:
	nop
	jmp	.L352
.L372:
	nop
	jmp	.L352
.L373:
	nop
	jmp	.L352
.L374:
	nop
	jmp	.L352
.L375:
	nop
	jmp	.L352
.L376:
	nop
.L352:
	cmpl	$0, -8(%rbp)
	je	.L365
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
.L365:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	test_wire_encode, .-test_wire_encode
	.section	.rodata
	.type	ack_case_1_input, @object
	.size	ack_case_1_input, 5
ack_case_1_input:
	.base64	"AggBAAk="
	.type	ack_case_2_input, @object
	.size	ack_case_2_input, 5
ack_case_2_input:
	.base64	"AggBAAg="
	.type	ack_case_3_input, @object
	.size	ack_case_3_input, 7
ack_case_3_input:
	.base64	"AggBAQEFAQ=="
	.type	ack_case_4_input, @object
	.size	ack_case_4_input, 7
ack_case_4_input:
	.base64	"AggBAQEEAQ=="
	.type	ack_case_5_input, @object
	.size	ack_case_5_input, 7
ack_case_5_input:
	.base64	"AggBAQEEAg=="
	.align 8
	.type	ack_case_6_input, @object
	.size	ack_case_6_input, 9
ack_case_6_input:
	.base64	"AggBAgEBAgAB"
	.align 8
	.type	ack_case_7_input, @object
	.size	ack_case_7_input, 9
ack_case_7_input:
	.base64	"AggBAgEBAgAA"
	.align 8
.LC149:
	.string	"ossl_quic_wire_peek_frame_ack_num_ranges(pkt, &peek_total_ranges)"
.LC150:
	.string	"f.ack_ranges[i].end"
.LC151:
	.string	"f.ack_ranges[i].start"
.LC152:
	.string	"1000"
	.text
	.type	ack_generic_decode, @function
ack_generic_decode:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	leaq	-144(%rbp), %rdx
	movl	$0, %eax
	movl	$16, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -176(%rbp)
	movq	%xmm0, -160(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$8, -200(%rbp)
	leaq	-224(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_ack_num_ranges@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC149(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1388, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L378
	movl	$0, %eax
	jmp	.L386
.L378:
	leaq	-216(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ack@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L380
	movl	$0, %eax
	jmp	.L386
.L380:
	movq	-224(%rbp), %rdi
	movq	-216(%rbp), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1396, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L381
	movl	$0, %eax
	jmp	.L386
.L381:
	movq	$0, -8(%rbp)
	jmp	.L382
.L385:
	movq	-208(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdi
	movq	-208(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	leaq	.LC150(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1400, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L383
	movl	$0, %eax
	jmp	.L386
.L383:
	movq	-208(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	leaq	.LC152(%rip), %rcx
	leaq	.LC150(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1000, %r9d
	movq	%rsi, %r8
	movl	$1402, %esi
	movq	%rax, %rdi
	call	test_uint64_t_lt@PLT
	testl	%eax, %eax
	jne	.L384
	movl	$0, %eax
	jmp	.L386
.L384:
	addq	$1, -8(%rbp)
.L382:
	movq	-200(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L385
	movl	$1, %eax
.L386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ack_generic_decode, .-ack_generic_decode
	.section	.data.rel.ro.local
	.align 32
	.type	ack_cases, @object
	.size	ack_cases, 224
ack_cases:
	.quad	ack_case_1_input
	.quad	5
	.quad	ack_generic_decode
	.long	1
	.zero	4
	.quad	ack_case_2_input
	.quad	5
	.quad	ack_generic_decode
	.long	0
	.zero	4
	.quad	ack_case_3_input
	.quad	7
	.quad	ack_generic_decode
	.long	1
	.zero	4
	.quad	ack_case_4_input
	.quad	7
	.quad	ack_generic_decode
	.long	0
	.zero	4
	.quad	ack_case_5_input
	.quad	7
	.quad	ack_generic_decode
	.long	1
	.zero	4
	.quad	ack_case_6_input
	.quad	9
	.quad	ack_generic_decode
	.long	1
	.zero	4
	.quad	ack_case_7_input
	.quad	9
	.quad	ack_generic_decode
	.long	0
	.zero	4
	.section	.rodata
	.align 8
.LC153:
	.string	"PACKET_buf_init(&pkt, (unsigned char *)c->input_buf, c->input_buf_len)"
.LC154:
	.string	"r"
	.text
	.type	test_wire_ack, @function
test_wire_ack:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	ack_cases(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC153(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1433, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L394
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L390
	movl	-20(%rbp), %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1440, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L391
	jmp	.L389
.L390:
	movl	-20(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1443, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L395
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1446, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L396
.L391:
	movl	$1, -4(%rbp)
	jmp	.L389
.L394:
	nop
	jmp	.L389
.L395:
	nop
	jmp	.L389
.L396:
	nop
.L389:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	test_wire_ack, .-test_wire_ack
	.section	.rodata
	.align 32
	.type	pn_tests, @object
	.size	pn_tests, 576
pn_tests:
	.quad	11295746
	.quad	11266227
	.quad	11266227
	.byte	2
	.base64	"XAIA"
	.zero	1
	.zero	3
	.quad	11331838
	.quad	11266227
	.quad	11266227
	.byte	3
	.base64	"rOj+AA=="
	.zero	3
	.quad	2821692210
	.quad	2821665002
	.quad	2821665002
	.byte	2
	.base64	"mzIA"
	.zero	1
	.zero	3
	.quad	1
	.quad	0
	.quad	0
	.byte	1
	.string	"\001"
	.zero	2
	.zero	3
	.quad	256
	.quad	255
	.quad	255
	.byte	1
	.zero	2
	.zero	2
	.zero	3
	.quad	257
	.quad	255
	.quad	255
	.byte	1
	.string	"\001"
	.zero	2
	.zero	3
	.quad	256
	.quad	128
	.quad	128
	.byte	1
	.zero	2
	.zero	2
	.zero	3
	.quad	256
	.quad	127
	.quad	127
	.byte	2
	.base64	"AQAA"
	.zero	1
	.zero	3
	.quad	65536
	.quad	32768
	.quad	32768
	.byte	2
	.base64	"AAAA"
	.zero	1
	.zero	3
	.quad	65537
	.quad	32769
	.quad	32769
	.byte	2
	.base64	"AAEA"
	.zero	1
	.zero	3
	.quad	65536
	.quad	32767
	.quad	32767
	.byte	3
	.base64	"AQAAAA=="
	.zero	3
	.quad	65537
	.quad	32768
	.quad	32768
	.byte	3
	.base64	"AQABAA=="
	.zero	3
	.quad	16777216
	.quad	8388608
	.quad	8388608
	.byte	3
	.base64	"AAAAAA=="
	.zero	3
	.quad	16777217
	.quad	8388609
	.quad	8388609
	.byte	3
	.base64	"AAABAA=="
	.zero	3
	.quad	16777216
	.quad	8388607
	.quad	8388607
	.byte	4
	.base64	"AQAAAA=="
	.zero	3
	.quad	16777217
	.quad	8388608
	.quad	8388608
	.byte	4
	.base64	"AQAAAQ=="
	.zero	3
	.quad	4294967296
	.quad	2147483648
	.quad	2147483648
	.byte	4
	.base64	"AAAAAA=="
	.zero	3
	.quad	4294967297
	.quad	2147483648
	.quad	2147483648
	.byte	4
	.base64	"AAAAAQ=="
	.zero	3
.LC155:
	.string	"(int)t->expected_len"
.LC156:
	.string	"pn_len"
	.align 8
.LC157:
	.string	"ossl_quic_wire_encode_pkt_hdr_pn(t->pn, buf, pn_len)"
.LC158:
	.string	"buf"
.LC159:
	.string	"t->expected_bytes"
	.align 8
.LC160:
	.string	"ossl_quic_wire_decode_pkt_hdr_pn(buf, pn_len, t->rx_largest_pn, &res_pn)"
.LC161:
	.string	"t->pn"
.LC162:
	.string	"res_pn"
	.text
	.type	test_wire_pkt_hdr_pn, @function
test_wire_pkt_hdr_pn:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	pn_tests(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_determine_pn_len@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %edi
	movl	-20(%rbp), %esi
	leaq	.LC155(%rip), %rcx
	leaq	.LC156(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1495, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L405
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_pkt_hdr_pn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1498, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L406
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbq	%al, %rdi
	movq	-16(%rbp), %rax
	leaq	25(%rax), %r8
	leaq	.LC158(%rip), %rcx
	leaq	.LC159(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-24(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$1501, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L407
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr_pn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1504, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L408
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC161(%rip), %rcx
	leaq	.LC162(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1508, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L409
	movl	$1, -4(%rbp)
	jmp	.L399
.L405:
	nop
	jmp	.L399
.L406:
	nop
	jmp	.L399
.L407:
	nop
	jmp	.L399
.L408:
	nop
	jmp	.L399
.L409:
	nop
.L399:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	test_wire_pkt_hdr_pn, .-test_wire_pkt_hdr_pn
	.section	.rodata
	.align 16
	.type	retry_orig_dcid, @object
	.size	retry_orig_dcid, 21
retry_orig_dcid:
	.byte	8
	.base64	"g5TI8D5RVwgA"
	.zero	11
	.align 32
	.type	retry_encoded, @object
	.size	retry_encoded, 36
retry_encoded:
	.base64	"/wAAAAEACPBnpVAqQmK1dG9rZW4EomW6Lv9NgpBY+z8PJJa6"
	.align 8
.LC163:
	.string	"PACKET_buf_init(&pkt, retry_encoded, sizeof(retry_encoded))"
	.align 8
.LC164:
	.string	"ossl_quic_wire_decode_pkt_hdr(&pkt, 0, 0, 0, &hdr, NULL)"
.LC165:
	.string	"QUIC_PKT_TYPE_RETRY"
.LC166:
	.string	"hdr.type"
	.align 8
.LC167:
	.string	"ossl_quic_calculate_retry_integrity_tag(NULL, NULL, &hdr, &retry_orig_dcid, got_tag)"
	.align 8
.LC168:
	.string	"retry_encoded + sizeof(retry_encoded) - QUIC_RETRY_INTEGRITY_TAG_LEN"
.LC169:
	.string	"got_tag"
	.align 8
.LC170:
	.string	"ossl_quic_validate_retry_integrity_tag(NULL, NULL, &hdr, &retry_orig_dcid)"
	.text
	.type	test_wire_retry_integrity_tag, @function
test_wire_retry_integrity_tag:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-128(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	leaq	retry_encoded(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1542, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L419
	leaq	-128(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1545, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L420
	movzbl	-128(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC165(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$1548, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L421
	leaq	-144(%rbp), %rcx
	leaq	retry_orig_dcid(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_calculate_retry_integrity_tag@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC167(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1551, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L422
	leaq	20+retry_encoded(%rip), %rsi
	leaq	-144(%rbp), %rdi
	leaq	.LC168(%rip), %rcx
	leaq	.LC169(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$1556, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L423
	leaq	retry_orig_dcid(%rip), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_validate_retry_integrity_tag@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1562, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L424
	movl	$1, -4(%rbp)
	jmp	.L412
.L419:
	nop
	jmp	.L412
.L420:
	nop
	jmp	.L412
.L421:
	nop
	jmp	.L412
.L422:
	nop
	jmp	.L412
.L423:
	nop
	jmp	.L412
.L424:
	nop
.L412:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	test_wire_retry_integrity_tag, .-test_wire_retry_integrity_tag
	.section	.rodata
	.type	non_minimal_1, @object
	.size	non_minimal_1, 2
non_minimal_1:
	.string	"@"
	.type	non_minimal_2, @object
	.size	non_minimal_2, 2
non_minimal_2:
	.ascii	"@?"
	.type	non_minimal_3, @object
	.size	non_minimal_3, 4
non_minimal_3:
	.base64	"gAAAAA=="
	.type	non_minimal_4, @object
	.size	non_minimal_4, 4
non_minimal_4:
	.base64	"gAA//w=="
	.align 8
	.type	non_minimal_5, @object
	.size	non_minimal_5, 8
non_minimal_5:
	.base64	"wAAAAAAAAAA="
	.align 8
	.type	non_minimal_6, @object
	.size	non_minimal_6, 8
non_minimal_6:
	.base64	"wAAAAD////8="
	.section	.data.rel.ro.local
	.align 32
	.type	non_minimal, @object
	.size	non_minimal, 48
non_minimal:
	.quad	non_minimal_1
	.quad	non_minimal_2
	.quad	non_minimal_3
	.quad	non_minimal_4
	.quad	non_minimal_5
	.quad	non_minimal_6
	.section	.rodata
	.align 32
	.type	non_minimal_len, @object
	.size	non_minimal_len, 48
non_minimal_len:
	.quad	2
	.quad	2
	.quad	4
	.quad	4
	.quad	8
	.quad	8
	.align 8
.LC171:
	.string	"PACKET_buf_init(&pkt, non_minimal[idx], non_minimal_len[idx])"
	.align 8
.LC172:
	.string	"ossl_quic_wire_peek_frame_header(&pkt, &frame_type, &is_minimal)"
.LC173:
	.string	"is_minimal"
	.text
	.type	test_wire_minimal, @function
test_wire_minimal:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	non_minimal_len(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	non_minimal(%rip), %rax
	movq	(%rcx,%rax), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1621, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L431
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1625, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L432
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC173(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1629, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L433
	movl	$1, -4(%rbp)
	jmp	.L427
.L431:
	nop
	jmp	.L427
.L432:
	nop
	jmp	.L427
.L433:
	nop
.L427:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	test_wire_minimal, .-test_wire_minimal
	.section	.rodata
.LC174:
	.string	"test_wire_encode"
.LC175:
	.string	"test_wire_ack"
.LC176:
	.string	"test_wire_pkt_hdr_pn"
.LC177:
	.string	"test_wire_retry_integrity_tag"
.LC178:
	.string	"test_wire_minimal"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_wire_encode(%rip), %rsi
	leaq	.LC174(%rip), %rax
	movl	$1, %ecx
	movl	$24, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_wire_ack(%rip), %rsi
	leaq	.LC175(%rip), %rax
	movl	$1, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_wire_pkt_hdr_pn(%rip), %rsi
	leaq	.LC176(%rip), %rax
	movl	$1, %ecx
	movl	$18, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_wire_retry_integrity_tag(%rip), %rdx
	leaq	.LC177(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_wire_minimal(%rip), %rsi
	leaq	.LC178(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.type	data.0, @object
	.size	data.0, 2
data.0:
	.ascii	"3D"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

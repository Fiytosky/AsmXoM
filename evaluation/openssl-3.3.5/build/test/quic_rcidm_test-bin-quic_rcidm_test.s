	.file	"quic_rcidm_test.c"
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
	.section	.rodata
	.align 16
	.type	cid8_1, @object
	.size	cid8_1, 21
cid8_1:
	.byte	8
	.string	"\001"
	.zero	18
	.align 16
	.type	cid8_2, @object
	.size	cid8_2, 21
cid8_2:
	.byte	8
	.string	"\002"
	.zero	18
	.align 16
	.type	cid8_3, @object
	.size	cid8_3, 21
cid8_3:
	.byte	8
	.string	"\003"
	.zero	18
	.align 16
	.type	cid8_4, @object
	.size	cid8_4, 21
cid8_4:
	.byte	8
	.string	"\004"
	.zero	18
	.align 16
	.type	cid8_5, @object
	.size	cid8_5, 21
cid8_5:
	.byte	8
	.string	"\005"
	.zero	18
	.align 8
.LC0:
	.string	"rcidm = ossl_quic_rcidm_new(odcid)"
.LC1:
	.string	"../test/quic_rcidm_test.c"
	.align 8
.LC2:
	.string	"ossl_quic_rcidm_get_preferred_tx_dcid_changed(rcidm, 1)"
	.align 8
.LC3:
	.string	"ossl_quic_rcidm_get_preferred_tx_dcid_changed(rcidm, 0)"
	.align 8
.LC4:
	.string	"ossl_quic_rcidm_get_preferred_tx_dcid(rcidm, &dcid_out)"
	.align 8
.LC5:
	.string	"ossl_quic_conn_id_eq(&dcid_out, &cid8_1)"
.LC6:
	.string	"0"
	.align 8
.LC7:
	.string	"ossl_quic_rcidm_get_num_active(rcidm)"
	.align 8
.LC8:
	.string	"ossl_quic_rcidm_add_from_server_retry(rcidm, &cid8_5)"
	.align 8
.LC9:
	.string	"ossl_quic_conn_id_eq(&dcid_out, &cid8_5)"
	.align 8
.LC10:
	.string	"ossl_quic_rcidm_add_from_initial(rcidm, &cid8_2)"
.LC11:
	.string	"1"
	.align 8
.LC12:
	.string	"ossl_quic_conn_id_eq(&dcid_out, &cid8_2)"
	.align 8
.LC13:
	.string	"ossl_quic_rcidm_add_from_ncid(rcidm, &ncid_frame_1)"
.LC14:
	.string	"2"
	.align 8
.LC15:
	.string	"ossl_quic_rcidm_add_from_ncid(rcidm, &ncid_frame_2)"
.LC16:
	.string	"3"
	.align 8
.LC17:
	.string	"ossl_quic_rcidm_get_num_retiring(rcidm)"
	.align 8
.LC18:
	.string	"ossl_quic_rcidm_pop_retire_seq_num(rcidm, &seq_num_out)"
	.align 8
.LC19:
	.string	"ossl_quic_conn_id_eq(&dcid_out, &cid8_3)"
	.align 8
.LC20:
	.string	"ossl_quic_rcidm_peek_retire_seq_num(rcidm, &seq_num_out)"
.LC21:
	.string	"seq_num_out"
	.align 8
.LC22:
	.string	"ossl_quic_conn_id_eq(&dcid_out, &cid8_4)"
	.text
	.type	test_rcidm, @function
test_rcidm:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -196(%rbp)
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movq	%xmm0, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	$2, -80(%rbp)
	movb	$8, -64(%rbp)
	movb	$3, -63(%rbp)
	movq	$3, -144(%rbp)
	movb	$8, -128(%rbp)
	movb	$4, -127(%rbp)
	cmpl	$2, -196(%rbp)
	je	.L6
	leaq	cid8_1(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L7
.L6:
	movq	$0, -16(%rbp)
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	cmpl	$2, -196(%rbp)
	je	.L10
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$47, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$48, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	leaq	cid8_1(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$51, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_active@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L12
	jmp	.L24
.L10:
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$55, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_active@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L25
.L12:
	cmpl	$1, -196(%rbp)
	jne	.L14
	leaq	cid8_5(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_server_retry@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$61, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	leaq	cid8_5(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_active@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L26
.L14:
	leaq	cid8_2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_initial@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_active@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$75, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	cid8_2(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$77, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_ncid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$79, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_active@PLT
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$80, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	cid8_2(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_ncid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_active@PLT
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_retiring@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_pop_retire_seq_num@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L27
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	leaq	cid8_2(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$93, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_on_handshake_complete@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$99, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	cid8_3(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_retiring@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_peek_retire_seq_num@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-184(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_request_roll@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$109, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	leaq	cid8_4(%rip), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_retiring@PLT
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_peek_retire_seq_num@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-184(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$115, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_pop_retire_seq_num@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-184(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_pop_retire_seq_num@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-184(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	$1, -4(%rbp)
	jmp	.L9
.L23:
	nop
	jmp	.L9
.L24:
	nop
	jmp	.L9
.L25:
	nop
	jmp	.L9
.L26:
	nop
	jmp	.L9
.L27:
	nop
	jmp	.L9
.L28:
	nop
	jmp	.L9
.L29:
	nop
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_rcidm, .-test_rcidm
	.section	.rodata
.LC23:
	.string	"test_rcidm"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_rcidm(%rip), %rsi
	leaq	.LC23(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

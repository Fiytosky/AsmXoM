	.file	"quicfaultstest.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
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
.LFE627:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB628:
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
.LFE628:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.section	.rodata
.LC0:
	.string	"Hello World!"
.LC1:
	.string	"cctx"
.LC2:
	.string	"../test/quicfaultstest.c"
	.align 8
.LC3:
	.string	"qtest_create_quic_objects(NULL, cctx, NULL, cert, privkey, 0, &qtserv, &cssl, NULL, NULL)"
	.align 8
.LC4:
	.string	"qtest_create_quic_connection(qtserv, cssl)"
.LC5:
	.string	"msglen"
.LC6:
	.string	"SSL_write(cssl, msg, msglen)"
	.align 8
.LC7:
	.string	"ossl_quic_tserver_read(qtserv, 0, buf, sizeof(buf), &bytesread)"
.LC8:
	.string	"buf"
.LC9:
	.string	"msg"
	.text
	.type	test_basic, @function
test_basic:
.LFB643:
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
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$34, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	privkey(%rip), %rsi
	movq	cert(%rip), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$0
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	leaq	-56(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$37, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$41, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-48(%rbp), %rax
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L20
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	leaq	-152(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	%rcx, %r8
	movl	$80, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$48, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-152(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-144(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L22
	movl	$1, -20(%rbp)
	jmp	.L10
.L17:
	nop
	jmp	.L10
.L18:
	nop
	jmp	.L10
.L19:
	nop
	jmp	.L10
.L20:
	nop
	jmp	.L10
.L21:
	nop
	jmp	.L10
.L22:
	nop
.L10:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	test_basic, .-test_basic
	.type	add_unknown_frame_cb, @function
add_unknown_frame_cb:
.LFB644:
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
	movq	$-1, -8(%rbp)
	movq	done.1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, done.1(%rip)
	testq	%rax, %rax
	je	.L24
	movl	$1, %eax
	jmp	.L26
.L24:
	leaq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	add_unknown_frame_cb, .-add_unknown_frame_cb
	.section	.rodata
	.align 8
.LC10:
	.string	"qtest_create_quic_objects(NULL, cctx, NULL, cert, privkey, 0, &qtserv, &cssl, &fault, NULL)"
	.align 8
.LC11:
	.string	"qtest_fault_set_packet_plain_listener(fault, add_unknown_frame_cb, NULL)"
	.align 8
.LC12:
	.string	"ossl_quic_tserver_stream_new(qtserv, 0, &sid)"
.LC13:
	.string	"1"
.LC14:
	.string	"sid"
	.align 8
.LC15:
	.string	"ossl_quic_tserver_write(qtserv, sid, (unsigned char *)msg, msglen, &byteswritten)"
.LC16:
	.string	"byteswritten"
.LC17:
	.string	"SSL_handle_events(cssl)"
.LC18:
	.string	"0"
	.align 8
.LC19:
	.string	"ret = SSL_read(cssl, buf, sizeof(buf))"
.LC20:
	.string	"SSL_ERROR_SSL"
.LC21:
	.string	"SSL_get_error(cssl, ret)"
.LC22:
	.string	"SSL_R_QUIC_PROTOCOL_ERROR"
	.align 8
.LC23:
	.string	"ERR_GET_REASON(ERR_peek_error())"
	.align 8
.LC24:
	.string	"qtest_check_server_frame_encoding_err(qtserv)"
	.text
	.type	test_unknown_frame, @function
test_unknown_frame:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	$0, -4(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -160(%rbp)
	movq	$-1, -168(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$104, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	privkey(%rip), %rsi
	movq	cert(%rip), %rdx
	movq	-16(%rbp), %rax
	pushq	$0
	leaq	-160(%rbp), %rcx
	pushq	%rcx
	leaq	-56(%rbp), %rcx
	pushq	%rcx
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movq	-160(%rbp), %rax
	leaq	add_unknown_frame_cb(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_packet_plain_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-48(%rbp), %rax
	leaq	-168(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_stream_new@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$123, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-168(%rbp), %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L47
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	-152(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$127, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movq	-152(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$131, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L49
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$135, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movq	-56(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$138, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L51
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L52
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$382, %r9d
	movl	%esi, %r8d
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L53
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_check_server_frame_encoding_err@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$148, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, -4(%rbp)
	jmp	.L29
.L43:
	nop
	jmp	.L29
.L44:
	nop
	jmp	.L29
.L45:
	nop
	jmp	.L29
.L46:
	nop
	jmp	.L29
.L47:
	nop
	jmp	.L29
.L48:
	nop
	jmp	.L29
.L49:
	nop
	jmp	.L29
.L50:
	nop
	jmp	.L29
.L51:
	nop
	jmp	.L29
.L52:
	nop
	jmp	.L29
.L53:
	nop
	jmp	.L29
.L54:
	nop
.L29:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	test_unknown_frame, .-test_unknown_frame
	.type	drop_extensions_cb, @function
drop_extensions_cb:
.LFB646:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	qtest_fault_delete_extension@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	drop_extensions_cb, .-drop_extensions_cb
	.section	.rodata
	.align 8
.LC25:
	.string	"qtest_fault_set_hand_enc_ext_listener(fault, drop_extensions_cb, &ext)"
	.align 8
.LC26:
	.string	"qtest_check_server_transport_err(qtserv, err)"
	.text
	.type	test_drop_extensions, @function
test_drop_extensions:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$186, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L68
	movq	privkey(%rip), %rsi
	movq	cert(%rip), %rdx
	movq	-16(%rbp), %rax
	pushq	$0
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	cmpl	$0, -52(%rbp)
	jne	.L62
	movl	$57, -44(%rbp)
	movl	$365, -8(%rbp)
	jmp	.L63
.L62:
	movl	$16, -44(%rbp)
	movl	$376, -8(%rbp)
.L63:
	movq	-40(%rbp), %rax
	leaq	-44(%rbp), %rdx
	leaq	drop_extensions_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_hand_enc_ext_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$210, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L71
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_check_server_transport_err@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$213, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	movl	$1, -4(%rbp)
	jmp	.L60
.L68:
	nop
	jmp	.L60
.L69:
	nop
	jmp	.L60
.L70:
	nop
	jmp	.L60
.L71:
	nop
	jmp	.L60
.L72:
	nop
.L60:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	test_drop_extensions, .-test_drop_extensions
	.local	docorrupt
	.comm	docorrupt,4,4
	.type	on_packet_cipher_cb, @function
on_packet_cipher_cb:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	docorrupt(%rip), %eax
	testl	%eax, %eax
	je	.L74
	cmpq	$0, -32(%rbp)
	jne	.L75
.L74:
	movl	$1, %eax
	jmp	.L76
.L75:
	call	test_random@PLT
	movl	%eax, %eax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	(%rdx), %edx
	movq	-24(%rbp), %rcx
	addq	%rcx, %rax
	notl	%edx
	movb	%dl, (%rax)
	movl	$0, docorrupt(%rip)
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	on_packet_cipher_cb, .-on_packet_cipher_cb
	.type	on_datagram_cb, @function
on_datagram_cb:
.LFB649:
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
	movq	%rcx, -32(%rbp)
	movl	docorrupt(%rip), %eax
	testl	%eax, %eax
	je	.L78
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L79
.L78:
	movl	$1, %eax
	jmp	.L80
.L79:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_datagram@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$1, %eax
	jmp	.L80
.L81:
	movl	$0, docorrupt(%rip)
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	on_datagram_cb, .-on_datagram_cb
	.section	.rodata
	.align 8
.LC27:
	.string	"qtest_create_quic_objects(NULL, cctx, NULL, cert, privkey, QTEST_FLAG_FAKE_TIME, &qtserv, &cssl, &fault, NULL)"
	.align 8
.LC28:
	.string	"qtest_fault_set_packet_cipher_listener(fault, on_packet_cipher_cb, NULL)"
	.align 8
.LC29:
	.string	"qtest_fault_set_datagram_listener(fault, on_datagram_cb, NULL)"
	.align 8
.LC30:
	.string	"ossl_quic_tserver_write(qtserv, sid, (unsigned char *)msg, 5, &byteswritten)"
.LC31:
	.string	"5"
	.align 8
.LC32:
	.string	"ossl_quic_tserver_write(qtserv, sid, (unsigned char *)msg + 5, msglen - 5, &byteswritten)"
.LC33:
	.string	"msglen - 5"
	.align 8
.LC34:
	.string	"SSL_read_ex(cssl, buf, sizeof(buf), &bytesread)"
.LC35:
	.string	"docorrupt"
	.text
	.type	test_corrupted_data, @function
test_corrupted_data:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -180(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	$-1, -168(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	privkey(%rip), %rsi
	movq	cert(%rip), %rdx
	movq	-16(%rbp), %rax
	pushq	$0
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	leaq	-56(%rbp), %rcx
	pushq	%rcx
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	movl	$2, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	qtest_create_quic_objects@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$276, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	cmpl	$0, -180(%rbp)
	jne	.L86
	movq	-40(%rbp), %rax
	leaq	on_packet_cipher_cb(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_packet_cipher_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L87
	jmp	.L84
.L86:
	movq	-40(%rbp), %rax
	leaq	on_datagram_cb(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_datagram_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
.L87:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_create_quic_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movl	$1, docorrupt(%rip)
	movq	-48(%rbp), %rax
	leaq	-168(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_stream_new@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L105
	movq	-168(%rbp), %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$301, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L105
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	$5, %ecx
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$308, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movq	-160(%rbp), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L107
	movl	$100, %edi
	call	qtest_add_time@PLT
	movq	-32(%rbp), %rax
	leaq	-5(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	5(%rax), %rdx
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	-160(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$324, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L108
	movq	-32(%rbp), %rax
	leaq	-5(%rax), %rdi
	movq	-160(%rbp), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$328, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$346, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L111
	movq	-56(%rbp), %rax
	leaq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$350, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-152(%rbp), %rsi
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-144(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L113
	movl	docorrupt(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$360, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L114
	movl	$1, -4(%rbp)
	jmp	.L84
.L101:
	nop
	jmp	.L84
.L102:
	nop
	jmp	.L84
.L103:
	nop
	jmp	.L84
.L104:
	nop
	jmp	.L84
.L105:
	nop
	jmp	.L84
.L106:
	nop
	jmp	.L84
.L107:
	nop
	jmp	.L84
.L108:
	nop
	jmp	.L84
.L109:
	nop
	jmp	.L84
.L110:
	nop
	jmp	.L84
.L111:
	nop
	jmp	.L84
.L112:
	nop
	jmp	.L84
.L113:
	nop
	jmp	.L84
.L114:
	nop
.L84:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	test_corrupted_data, .-test_corrupted_data
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC36:
	.string	"Error parsing test options\n"
	.align 8
.LC37:
	.string	"certsdir = test_get_argument(0)"
.LC38:
	.string	"servercert.pem"
.LC39:
	.string	"serverkey.pem"
.LC40:
	.string	"test_basic"
.LC41:
	.string	"test_unknown_frame"
.LC42:
	.string	"test_drop_extensions"
.LC43:
	.string	"test_corrupted_data"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L118
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$379, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L119
.L118:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$383, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L119
.L120:
	leaq	.LC38(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	testq	%rax, %rax
	je	.L124
	leaq	.LC39(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	testq	%rax, %rax
	je	.L125
	leaq	test_basic(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_unknown_frame(%rip), %rdx
	leaq	.LC41(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_drop_extensions(%rip), %rsi
	leaq	.LC42(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_corrupted_data(%rip), %rsi
	leaq	.LC43(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	jmp	.L119
.L124:
	nop
	jmp	.L122
.L125:
	nop
.L122:
	movq	cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$402, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$403, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$409, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$410, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	cleanup_tests, .-cleanup_tests
	.local	done.1
	.comm	done.1,8,8
	.section	.rodata
.LC44:
	.string	"Usage: %s [options] certsdir\n"
.LC45:
	.string	"Valid options are:\n"
.LC46:
	.string	"help"
.LC47:
	.string	"Display this summary"
.LC48:
	.string	"list"
	.align 8
.LC49:
	.string	"Display the list of tests available"
.LC50:
	.string	"test"
	.align 8
.LC51:
	.string	"Run a single test by id or name"
.LC52:
	.string	"iter"
	.align 8
.LC53:
	.string	"Run a single iteration of a test"
.LC54:
	.string	"indent"
	.align 8
.LC55:
	.string	"Number of tabs added to output"
.LC56:
	.string	"seed"
	.align 8
.LC57:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	500
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	501
	.long	45
	.quad	.LC49
	.quad	.LC50
	.long	502
	.long	115
	.quad	.LC51
	.quad	.LC52
	.long	503
	.long	110
	.quad	.LC53
	.quad	.LC54
	.long	504
	.long	112
	.quad	.LC55
	.quad	.LC56
	.long	505
	.long	110
	.quad	.LC57
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

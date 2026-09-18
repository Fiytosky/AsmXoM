	.file	"quic_newcid_test.c"
	.text
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
	.local	ncid_injected
	.comm	ncid_injected,8,8
	.type	add_ncid_frame_cb, @function
add_ncid_frame_cb:
.LFB643:
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
	movq	ncid_injected(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, ncid_injected(%rip)
	testq	%rax, %rax
	je	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	leaq	new_conn_id_frame.2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	add_ncid_frame_cb, .-add_ncid_frame_cb
	.section	.rodata
.LC0:
	.string	"Hello World!"
.LC1:
	.string	"cctx"
.LC2:
	.string	"../test/quic_newcid_test.c"
	.align 8
.LC3:
	.string	"qtest_create_quic_objects(NULL, cctx, NULL, cert, privkey, 0, &qtserv, &cssl, &fault, NULL)"
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
	.align 8
.LC10:
	.string	"qtest_fault_set_packet_plain_listener(fault, add_ncid_frame_cb, NULL)"
	.align 8
.LC11:
	.string	"ossl_quic_tserver_set_new_local_cid(qtserv, &conn_id)"
	.align 8
.LC12:
	.string	"ossl_quic_tserver_write(qtserv, 0, (unsigned char *)msg, msglen, &byteswritten)"
.LC13:
	.string	"ncid_injected"
.LC14:
	.string	"byteswritten"
.LC15:
	.string	"SSL_handle_events(cssl)"
	.align 8
.LC16:
	.string	"SSL_read(cssl, buf, sizeof(buf))"
.LC17:
	.string	"0"
.LC18:
	.string	"bytesread"
	.text
	.type	test_ncid_frame, @function
test_ncid_frame:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movl	%edi, -180(%rbp)
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
	movq	$0, -168(%rbp)
	movq	$0, ncid_injected(%rip)
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$67, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	privkey(%rip), %rsi
	movq	cert(%rip), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	leaq	-168(%rbp), %rcx
	pushq	%rcx
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
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L30
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
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
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
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	leaq	-160(%rbp), %rcx
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
	movl	$81, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movq	-160(%rbp), %rsi
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
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L34
	movq	-168(%rbp), %rax
	leaq	add_ncid_frame_cb(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_packet_plain_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	cmpl	$0, -180(%rbp)
	jne	.L17
	movq	-56(%rbp), %rax
	leaq	conn_id.1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_new_local_cid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
.L17:
	movq	-56(%rbp), %rax
	leaq	-152(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	ncid_injected(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-152(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L39
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	-48(%rbp), %rax
	movl	%eax, %ebx
	movq	-64(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L41
	movq	-160(%rbp), %rsi
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
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L42
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
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-56(%rbp), %rax
	leaq	-160(%rbp), %rcx
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
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	cmpl	$0, -180(%rbp)
	je	.L26
	movq	-160(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L27
	jmp	.L10
.L26:
	movq	-160(%rbp), %rsi
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
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L45
.L27:
	movl	$1, -20(%rbp)
	jmp	.L10
.L29:
	nop
	jmp	.L10
.L30:
	nop
	jmp	.L10
.L31:
	nop
	jmp	.L10
.L32:
	nop
	jmp	.L10
.L33:
	nop
	jmp	.L10
.L34:
	nop
	jmp	.L10
.L35:
	nop
	jmp	.L10
.L36:
	nop
	jmp	.L10
.L37:
	nop
	jmp	.L10
.L38:
	nop
	jmp	.L10
.L39:
	nop
	jmp	.L10
.L40:
	nop
	jmp	.L10
.L41:
	nop
	jmp	.L10
.L42:
	nop
	jmp	.L10
.L43:
	nop
	jmp	.L10
.L44:
	nop
	jmp	.L10
.L45:
	nop
.L10:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
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
.LFE644:
	.size	test_ncid_frame, .-test_ncid_frame
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB645:
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
.LFE645:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC19:
	.string	"Error parsing test options\n"
	.align 8
.LC20:
	.string	"certsdir = test_get_argument(0)"
.LC21:
	.string	"servercert.pem"
.LC22:
	.string	"serverkey.pem"
.LC23:
	.string	"test_ncid_frame"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB646:
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
	jne	.L49
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$160, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L50
.L51:
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	testq	%rax, %rax
	je	.L55
	leaq	.LC22(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	testq	%rax, %rax
	je	.L56
	leaq	test_ncid_frame(%rip), %rsi
	leaq	.LC23(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	jmp	.L50
.L55:
	nop
	jmp	.L53
.L56:
	nop
.L53:
	movq	cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$177, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	cert(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$183, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	privkey(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	cleanup_tests, .-cleanup_tests
	.data
	.align 16
	.type	new_conn_id_frame.2, @object
	.size	new_conn_id_frame.2, 28
new_conn_id_frame.2:
	.base64	"GAEBCDNEVWberb7vq83vARIyI0VWBgiJobLD1A=="
	.section	.rodata
	.align 16
	.type	conn_id.1, @object
	.size	conn_id.1, 21
conn_id.1:
	.byte	8
	.base64	"M0RVZt6tvu8A"
	.zero	11
.LC24:
	.string	"Usage: %s [options] certsdir\n"
.LC25:
	.string	"Valid options are:\n"
.LC26:
	.string	"help"
.LC27:
	.string	"Display this summary"
.LC28:
	.string	"list"
	.align 8
.LC29:
	.string	"Display the list of tests available"
.LC30:
	.string	"test"
	.align 8
.LC31:
	.string	"Run a single test by id or name"
.LC32:
	.string	"iter"
	.align 8
.LC33:
	.string	"Run a single iteration of a test"
.LC34:
	.string	"indent"
	.align 8
.LC35:
	.string	"Number of tabs added to output"
.LC36:
	.string	"seed"
	.align 8
.LC37:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC24
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	500
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	501
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	502
	.long	115
	.quad	.LC31
	.quad	.LC32
	.long	503
	.long	110
	.quad	.LC33
	.quad	.LC34
	.long	504
	.long	112
	.quad	.LC35
	.quad	.LC36
	.long	505
	.long	110
	.quad	.LC37
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"ext_internal_test.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"renegotiate"
.LC1:
	.string	"server_name"
.LC2:
	.string	"max_fragment_length"
.LC3:
	.string	"srp"
.LC4:
	.string	"ec_point_formats"
.LC5:
	.string	"supported_groups"
.LC6:
	.string	"session_ticket"
.LC7:
	.string	"status_request"
.LC8:
	.string	"next_proto_neg"
	.align 8
.LC9:
	.string	"application_layer_protocol_negotiation"
.LC10:
	.string	"use_srtp"
.LC11:
	.string	"encrypt_then_mac"
.LC12:
	.string	"signed_certificate_timestamp"
.LC13:
	.string	"extended_master_secret"
.LC14:
	.string	"signature_algorithms_cert"
.LC15:
	.string	"post_handshake_auth"
.LC16:
	.string	"client_cert_type"
.LC17:
	.string	"server_cert_type"
.LC18:
	.string	"signature_algorithms"
.LC19:
	.string	"supported_versions"
.LC20:
	.string	"psk_kex_modes"
.LC21:
	.string	"key_share"
.LC22:
	.string	"cookie"
.LC23:
	.string	"cryptopro_bug"
.LC24:
	.string	"compress_certificate"
.LC25:
	.string	"early_data"
.LC26:
	.string	"certificate_authorities"
.LC27:
	.string	"padding"
.LC28:
	.string	"psk"
.LC29:
	.string	"num_builtins"
	.section	.data.rel.local,"aw"
	.align 32
	.type	ext_list, @object
	.size	ext_list, 720
ext_list:
	.quad	0
	.long	65281
	.zero	4
	.quad	.LC0
	.quad	1
	.long	0
	.zero	4
	.quad	.LC1
	.quad	2
	.long	1
	.zero	4
	.quad	.LC2
	.quad	3
	.long	12
	.zero	4
	.quad	.LC3
	.quad	4
	.long	11
	.zero	4
	.quad	.LC4
	.quad	5
	.long	10
	.zero	4
	.quad	.LC5
	.quad	6
	.long	35
	.zero	4
	.quad	.LC6
	.quad	7
	.long	5
	.zero	4
	.quad	.LC7
	.quad	8
	.long	13172
	.zero	4
	.quad	.LC8
	.quad	9
	.long	16
	.zero	4
	.quad	.LC9
	.quad	10
	.long	14
	.zero	4
	.quad	.LC10
	.quad	11
	.long	22
	.zero	4
	.quad	.LC11
	.quad	12
	.long	18
	.zero	4
	.quad	.LC12
	.quad	13
	.long	23
	.zero	4
	.quad	.LC13
	.quad	14
	.long	50
	.zero	4
	.quad	.LC14
	.quad	15
	.long	49
	.zero	4
	.quad	.LC15
	.quad	16
	.long	19
	.zero	4
	.quad	.LC16
	.quad	17
	.long	20
	.zero	4
	.quad	.LC17
	.quad	18
	.long	13
	.zero	4
	.quad	.LC18
	.quad	19
	.long	43
	.zero	4
	.quad	.LC19
	.quad	20
	.long	45
	.zero	4
	.quad	.LC20
	.quad	21
	.long	51
	.zero	4
	.quad	.LC21
	.quad	22
	.long	44
	.zero	4
	.quad	.LC22
	.quad	23
	.long	65000
	.zero	4
	.quad	.LC23
	.quad	24
	.long	27
	.zero	4
	.quad	.LC24
	.quad	25
	.long	42
	.zero	4
	.quad	.LC25
	.quad	26
	.long	47
	.zero	4
	.quad	.LC26
	.quad	27
	.long	21
	.zero	4
	.quad	.LC27
	.quad	28
	.long	41
	.zero	4
	.quad	.LC28
	.quad	29
	.long	65537
	.zero	4
	.quad	.LC29
	.section	.rodata
.LC30:
	.string	"ext_list[i].idx"
.LC31:
	.string	"i"
.LC32:
	.string	"../test/ext_internal_test.c"
	.align 8
.LC33:
	.string	"TLSEXT_IDX_%s=%zd, found at=%zd\n"
.LC34:
	.string	"ext_list[i].type"
.LC35:
	.string	"type"
	.align 8
.LC36:
	.string	"TLSEXT_IDX_%s=%zd expected=0x%05X got=0x%05X"
	.text
	.type	test_extension_list, @function
test_extension_list:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$30, -24(%rbp)
	movl	$1, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L14
.L17:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ext_list(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ext_list(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+ext_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-8(%rbp), %rsi
	leaq	.LC33(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$90, %esi
	movl	$0, %eax
	call	test_error@PLT
.L15:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ext_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	ossl_get_extension_type@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+ext_list(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-28(%rbp), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+ext_list(%rip), %rax
	movl	(%rdx,%rax), %r8d
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ext_list(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+ext_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	subq	$8, %rsp
	movl	-28(%rbp), %ecx
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$96, %esi
	movl	$0, %eax
	call	test_error@PLT
	addq	$16, %rsp
.L16:
	addq	$1, -8(%rbp)
.L14:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L17
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	test_extension_list, .-test_extension_list
	.section	.rodata
.LC37:
	.string	"test_extension_list"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_extension_list(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

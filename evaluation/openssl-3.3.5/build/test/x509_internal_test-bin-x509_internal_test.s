	.file	"x509_internal_test.c"
	.text
	.section	.data.rel,"aw"
	.align 32
	.type	standard_exts, @object
	.size	standard_exts, 440
standard_exts:
	.quad	ossl_v3_nscert
	.quad	ossl_v3_ns_ia5_list
	.quad	ossl_v3_ns_ia5_list+104
	.quad	ossl_v3_ns_ia5_list+208
	.quad	ossl_v3_ns_ia5_list+312
	.quad	ossl_v3_ns_ia5_list+416
	.quad	ossl_v3_ns_ia5_list+520
	.quad	ossl_v3_ns_ia5_list+624
	.quad	ossl_v3_skey_id
	.quad	ossl_v3_key_usage
	.quad	ossl_v3_pkey_usage_period
	.quad	ossl_v3_alt
	.quad	ossl_v3_alt+104
	.quad	ossl_v3_bcons
	.quad	ossl_v3_crl_num
	.quad	ossl_v3_cpols
	.quad	ossl_v3_akey_id
	.quad	ossl_v3_crld
	.quad	ossl_v3_ext_ku
	.quad	ossl_v3_delta_crl
	.quad	ossl_v3_crl_reason
	.quad	ossl_v3_crl_invdate
	.quad	ossl_v3_sxnet
	.quad	ossl_v3_info
	.quad	ossl_v3_addr
	.quad	ossl_v3_asid
	.quad	ossl_v3_ocsp_nonce
	.quad	ossl_v3_ocsp_crlid
	.quad	ossl_v3_ocsp_accresp
	.quad	ossl_v3_ocsp_nocheck
	.quad	ossl_v3_ocsp_acutoff
	.quad	ossl_v3_ocsp_serviceloc
	.quad	ossl_v3_sinfo
	.quad	ossl_v3_policy_constraints
	.quad	ossl_v3_no_rev_avail
	.quad	ossl_v3_crl_hold
	.quad	ossl_v3_pci
	.quad	ossl_v3_name_constraints
	.quad	ossl_v3_policy_mappings
	.quad	ossl_v3_inhibit_anyp
	.quad	ossl_v3_idp
	.quad	ossl_v3_alt+208
	.quad	ossl_v3_freshest_crl
	.quad	ossl_v3_ct_scts
	.quad	ossl_v3_ct_scts+104
	.quad	ossl_v3_ct_scts+208
	.quad	ossl_v3_utf8_list
	.quad	ossl_v3_issuer_sign_tool
	.quad	ossl_v3_tls_feature
	.quad	ossl_v3_ext_admission
	.quad	ossl_v3_soa_identifier
	.quad	ossl_v3_indirect_issuer
	.quad	ossl_v3_no_assertion
	.quad	ossl_v3_single_use
	.quad	ossl_v3_group_ac
	.section	.rodata
.LC0:
	.string	"Extensions out of order!"
.LC1:
	.string	"../test/x509_internal_test.c"
.LC2:
	.string	"%d : %s"
	.text
	.type	test_standard_exts, @function
test_standard_exts:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$-1, -12(%rbp)
	movl	$1, -16(%rbp)
	leaq	standard_exts(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L3
	movl	$0, -16(%rbp)
.L3:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	addq	$1, -8(%rbp)
	addq	$8, -24(%rbp)
.L2:
	cmpq	$54, -8(%rbp)
	jbe	.L4
	cmpl	$0, -16(%rbp)
	jne	.L5
	leaq	standard_exts(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L6
.L7:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	leaq	.LC2(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	addq	$1, -8(%rbp)
	addq	$8, -24(%rbp)
.L6:
	cmpq	$54, -8(%rbp)
	jbe	.L7
.L5:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	test_standard_exts, .-test_standard_exts
	.section	.rodata
.LC3:
	.string	"127.0.0.1"
.LC4:
	.base64	"fwAAAQA="
.LC5:
	.string	"1.2.3.4"
.LC6:
	.base64	"AQIDBAA="
.LC7:
	.string	"1.2.3.255"
.LC8:
	.base64	"AQID/wA="
.LC9:
	.string	"1.2.3"
.LC10:
	.string	"1.2.3 .4"
.LC11:
	.string	"::1"
.LC12:
	.base64	"AAAAAAAAAAAAAAAAAAAAAQA="
.LC13:
	.string	"1:1:1:1:1:1:1:1"
.LC14:
	.base64	"AAEAAQABAAEAAQABAAEAAQA="
.LC15:
	.string	"2001:db8::ff00:42:8329"
.LC16:
	.base64	"IAENuAAAAAAAAP8AAEKDKQA="
.LC17:
	.string	"1:1:1:1:1:1:1:1.test"
.LC18:
	.string	":::1"
.LC19:
	.string	"2001::123g"
.LC20:
	.string	"example.test"
.LC21:
	.string	""
.LC22:
	.string	"1.2.3.4 "
.LC23:
	.string	" 1.2.3.4"
.LC24:
	.string	" 1.2.3.4 "
.LC25:
	.string	"1.2.3.4.example.test"
	.section	.data.rel.local,"aw"
	.align 32
	.type	a2i_ipaddress_tests, @object
	.size	a2i_ipaddress_tests, 408
a2i_ipaddress_tests:
	.quad	.LC3
	.quad	.LC4
	.long	4
	.zero	4
	.quad	.LC5
	.quad	.LC6
	.long	4
	.zero	4
	.quad	.LC7
	.quad	.LC8
	.long	4
	.zero	4
	.quad	.LC9
	.quad	0
	.long	0
	.zero	4
	.quad	.LC10
	.quad	0
	.long	0
	.zero	4
	.quad	.LC11
	.quad	.LC12
	.long	16
	.zero	4
	.quad	.LC13
	.quad	.LC14
	.long	16
	.zero	4
	.quad	.LC15
	.quad	.LC16
	.long	16
	.zero	4
	.quad	.LC17
	.quad	0
	.long	0
	.zero	4
	.quad	.LC18
	.quad	0
	.long	0
	.zero	4
	.quad	.LC19
	.quad	0
	.long	0
	.zero	4
	.quad	.LC20
	.quad	0
	.long	0
	.zero	4
	.quad	.LC21
	.quad	0
	.long	0
	.zero	4
	.quad	.LC22
	.quad	.LC6
	.long	4
	.zero	4
	.quad	.LC23
	.quad	.LC6
	.long	4
	.zero	4
	.quad	.LC24
	.quad	.LC6
	.long	4
	.zero	4
	.quad	.LC25
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
.LC26:
	.string	"ip"
	.align 8
.LC27:
	.string	"'%s' should not be parsed as IP address"
.LC28:
	.string	"len"
.LC29:
	.string	"ASN1_STRING_length(ip)"
.LC30:
	.string	"a2i_ipaddress_tests[idx].data"
.LC31:
	.string	"ASN1_STRING_get0_data(ip)"
	.text
	.type	test_a2i_ipaddress, @function
test_a2i_ipaddress:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -52(%rbp)
	movl	$1, -36(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+a2i_ipaddress_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	a2i_ipaddress_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L10
	movq	-48(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$89, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, -36(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	a2i_ipaddress_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L11
.L10:
	movq	-48(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$94, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, %esi
	movl	-40(%rbp), %edi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movl	-40(%rbp), %eax
	movslq	%eax, %r12
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+a2i_ipaddress_tests(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movl	-40(%rbp), %eax
	movslq	%eax, %r13
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%r12
	pushq	%rbx
	movq	%r13, %r9
	movq	%rsi, %r8
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L11
.L12:
	movl	$0, -36(%rbp)
.L11:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-36(%rbp), %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	test_a2i_ipaddress, .-test_a2i_ipaddress
	.section	.rodata
.LC32:
	.string	"test_standard_exts"
.LC33:
	.string	"test_a2i_ipaddress"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_standard_exts(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_a2i_ipaddress(%rip), %rsi
	leaq	.LC33(%rip), %rax
	movl	$1, %ecx
	movl	$17, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

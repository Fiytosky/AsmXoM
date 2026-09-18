	.file	"cmp_hdr_test.c"
	.text
	.type	ossl_check_const_ASN1_UTF8STRING_sk_type, @function
ossl_check_const_ASN1_UTF8STRING_sk_type:
.LFB309:
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
.LFE309:
	.size	ossl_check_const_ASN1_UTF8STRING_sk_type, .-ossl_check_const_ASN1_UTF8STRING_sk_type
	.type	ossl_check_const_OSSL_CMP_ITAV_sk_type, @function
ossl_check_const_OSSL_CMP_ITAV_sk_type:
.LFB576:
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
.LFE576:
	.size	ossl_check_const_OSSL_CMP_ITAV_sk_type, .-ossl_check_const_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
.LFB577:
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
.LFE577:
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_freefunc_type, @function
ossl_check_OSSL_CMP_ITAV_freefunc_type:
.LFB580:
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
.LFE580:
	.size	ossl_check_OSSL_CMP_ITAV_freefunc_type, .-ossl_check_OSSL_CMP_ITAV_freefunc_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB643:
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
.LFE643:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB644:
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
.LFE644:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	rand_data
	.comm	rand_data,16,16
	.section	.rodata
.LC0:
	.string	"../test/cmp_hdr_test.c"
	.text
	.type	tear_down, @function
tear_down:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKIHEADER_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	tear_down, .-tear_down
	.section	.rodata
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC2:
	.string	"fixture->cmp_ctx = OSSL_CMP_CTX_new(NULL, NULL)"
	.align 8
.LC3:
	.string	"fixture->hdr = OSSL_CMP_PKIHEADER_new()"
	.text
	.type	set_up, @function
set_up:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$35, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_CMP_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	call	OSSL_CMP_PKIHEADER_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$40, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	jmp	.L16
.L20:
	nop
	jmp	.L18
.L21:
	nop
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_up, .-set_up
	.section	.rodata
.LC4:
	.string	"1"
	.align 8
.LC5:
	.string	"ossl_cmp_hdr_set_pvno(fixture->hdr, pvno)"
.LC6:
	.string	"pvno"
	.align 8
.LC7:
	.string	"ossl_cmp_hdr_get_pvno(fixture->hdr)"
	.text
	.type	execute_HDR_set_get_pvno_test, @function
execute_HDR_set_get_pvno_test:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$77, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_pvno@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_pvno@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L24
.L25:
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	execute_HDR_set_get_pvno_test, .-execute_HDR_set_get_pvno_test
	.type	test_HDR_set_get_pvno, @function
test_HDR_set_get_pvno:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.12(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_set_get_pvno_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L29:
	movl	-4(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	test_HDR_set_get_pvno, .-test_HDR_set_get_pvno
	.section	.rodata
.LC8:
	.string	"sender"
.LC9:
	.string	"A common sender name"
.LC10:
	.string	"CN"
	.align 8
.LC11:
	.string	"OSSL_CMP_CTX_set1_subjectName(fixture->cmp_ctx, sender)"
	.align 8
.LC12:
	.string	"ossl_cmp_hdr_init(fixture->cmp_ctx, fixture->hdr)"
.LC13:
	.string	"0"
	.align 8
.LC14:
	.string	"ASN1_OCTET_STRING_cmp(fixture->cmp_ctx->senderNonce, sn)"
	.text
	.type	execute_HDR_get0_senderNonce_test, @function
execute_HDR_get0_senderNonce_test:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$78, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_subjectName@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_init@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L39
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get0_senderNonce@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L40
	movl	$1, -4(%rbp)
	jmp	.L32
.L37:
	nop
	jmp	.L32
.L38:
	nop
	jmp	.L32
.L39:
	nop
	jmp	.L32
.L40:
	nop
.L32:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	execute_HDR_get0_senderNonce_test, .-execute_HDR_get0_senderNonce_test
	.type	test_HDR_get0_senderNonce, @function
test_HDR_get0_senderNonce:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.11(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_get0_senderNonce_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L44:
	movl	-4(%rbp), %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	test_HDR_get0_senderNonce, .-test_HDR_get0_senderNonce
	.section	.rodata
.LC15:
	.string	"x509name"
	.align 8
.LC16:
	.string	"ossl_cmp_hdr_set1_sender(fixture->hdr, x509name)"
.LC17:
	.string	"GEN_DIRNAME"
.LC18:
	.string	"fixture->hdr->sender->type"
	.align 8
.LC19:
	.string	"X509_NAME_cmp(fixture->hdr->sender->d.directoryName, x509name)"
	.text
	.type	execute_HDR_set1_sender_test, @function
execute_HDR_set1_sender_test:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$113, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_sender@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	$1, -4(%rbp)
	jmp	.L47
.L52:
	nop
	jmp	.L47
.L53:
	nop
	jmp	.L47
.L54:
	nop
	jmp	.L47
.L55:
	nop
.L47:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	execute_HDR_set1_sender_test, .-execute_HDR_set1_sender_test
	.type	test_HDR_set1_sender, @function
test_HDR_set1_sender:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.10(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L59
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_set1_sender_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L59:
	movl	-4(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	test_HDR_set1_sender, .-test_HDR_set1_sender
	.section	.rodata
.LC20:
	.string	"A common recipient name"
	.align 8
.LC21:
	.string	"ossl_cmp_hdr_set1_recipient(fixture->hdr, x509name)"
.LC22:
	.string	"fixture->hdr->recipient->type"
	.align 8
.LC23:
	.string	"X509_NAME_cmp(fixture->hdr->recipient->d.directoryName, x509name)"
	.text
	.type	execute_HDR_set1_recipient_test, @function
execute_HDR_set1_recipient_test:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$147, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L67
	leaq	.LC20(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_recipient@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L68
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L70
	movl	$1, -4(%rbp)
	jmp	.L62
.L67:
	nop
	jmp	.L62
.L68:
	nop
	jmp	.L62
.L69:
	nop
	jmp	.L62
.L70:
	nop
.L62:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	execute_HDR_set1_recipient_test, .-execute_HDR_set1_recipient_test
	.type	test_HDR_set1_recipient, @function
test_HDR_set1_recipient:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.9(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_set1_recipient_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L74:
	movl	-4(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	test_HDR_set1_recipient, .-test_HDR_set1_recipient
	.section	.rodata
	.align 8
.LC24:
	.string	"ossl_cmp_hdr_update_messageTime(fixture->hdr)"
	.align 8
.LC25:
	.string	"ASN1_TIME_to_tm(fixture->hdr->messageTime, &hdrtm)"
.LC26:
	.string	"hdrtime"
.LC27:
	.string	"before"
.LC28:
	.string	"after"
	.text
	.type	execute_HDR_update_messageTime_test, @function
execute_HDR_update_messageTime_test:
.LFB749:
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
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -168(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	gmtime@PLT
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -112(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_update_messageTime@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L80
.L76:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L80
.L78:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$197, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -168(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	gmtime@PLT
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -112(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$203, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	execute_HDR_update_messageTime_test, .-execute_HDR_update_messageTime_test
	.type	test_HDR_update_messageTime, @function
test_HDR_update_messageTime:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.8(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L84
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_update_messageTime_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L84:
	movl	-4(%rbp), %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	test_HDR_update_messageTime, .-test_HDR_update_messageTime
	.section	.rodata
.LC29:
	.string	"senderKID"
	.align 8
.LC30:
	.string	"ASN1_OCTET_STRING_set(senderKID, rand_data, sizeof(rand_data))"
	.align 8
.LC31:
	.string	"ossl_cmp_hdr_set1_senderKID(fixture->hdr, senderKID)"
	.align 8
.LC32:
	.string	"ASN1_OCTET_STRING_cmp(fixture->hdr->senderKID, senderKID)"
	.text
	.type	execute_HDR_set1_senderKID_test, @function
execute_HDR_set1_senderKID_test:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$219, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	leaq	rand_data(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_senderKID@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$225, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L95
	movl	$1, -4(%rbp)
	jmp	.L87
.L92:
	nop
	jmp	.L87
.L93:
	nop
	jmp	.L87
.L94:
	nop
	jmp	.L87
.L95:
	nop
.L87:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	execute_HDR_set1_senderKID_test, .-execute_HDR_set1_senderKID_test
	.type	test_HDR_set1_senderKID, @function
test_HDR_set1_senderKID:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.7(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L99
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_set1_senderKID_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L99:
	movl	-4(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	test_HDR_set1_senderKID, .-test_HDR_set1_senderKID
	.section	.rodata
.LC33:
	.string	"text"
.LC34:
	.string	"A free text"
	.align 8
.LC35:
	.string	"ossl_cmp_hdr_push0_freeText(fixture->hdr, text)"
	.align 8
.LC36:
	.string	"text == sk_ASN1_UTF8STRING_value(fixture->hdr->freeText, 0)"
	.text
	.type	execute_HDR_push0_freeText_test, @function
execute_HDR_push0_freeText_test:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ASN1_UTF8STRING_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$248, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	leaq	.LC34(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L107
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_push0_freeText@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$254, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L109
	movl	$1, %eax
	jmp	.L102
.L107:
	nop
	jmp	.L104
.L108:
	nop
	jmp	.L104
.L109:
	nop
.L104:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movl	$0, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	execute_HDR_push0_freeText_test, .-execute_HDR_push0_freeText_test
	.type	test_HDR_push0_freeText, @function
test_HDR_push0_freeText:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.6(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L113
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_push0_freeText_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L113:
	movl	-4(%rbp), %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	test_HDR_push0_freeText, .-test_HDR_push0_freeText
	.section	.rodata
	.align 8
.LC37:
	.string	"ossl_cmp_hdr_push1_freeText(fixture->hdr, text)"
	.align 8
.LC38:
	.string	"ASN1_STRING_cmp(text, pushed_text)"
	.text
	.type	execute_HDR_push1_freeText_test, @function
execute_HDR_push1_freeText_test:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	ASN1_UTF8STRING_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	leaq	.LC34(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L122
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_push1_freeText@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$287, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L123
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$291, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movl	$1, -4(%rbp)
	jmp	.L116
.L121:
	nop
	jmp	.L116
.L122:
	nop
	jmp	.L116
.L123:
	nop
	jmp	.L116
.L124:
	nop
.L116:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	execute_HDR_push1_freeText_test, .-execute_HDR_push1_freeText_test
	.type	test_HDR_push1_freeText, @function
test_HDR_push1_freeText:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.5(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L128
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_push1_freeText_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L128:
	movl	-4(%rbp), %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	test_HDR_push1_freeText, .-test_HDR_push1_freeText
	.section	.rodata
.LC39:
	.string	"itav"
	.align 8
.LC40:
	.string	"ossl_cmp_hdr_generalInfo_push0_item(fixture->hdr, itav)"
	.align 8
.LC41:
	.string	"itav == sk_OSSL_CMP_ITAV_value(fixture->hdr->generalInfo, 0)"
	.text
	.type	execute_HDR_generalInfo_push0_item_test, @function
execute_HDR_generalInfo_push0_item_test:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$314, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_generalInfo_push0_item@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$317, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L132
	movl	$0, %eax
	jmp	.L131
.L132:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L131
.L133:
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	execute_HDR_generalInfo_push0_item_test, .-execute_HDR_generalInfo_push0_item_test
	.type	test_HDR_generalInfo_push0_item, @function
test_HDR_generalInfo_push0_item:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.4(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L137
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_generalInfo_push0_item_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L137:
	movl	-4(%rbp), %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	test_HDR_generalInfo_push0_item, .-test_HDR_generalInfo_push0_item
	.section	.rodata
.LC42:
	.string	"asn1int"
.LC43:
	.string	"val"
.LC44:
	.string	"ASN1_INTEGER_set(asn1int, 88)"
	.align 8
.LC45:
	.string	"itav = OSSL_CMP_ITAV_create(OBJ_txt2obj(oid, 1), val)"
	.align 8
.LC46:
	.string	"OSSL_CMP_ITAV_push0_stack_item(&itavs, itav)"
	.align 8
.LC47:
	.string	"ossl_cmp_hdr_generalInfo_push1_items(fixture->hdr, itavs)"
.LC48:
	.string	"memcmp(oid, buf, sizeof(oid))"
	.align 8
.LC49:
	.string	"ASN1_TYPE_cmp(itav->infoValue.other, pushed_val)"
	.text
	.type	execute_HDR_generalInfo_push1_items_test, @function
execute_HDR_generalInfo_push1_items_test:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movabsq	$14687496142204465, %rax
	movq	%rax, -80(%rbp)
	movq	$0, -120(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -32(%rbp)
	call	ASN1_TYPE_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$348, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L139
	movl	$0, %eax
	jmp	.L149
.L139:
	movq	-40(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$351, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L141
	movq	-32(%rbp), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L142
.L141:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
	jmp	.L149
.L142:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	leaq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_CMP_ITAV_create@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$358, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L143
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movl	$0, %eax
	jmp	.L149
.L143:
	movq	-48(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_push0_stack_item@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$362, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L144
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
	jmp	.L149
.L144:
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_generalInfo_push1_items@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$367, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L150
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_type@PLT
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$20, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L151
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_value@PLT
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_cmp@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$377, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L152
	movl	$1, -20(%rbp)
	jmp	.L146
.L150:
	nop
	jmp	.L146
.L151:
	nop
	jmp	.L146
.L152:
	nop
.L146:
	movq	OSSL_CMP_ITAV_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_freefunc_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-20(%rbp), %eax
.L149:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	execute_HDR_generalInfo_push1_items_test, .-execute_HDR_generalInfo_push1_items_test
	.type	test_HDR_generalInfo_push1_items, @function
test_HDR_generalInfo_push1_items:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.3(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L156
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_generalInfo_push1_items_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L156:
	movl	-4(%rbp), %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	test_HDR_generalInfo_push1_items, .-test_HDR_generalInfo_push1_items
	.section	.rodata
	.align 8
.LC50:
	.string	"ossl_cmp_hdr_has_implicitConfirm(fixture->hdr)"
	.align 8
.LC51:
	.string	"ossl_cmp_hdr_set_implicitConfirm(fixture->hdr)"
	.text
	.type	execute_HDR_set_and_check_implicitConfirm_test, @function
execute_HDR_set_and_check_implicitConfirm_test:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_has_implicitConfirm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$399, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L158
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_implicitConfirm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L158
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_has_implicitConfirm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$401, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L158
	movl	$1, %eax
	jmp	.L160
.L158:
	movl	$0, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	execute_HDR_set_and_check_implicitConfirm_test, .-execute_HDR_set_and_check_implicitConfirm_test
	.type	test_HDR_set_and_check_implicit_confirm, @function
test_HDR_set_and_check_implicit_confirm:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L162
	movl	$0, %eax
	jmp	.L163
.L162:
	cmpq	$0, -16(%rbp)
	je	.L164
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_set_and_check_implicitConfirm_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L164:
	movl	-4(%rbp), %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	test_HDR_set_and_check_implicit_confirm, .-test_HDR_set_and_check_implicit_confirm
	.section	.rodata
.LC52:
	.string	"fixture->expected"
.LC53:
	.string	"OSSL_CMP_PVNO"
	.align 8
.LC54:
	.string	"ASN1_OCTET_STRING_cmp(header_nonce, fixture->cmp_ctx->senderNonce)"
	.align 8
.LC55:
	.string	"ASN1_OCTET_STRING_cmp(header_transactionID, fixture->cmp_ctx->transactionID) == 0"
.LC56:
	.string	"header_nonce"
	.align 8
.LC57:
	.string	"ASN1_OCTET_STRING_cmp(header_nonce, ctx_nonce)"
	.text
	.type	execute_HDR_init_test, @function
execute_HDR_init_test:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_init@PLT
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	leaq	.LC12(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$416, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L168
	movl	$1, %eax
	jmp	.L167
.L168:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_pvno@PLT
	movl	%eax, %esi
	leaq	.LC53(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$422, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L167
.L169:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get0_senderNonce@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	288(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC54(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$426, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L170
	movl	$0, %eax
	jmp	.L167
.L170:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_HDR_get0_transactionID@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	280(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$430, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L171
	movl	$0, %eax
	jmp	.L167
.L171:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_HDR_get0_recipNonce@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	296(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L172
	movq	-8(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$437, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L173
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC57(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$438, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L172
.L173:
	movl	$0, %eax
	jmp	.L167
.L172:
	movl	$1, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	execute_HDR_init_test, .-execute_HDR_init_test
	.section	.rodata
.LC58:
	.string	"RAND_bytes(ref, sizeof(ref))"
	.align 8
.LC59:
	.string	"OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx, ref, sizeof(ref))"
	.text
	.type	test_HDR_init_with_ref, @function
test_HDR_init_with_ref:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L175
	movl	$0, %eax
	jmp	.L180
.L175:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	leaq	-27(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC58(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$452, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L177
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-27(%rbp), %rcx
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L178
.L177:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L178:
	cmpq	$0, -8(%rbp)
	je	.L179
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_init_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L179:
	movl	-12(%rbp), %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	test_HDR_init_with_ref, .-test_HDR_init_with_ref
	.section	.rodata
.LC60:
	.string	"subject = X509_NAME_new()"
.LC61:
	.string	"Common Name"
	.align 8
.LC62:
	.string	"X509_NAME_ADD(subject, \"CN\", \"Common Name\")"
	.align 8
.LC63:
	.string	"OSSL_CMP_CTX_set1_subjectName(fixture->cmp_ctx, subject)"
	.text
	.type	test_HDR_init_with_subject, @function
test_HDR_init_with_subject:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -24(%rbp)
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L182
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	call	X509_NAME_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$468, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	leaq	.LC61(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$469, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L184
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_subjectName@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$470, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L185
.L184:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L185:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_HDR_init_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L186:
	movl	-12(%rbp), %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	test_HDR_init_with_subject, .-test_HDR_init_with_subject
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC64:
	.string	"test_HDR_set_get_pvno"
.LC65:
	.string	"test_HDR_get0_senderNonce"
.LC66:
	.string	"test_HDR_set1_sender"
.LC67:
	.string	"test_HDR_set1_recipient"
.LC68:
	.string	"test_HDR_update_messageTime"
.LC69:
	.string	"test_HDR_set1_senderKID"
.LC70:
	.string	"test_HDR_push0_freeText"
.LC71:
	.string	"test_HDR_push1_freeText"
	.align 8
.LC72:
	.string	"test_HDR_generalInfo_push0_item"
	.align 8
.LC73:
	.string	"test_HDR_generalInfo_push1_items"
	.align 8
.LC74:
	.string	"test_HDR_set_and_check_implicit_confirm"
.LC75:
	.string	"test_HDR_init_with_ref"
.LC76:
	.string	"test_HDR_init_with_subject"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rand_data(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	test_HDR_set_get_pvno(%rip), %rdx
	leaq	.LC64(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_get0_senderNonce(%rip), %rdx
	leaq	.LC65(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_set1_sender(%rip), %rdx
	leaq	.LC66(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_set1_recipient(%rip), %rdx
	leaq	.LC67(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_update_messageTime(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_set1_senderKID(%rip), %rdx
	leaq	.LC69(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_push0_freeText(%rip), %rdx
	leaq	.LC70(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_push1_freeText(%rip), %rdx
	leaq	.LC71(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_generalInfo_push0_item(%rip), %rdx
	leaq	.LC72(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_generalInfo_push1_items(%rip), %rdx
	leaq	.LC73(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_set_and_check_implicit_confirm(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_init_with_ref(%rip), %rdx
	leaq	.LC75(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_HDR_init_with_subject(%rip), %rdx
	leaq	.LC76(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 22
__func__.12:
	.string	"test_HDR_set_get_pvno"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 26
__func__.11:
	.string	"test_HDR_get0_senderNonce"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"test_HDR_set1_sender"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 24
__func__.9:
	.string	"test_HDR_set1_recipient"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 28
__func__.8:
	.string	"test_HDR_update_messageTime"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 24
__func__.7:
	.string	"test_HDR_set1_senderKID"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"test_HDR_push0_freeText"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 24
__func__.5:
	.string	"test_HDR_push1_freeText"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 32
__func__.4:
	.string	"test_HDR_generalInfo_push0_item"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 33
__func__.3:
	.string	"test_HDR_generalInfo_push1_items"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 40
__func__.2:
	.string	"test_HDR_set_and_check_implicit_confirm"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"test_HDR_init_with_ref"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"test_HDR_init_with_subject"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

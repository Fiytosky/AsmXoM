	.file	"cmp_status_test.c"
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
	.section	.rodata
.LC0:
	.string	"../test/cmp_status_test.c"
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.text
	.type	set_up, @function
set_up:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$26, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	set_up, .-set_up
	.type	tear_down, @function
tear_down:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	tear_down, .-tear_down
	.section	.rodata
	.align 8
.LC2:
	.string	"si = OSSL_CMP_STATUSINFO_new(fixture->pkistatus, fixture->pkifailure, fixture->text)"
.LC3:
	.string	"status"
.LC4:
	.string	"fixture->pkistatus"
	.align 8
.LC5:
	.string	"ossl_cmp_PKIStatus_to_string(status)"
.LC6:
	.string	"fixture->str"
	.align 8
.LC7:
	.string	"statusString = sk_ASN1_UTF8STRING_value(ossl_cmp_pkisi_get0_statusString(si), 0)"
.LC8:
	.string	"(char *)statusString->data"
.LC9:
	.string	"fixture->text"
	.align 8
.LC10:
	.string	"ossl_cmp_pkisi_get_pkifailureinfo(si)"
.LC11:
	.string	"fixture->pkifailure"
	.align 8
.LC12:
	.string	"ossl_cmp_pkisi_check_pkifailureinfo(si, i)"
	.align 8
.LC13:
	.string	"(fixture->pkifailure >> i) & 1"
	.text
	.type	execute_PKISI_test, @function
execute_PKISI_test:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %esi
	movl	-44(%rbp), %edi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_PKIStatus_to_string@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$54, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get0_statusString@PLT
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L25
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_pkifailureinfo@PLT
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movl	32(%rax), %edi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	$0, -24(%rbp)
	jmp	.L19
.L21:
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_check_pkifailureinfo@PLT
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movl	32(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %edi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	addl	$1, -24(%rbp)
.L19:
	cmpl	$26, -24(%rbp)
	jle	.L21
	movl	$1, -20(%rbp)
	jmp	.L13
.L23:
	nop
	jmp	.L13
.L24:
	nop
	jmp	.L13
.L25:
	nop
	jmp	.L13
.L26:
	nop
	jmp	.L13
.L27:
	nop
.L13:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movl	-20(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	execute_PKISI_test, .-execute_PKISI_test
	.section	.rodata
	.align 8
.LC14:
	.string	"PKIStatus: revocation notification - a revocation of the cert has occurred"
	.align 8
.LC15:
	.string	"this is an additional text describing the failure"
	.text
	.type	test_PKISI, @function
test_PKISI:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	movl	$5, 8(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$4194336, 32(%rax)
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_PKISI_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L31:
	movl	-4(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	test_PKISI, .-test_PKISI
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB743:
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
.LFE743:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC16:
	.string	"test_PKISI"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_PKISI(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"test_PKISI"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

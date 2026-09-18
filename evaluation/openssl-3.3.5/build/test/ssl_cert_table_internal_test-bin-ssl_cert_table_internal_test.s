	.file	"ssl_cert_table_internal_test.c"
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
	.align 32
	.type	ssl_cert_info, @object
	.size	ssl_cert_info, 72
ssl_cert_info:
	.long	6
	.long	1
	.long	912
	.long	1
	.long	116
	.long	2
	.long	408
	.long	8
	.long	811
	.long	32
	.long	979
	.long	128
	.long	980
	.long	128
	.long	1087
	.long	8
	.long	1088
	.long	8
	.align 8
.LC0:
	.string	"Invalid table entry for certificate type %s, index %zu"
	.align 8
.LC1:
	.string	"../test/ssl_cert_table_internal_test.c"
.LC2:
	.string	"Expected %s, got %s\n"
	.align 8
.LC3:
	.string	"Expected auth mask 0x%x, got 0x%x\n"
	.text
	.type	do_test_cert_table, @function
do_test_cert_table:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ssl_cert_info(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L14
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$32, %esi
	movl	$0, %eax
	call	test_error@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L16
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rbx
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
.L16:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -40(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movl	-40(%rbp), %eax
	leaq	.LC3(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
.L17:
	movl	$0, %eax
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	do_test_cert_table, .-do_test_cert_table
	.section	.rodata
.LC4:
	.string	"SSL_PKEY_NUM"
.LC5:
	.string	"OSSL_NELEM(ssl_cert_info)"
.LC6:
	.string	"SSL_PKEY_RSA"
.LC7:
	.string	"SSL_PKEY_DSA_SIGN"
.LC8:
	.string	"SSL_PKEY_ECC"
.LC9:
	.string	"SSL_PKEY_GOST01"
.LC10:
	.string	"SSL_PKEY_GOST12_256"
.LC11:
	.string	"SSL_PKEY_GOST12_512"
.LC12:
	.string	"SSL_PKEY_ED25519"
.LC13:
	.string	"SSL_PKEY_ED448"
	.text
	.type	test_ssl_cert_table, @function
test_ssl_cert_table:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	$9, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L19
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movl	$6, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$2, %esi
	movl	$116, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$8, %esi
	movl	$408, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$32, %esi
	movl	$811, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$128, %esi
	movl	$979, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$128, %esi
	movl	$980, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	movl	$7, %edx
	movl	$8, %esi
	movl	$1087, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$8, %esi
	movl	$1088, %edi
	call	do_test_cert_table
	testl	%eax, %eax
	je	.L19
	movl	$1, %eax
	jmp	.L21
.L19:
	movl	$0, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	test_ssl_cert_table, .-test_ssl_cert_table
	.section	.rodata
.LC14:
	.string	"test_ssl_cert_table"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_ssl_cert_table(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

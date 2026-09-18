	.file	"upcallstest.c"
	.text
	.type	OSSL_FUNC_core_obj_add_sigid, @function
OSSL_FUNC_core_obj_add_sigid:
.LFB129:
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
.LFE129:
	.size	OSSL_FUNC_core_obj_add_sigid, .-OSSL_FUNC_core_obj_add_sigid
	.type	OSSL_FUNC_core_obj_create, @function
OSSL_FUNC_core_obj_create:
.LFB130:
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
.LFE130:
	.size	OSSL_FUNC_core_obj_create, .-OSSL_FUNC_core_obj_create
	.type	obj_query, @function
obj_query:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	obj_query, .-obj_query
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	obj_dispatch_table, @object
	.size	obj_dispatch_table, 32
obj_dispatch_table:
	.long	1027
	.zero	4
	.quad	obj_query
	.long	0
	.zero	4
	.quad	0
	.local	c_obj_add_sigid
	.comm	c_obj_add_sigid,8,8
	.local	c_obj_create
	.comm	c_obj_create,8,8
	.section	.rodata
.LC0:
	.string	"my-digest-long"
.LC1:
	.string	"my-digest"
.LC2:
	.string	"1.3.6.1.4.1.16604.998877.2"
.LC3:
	.string	"my-sig-long"
.LC4:
	.string	"my-sig"
.LC5:
	.string	"1.3.6.1.4.1.16604.998877.1"
.LC6:
	.string	"my-sigalg-long"
.LC7:
	.string	"my-sigalg"
.LC8:
	.string	"1.3.6.1.4.1.16604.998877.3"
.LC9:
	.string	"my-nodig-sig-long"
.LC10:
	.string	"my-nodig-sig"
.LC11:
	.string	"1.3.6.1.4.1.16604.998877.4"
.LC12:
	.string	"my-nodig-sigalg-long"
.LC13:
	.string	"my-nodig-sigalg"
.LC14:
	.string	"1.3.6.1.4.1.16604.998877.5"
.LC15:
	.string	""
.LC16:
	.string	"NonsenseAlg"
	.text
	.type	obj_provider_init, @function
obj_provider_init:
.LFB469:
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
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	obj_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L8
.L13:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	.L9
	cmpl	$12, %eax
	je	.L10
	jmp	.L12
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_obj_add_sigid
	movq	%rax, c_obj_add_sigid(%rip)
	jmp	.L12
.L10:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_obj_create
	movq	%rax, c_obj_create(%rip)
	nop
.L12:
	addq	$16, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L13
	movq	c_obj_create(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L14
	movq	c_obj_create(%rip), %r8
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L14
	movq	c_obj_create(%rip), %r8
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	c_obj_create(%rip), %r8
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L17
	movq	c_obj_create(%rip), %r8
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L16
.L18:
	movq	c_obj_add_sigid(%rip), %r8
	leaq	.LC3(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L16
.L19:
	movq	c_obj_add_sigid(%rip), %r8
	leaq	.LC9(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L16
.L20:
	movq	c_obj_add_sigid(%rip), %r8
	leaq	.LC9(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L21
	movl	$0, %eax
	jmp	.L16
.L21:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	obj_provider_init, .-obj_provider_init
	.section	.rodata
.LC17:
	.string	"libctx"
.LC18:
	.string	"../test/upcallstest.c"
.LC19:
	.string	"obj-prov"
	.align 8
.LC20:
	.string	"OSSL_PROVIDER_add_builtin(libctx, \"obj-prov\", obj_provider_init)"
	.align 8
.LC21:
	.string	"objprov = OSSL_PROVIDER_load(libctx, \"obj-prov\")"
.LC22:
	.string	"NID_undef"
.LC23:
	.string	"sigalgnid"
	.align 8
.LC24:
	.string	"OBJ_find_sigid_algs(sigalgnid, &digestnid, &signid)"
.LC25:
	.string	"digestnid"
.LC26:
	.string	"signid"
.LC27:
	.string	"OBJ_sn2nid(DIGEST_SN)"
.LC28:
	.string	"OBJ_ln2nid(SIG_LN)"
.LC29:
	.string	"SHA512"
	.text
	.type	obj_create_test, @function
obj_create_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rdi
	movq	%rax, %rcx
	movl	$101, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	leaq	obj_provider_init(%rip), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC18(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	leaq	.LC19(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC18(%rip), %rdi
	movq	%rax, %rcx
	movl	$106, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movl	-44(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC18(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movl	-48(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L42
	movl	-52(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %esi
	movl	-48(%rbp), %edi
	leaq	.LC27(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$115, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, %esi
	movl	-52(%rbp), %edi
	leaq	.LC28(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movl	-44(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC18(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	-48(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	movl	-52(%rbp), %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L43
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -44(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -48(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %ecx
	leaq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	je	.L31
	movl	-56(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	je	.L32
.L31:
	movl	$0, %eax
	jmp	.L39
.L32:
	movl	-52(%rbp), %ebx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %ecx
	leaq	-56(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	je	.L34
	movl	-56(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L39
.L34:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -44(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -48(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %ecx
	leaq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	je	.L35
	movl	-56(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	je	.L36
.L35:
	movl	$0, %eax
	jmp	.L39
.L36:
	movl	$0, -48(%rbp)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %ecx
	leaq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OBJ_find_sigid_by_algs@PLT
	testl	%eax, %eax
	je	.L37
	movl	-56(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	je	.L38
.L37:
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	$1, -28(%rbp)
	jmp	.L24
.L40:
	nop
	jmp	.L24
.L41:
	nop
	jmp	.L24
.L42:
	nop
	jmp	.L24
.L43:
	nop
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-28(%rbp), %eax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	obj_create_test, .-obj_create_test
	.section	.rodata
.LC30:
	.string	"obj_create_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	obj_create_test(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

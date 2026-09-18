	.file	"ec_backend.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB508:
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
.LFE508:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB509:
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
.LFE509:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"explicit"
.LC1:
	.string	"named_curve"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	encoding_nameid_map, @object
	.size	encoding_nameid_map, 32
encoding_nameid_map:
	.long	0
	.zero	4
	.quad	.LC0
	.long	1
	.zero	4
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"default"
.LC3:
	.string	"named"
.LC4:
	.string	"named-nist"
	.section	.data.rel.ro.local
	.align 32
	.type	check_group_type_nameid_map, @object
	.size	check_group_type_nameid_map, 48
check_group_type_nameid_map:
	.long	0
	.zero	4
	.quad	.LC2
	.long	8192
	.zero	4
	.quad	.LC3
	.long	16384
	.zero	4
	.quad	.LC4
	.section	.rodata
.LC5:
	.string	"uncompressed"
.LC6:
	.string	"compressed"
.LC7:
	.string	"hybrid"
	.section	.data.rel.ro.local
	.align 32
	.type	format_nameid_map, @object
	.size	format_nameid_map, 48
format_nameid_map:
	.long	4
	.zero	4
	.quad	.LC5
	.long	2
	.zero	4
	.quad	.LC6
	.long	6
	.zero	4
	.quad	.LC7
	.text
	.globl	ossl_ec_encoding_name2id
	.type	ossl_ec_encoding_name2id, @function
ossl_ec_encoding_name2id:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movq	$0, -8(%rbp)
	movq	$2, -16(%rbp)
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+encoding_nameid_map(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	encoding_nameid_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L7
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L10
	movl	$-1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ossl_ec_encoding_name2id, .-ossl_ec_encoding_name2id
	.type	ec_param_encoding_id2name, @function
ec_param_encoding_id2name:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movq	$2, -16(%rbp)
	jmp	.L12
.L15:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	encoding_nameid_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L13
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+encoding_nameid_map(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L14
.L13:
	addq	$1, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L15
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	ec_param_encoding_id2name, .-ec_param_encoding_id2name
	.globl	ossl_ec_check_group_type_id2name
	.type	ossl_ec_check_group_type_id2name, @function
ossl_ec_check_group_type_id2name:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movq	$3, -16(%rbp)
	jmp	.L17
.L20:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	check_group_type_nameid_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L18
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+check_group_type_nameid_map(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L19
.L18:
	addq	$1, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L20
	movl	$0, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ossl_ec_check_group_type_id2name, .-ossl_ec_check_group_type_id2name
	.type	ec_check_group_type_name2id, @function
ec_check_group_type_name2id:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	$0, -8(%rbp)
	movq	$3, -16(%rbp)
	jmp	.L24
.L26:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+check_group_type_nameid_map(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	check_group_type_nameid_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L23
.L25:
	addq	$1, -8(%rbp)
.L24:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L26
	movl	$-1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ec_check_group_type_name2id, .-ec_check_group_type_name2id
	.globl	ossl_ec_set_check_group_type_from_name
	.type	ossl_ec_set_check_group_type_from_name, @function
ossl_ec_set_check_group_type_from_name:
.LFB528:
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
	movq	%rax, %rdi
	call	ec_check_group_type_name2id
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	movl	$24576, %esi
	movq	%rax, %rdi
	call	EC_KEY_clear_flags@PLT
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	ossl_ec_set_check_group_type_from_name, .-ossl_ec_set_check_group_type_from_name
	.type	ec_set_check_group_type_from_param, @function
ec_set_check_group_type_from_param:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L31
	cmpl	$6, %eax
	je	.L32
	jmp	.L33
.L31:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L33
.L32:
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	movl	%eax, -4(%rbp)
	nop
.L33:
	cmpl	$0, -4(%rbp)
	je	.L34
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_set_check_group_type_from_name@PLT
	jmp	.L36
.L34:
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ec_set_check_group_type_from_param, .-ec_set_check_group_type_from_param
	.globl	ossl_ec_pt_format_name2id
	.type	ossl_ec_pt_format_name2id, @function
ossl_ec_pt_format_name2id:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L38
	movl	$4, %eax
	jmp	.L39
.L38:
	movq	$0, -8(%rbp)
	movq	$3, -16(%rbp)
	jmp	.L40
.L42:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+format_nameid_map(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L41
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	format_nameid_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L39
.L41:
	addq	$1, -8(%rbp)
.L40:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L42
	movl	$-1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ossl_ec_pt_format_name2id, .-ossl_ec_pt_format_name2id
	.globl	ossl_ec_pt_format_id2name
	.type	ossl_ec_pt_format_id2name, @function
ossl_ec_pt_format_id2name:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movq	$3, -16(%rbp)
	jmp	.L44
.L47:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	format_nameid_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L45
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+format_nameid_map(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L46
.L45:
	addq	$1, -8(%rbp)
.L44:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L47
	movl	$0, %eax
.L46:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ossl_ec_pt_format_id2name, .-ossl_ec_pt_format_id2name
	.section	.rodata
.LC8:
	.string	"prime-field"
.LC9:
	.string	"characteristic-two-field"
.LC10:
	.string	"../crypto/ec/ec_backend.c"
.LC11:
	.string	"p"
.LC12:
	.string	"a"
.LC13:
	.string	"b"
.LC14:
	.string	"order"
.LC15:
	.string	"field-type"
.LC16:
	.string	"generator"
.LC17:
	.string	"cofactor"
.LC18:
	.string	"seed"
	.text
	.type	ec_group_explicit_todata, @function
ec_group_explicit_todata:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -52(%rbp)
	cmpl	$406, -52(%rbp)
	jne	.L49
	leaq	.LC8(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L50
.L49:
	cmpl	$407, -52(%rbp)
	jne	.L51
	leaq	.LC9(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L50
.L51:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L50:
	leaq	.LC11(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC12(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC13(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L53
	cmpq	$0, -32(%rbp)
	jne	.L53
	cmpq	$0, -40(%rbp)
	jne	.L53
	cmpq	$0, -48(%rbp)
	je	.L54
.L53:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L55:
	movq	-176(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L57:
	movq	-64(%rbp), %rdx
	leaq	.LC11(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L58
	movq	-72(%rbp), %rdx
	leaq	.LC12(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L58
	movq	-80(%rbp), %rdx
	leaq	.LC13(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L54
.L58:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L54:
	leaq	.LC14(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L59
	cmpq	$0, -24(%rbp)
	je	.L60
.L59:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L61:
	movq	-88(%rbp), %rdx
	leaq	.LC14(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L60:
	leaq	.LC15(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L62
	cmpq	$0, -24(%rbp)
	je	.L63
.L62:
	movq	-16(%rbp), %rdx
	leaq	.LC15(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L63:
	leaq	.LC16(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L64
	cmpq	$0, -24(%rbp)
	je	.L65
.L64:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_point_conversion_form@PLT
	movl	%eax, -100(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L66:
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rcx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L67:
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-112(%rbp), %rcx
	leaq	.LC16(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L65:
	leaq	.LC17(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L68
	cmpq	$0, -24(%rbp)
	je	.L69
.L68:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L69
	movq	-120(%rbp), %rdx
	leaq	.LC17(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L69:
	leaq	.LC18(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L70
	cmpq	$0, -24(%rbp)
	je	.L71
.L70:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L71
	cmpq	$0, -136(%rbp)
	je	.L71
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	.LC18(%rip), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L71:
	movl	$1, -4(%rbp)
.L56:
	movl	-4(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	ec_group_explicit_todata, .-ec_group_explicit_todata
	.section	.rodata
.LC19:
	.string	"point-format"
.LC20:
	.string	"encoding"
.LC21:
	.string	"decoded-from-explicit"
.LC22:
	.string	"group"
	.text
	.globl	ossl_ec_group_todata
	.type	ossl_ec_group_todata, @function
ossl_ec_group_todata:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_point_conversion_form@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ec_pt_format_id2name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L75
	movq	-16(%rbp), %rdx
	leaq	.LC19(%rip), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L76
.L75:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L76:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ec_param_encoding_id2name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L77
	movq	-32(%rbp), %rdx
	leaq	.LC20(%rip), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L78
.L77:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$318, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L78:
	movq	-56(%rbp), %rax
	movl	40(%rax), %edx
	leaq	.LC21(%rip), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L74
.L79:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -36(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L80
	cmpl	$0, -36(%rbp)
	jne	.L81
.L80:
	movq	16(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ec_group_explicit_todata
	testl	%eax, %eax
	je	.L85
.L81:
	cmpl	$0, -36(%rbp)
	je	.L83
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OSSL_EC_curve_nid2name@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L84
	movq	-48(%rbp), %rdx
	leaq	.LC22(%rip), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L83
.L84:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L82
.L83:
	movl	$1, -4(%rbp)
	jmp	.L82
.L85:
	nop
.L82:
	movl	-4(%rbp), %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_ec_group_todata, .-ossl_ec_group_todata
	.globl	ossl_ec_set_ecdh_cofactor_mode
	.type	ossl_ec_set_ecdh_cofactor_mode, @function
ossl_ec_set_ecdh_cofactor_mode:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L87
	cmpl	$1, -28(%rbp)
	jle	.L88
.L87:
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L89
.L90:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L91
	movl	$1, %eax
	jmp	.L89
.L91:
	cmpl	$1, -28(%rbp)
	jne	.L92
	movq	-24(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
	jmp	.L93
.L92:
	cmpl	$0, -28(%rbp)
	jne	.L93
	movq	-24(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	EC_KEY_clear_flags@PLT
.L93:
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	ossl_ec_set_ecdh_cofactor_mode, .-ossl_ec_set_ecdh_cofactor_mode
	.section	.rodata
.LC23:
	.string	"pub"
.LC24:
	.string	"priv"
	.text
	.globl	ossl_ec_key_fromdata
	.type	ossl_ec_key_fromdata, @function
ossl_ec_key_fromdata:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L109
.L95:
	leaq	.LC23(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L97
	leaq	.LC24(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
.L97:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L110
	cmpq	$0, -32(%rbp)
	je	.L100
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	je	.L111
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	je	.L111
.L100:
	cmpq	$0, -8(%rbp)
	je	.L102
	cmpl	$0, -116(%rbp)
	je	.L102
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L112
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L112
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	addl	$2, %eax
	movl	%eax, -60(%rbp)
	call	BN_secure_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L113
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L114
	movq	-72(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L115
.L102:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L107
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	testl	%eax, %eax
	je	.L116
.L107:
	cmpq	$0, -16(%rbp)
	je	.L108
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_public_key@PLT
	testl	%eax, %eax
	je	.L117
.L108:
	movl	$1, -20(%rbp)
	jmp	.L99
.L110:
	nop
	jmp	.L99
.L111:
	nop
	jmp	.L99
.L112:
	nop
	jmp	.L99
.L113:
	nop
	jmp	.L99
.L114:
	nop
	jmp	.L99
.L115:
	nop
	jmp	.L99
.L116:
	nop
	jmp	.L99
.L117:
	nop
.L99:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$495, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-20(%rbp), %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ossl_ec_key_fromdata, .-ossl_ec_key_fromdata
	.globl	ossl_ec_group_fromdata
	.type	ossl_ec_group_fromdata, @function
ossl_ec_group_fromdata:
.LFB536:
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
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_new_from_params@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	je	.L123
	movl	$1, -20(%rbp)
	jmp	.L122
.L123:
	nop
.L122:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-20(%rbp), %eax
.L120:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	ossl_ec_group_fromdata, .-ossl_ec_group_fromdata
	.type	ec_key_point_format_fromdata, @function
ec_key_point_format_fromdata:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -12(%rbp)
	leaq	.LC19(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L125
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_pt_format_param2id@PLT
	testl	%eax, %eax
	jne	.L126
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$527, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L128
.L126:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_conv_form@PLT
.L125:
	movl	$1, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	ec_key_point_format_fromdata, .-ec_key_point_format_fromdata
	.section	.rodata
.LC25:
	.string	"group-check"
	.text
	.type	ec_key_group_check_fromdata, @function
ec_key_group_check_fromdata:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC25(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L130
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_set_check_group_type_from_param
	jmp	.L131
.L130:
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	ec_key_group_check_fromdata, .-ec_key_group_check_fromdata
	.type	ec_set_include_public, @function
ec_set_include_public:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_enc_flags@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L133
	orl	$2, -4(%rbp)
	jmp	.L134
.L133:
	andl	$-3, -4(%rbp)
.L134:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_enc_flags@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	ec_set_include_public, .-ec_set_include_public
	.section	.rodata
.LC26:
	.string	"use-cofactor-flag"
.LC27:
	.string	"include-public"
	.text
	.globl	ossl_ec_key_otherparams_fromdata
	.type	ossl_ec_key_otherparams_fromdata, @function
ossl_ec_key_otherparams_fromdata:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	leaq	.LC26(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L139
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L140
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ec_set_ecdh_cofactor_mode@PLT
	testl	%eax, %eax
	jne	.L139
.L140:
	movl	$0, %eax
	jmp	.L138
.L139:
	leaq	.LC27(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L142
	movl	$1, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L143
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ec_set_include_public
	testl	%eax, %eax
	jne	.L142
.L143:
	movl	$0, %eax
	jmp	.L138
.L142:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_key_point_format_fromdata
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L138
.L145:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_key_group_check_fromdata
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L138
.L146:
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	ossl_ec_key_otherparams_fromdata, .-ossl_ec_key_otherparams_fromdata
	.globl	ossl_ec_key_is_foreign
	.type	ossl_ec_key_is_foreign, @function
ossl_ec_key_is_foreign:
.LFB541:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_method@PLT
	movq	%rax, %rbx
	call	EC_KEY_OpenSSL@PLT
	cmpq	%rax, %rbx
	je	.L149
.L148:
	movl	$1, %eax
	jmp	.L150
.L149:
	movl	$0, %eax
.L150:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	ossl_ec_key_is_foreign, .-ossl_ec_key_is_foreign
	.globl	ossl_ec_key_dup
	.type	ossl_ec_key_dup, @function
ossl_ec_key_dup:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$603, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_new_method_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L154
	movl	$0, %eax
	jmp	.L153
.L154:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L155
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_group_new_ex@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_copy@PLT
	testl	%eax, %eax
	je	.L170
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L155:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L159
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L159
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L171
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	je	.L172
.L159:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L162
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L162
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L173
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L174
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L174
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L162
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L175
.L162:
	movl	-28(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L166
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
.L166:
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	60(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	je	.L176
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L168
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L168
	movl	-28(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.L177
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L178
.L168:
	movq	-8(%rbp), %rax
	jmp	.L153
.L170:
	nop
	jmp	.L158
.L171:
	nop
	jmp	.L158
.L172:
	nop
	jmp	.L158
.L173:
	nop
	jmp	.L158
.L174:
	nop
	jmp	.L158
.L175:
	nop
	jmp	.L158
.L176:
	nop
	jmp	.L158
.L177:
	nop
	jmp	.L158
.L178:
	nop
.L158:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	ossl_ec_key_dup, .-ossl_ec_key_dup
	.globl	ossl_ec_encoding_param2id
	.type	ossl_ec_encoding_param2id, @function
ossl_ec_encoding_param2id:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L180
	cmpl	$6, %eax
	je	.L181
	jmp	.L182
.L180:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L182
.L181:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	movl	%eax, -4(%rbp)
	nop
.L182:
	cmpl	$0, -4(%rbp)
	je	.L183
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_encoding_name2id@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L183
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L185
.L183:
	movl	$0, %eax
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	ossl_ec_encoding_param2id, .-ossl_ec_encoding_param2id
	.globl	ossl_ec_pt_format_param2id
	.type	ossl_ec_pt_format_param2id, @function
ossl_ec_pt_format_param2id:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L187
	cmpl	$6, %eax
	je	.L188
	jmp	.L189
.L187:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L189
.L188:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	movl	%eax, -4(%rbp)
	nop
.L189:
	cmpl	$0, -4(%rbp)
	je	.L190
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_pt_format_name2id@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L190
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L192
.L190:
	movl	$0, %eax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	ossl_ec_pt_format_param2id, .-ossl_ec_pt_format_param2id
	.globl	ossl_x509_algor_is_sm2
	.type	ossl_x509_algor_is_sm2, @function
ossl_x509_algor_is_sm2:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-36(%rbp), %eax
	cmpl	$6, %eax
	jne	.L194
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1172, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L199
.L194:
	movl	-36(%rbp), %eax
	cmpl	$16, %eax
	jne	.L196
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPKParameters@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L197
	movl	$0, -4(%rbp)
	jmp	.L198
.L197:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	$1172, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L198:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-4(%rbp), %eax
	jmp	.L199
.L196:
	movl	$0, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	ossl_x509_algor_is_sm2, .-ossl_x509_algor_is_sm2
	.globl	ossl_ec_key_param_from_x509_algor
	.type	ossl_ec_key_param_from_x509_algor, @function
ossl_ec_key_param_from_x509_algor:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L201
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L201:
	movl	-32(%rbp), %eax
	cmpl	$16, %eax
	jne	.L203
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ECParameters@PLT
	testq	%rax, %rax
	jne	.L205
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L203:
	movl	-32(%rbp), %eax
	cmpl	$6, %eax
	jne	.L206
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edx
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_new_by_curve_name_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L211
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	je	.L212
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	jmp	.L205
.L206:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$800, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L205:
	movq	-48(%rbp), %rax
	jmp	.L210
.L211:
	nop
	jmp	.L202
.L212:
	nop
.L202:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	ossl_ec_key_param_from_x509_algor, .-ossl_ec_key_param_from_x509_algor
	.globl	ossl_ec_key_from_pkcs8
	.type	ossl_ec_key_from_pkcs8, @function
ossl_ec_key_from_pkcs8:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L214
	movl	$0, %eax
	jmp	.L219
.L214:
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_param_from_x509_algor@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L220
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ECPrivateKey@PLT
	testq	%rax, %rax
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$828, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L217
.L218:
	movq	-24(%rbp), %rax
	jmp	.L219
.L220:
	nop
.L217:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	ossl_ec_key_from_pkcs8, .-ossl_ec_key_from_pkcs8
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"ec_group_explicit_todata"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 21
__func__.4:
	.string	"ossl_ec_group_todata"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"ec_key_point_format_fromdata"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"ossl_ec_key_dup"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 34
__func__.1:
	.string	"ossl_ec_key_param_from_x509_algor"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_ec_key_from_pkcs8"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

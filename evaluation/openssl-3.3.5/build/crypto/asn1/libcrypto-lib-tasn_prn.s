	.file	"tasn_prn.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_const_ASN1_VALUE_num, @function
sk_const_ASN1_VALUE_num:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	sk_const_ASN1_VALUE_num, .-sk_const_ASN1_VALUE_num
	.type	sk_const_ASN1_VALUE_value, @function
sk_const_ASN1_VALUE_value:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	sk_const_ASN1_VALUE_value, .-sk_const_ASN1_VALUE_value
	.data
	.align 32
	.type	default_pctx, @object
	.size	default_pctx, 40
default_pctx:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/tasn_prn.c"
	.text
	.globl	ASN1_PCTX_new
	.type	ASN1_PCTX_new, @function
ASN1_PCTX_new:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$39, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	ASN1_PCTX_new, .-ASN1_PCTX_new
	.globl	ASN1_PCTX_free
	.type	ASN1_PCTX_free, @function
ASN1_PCTX_free:
.LFB724:
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
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	ASN1_PCTX_free, .-ASN1_PCTX_free
	.globl	ASN1_PCTX_get_flags
	.type	ASN1_PCTX_get_flags, @function
ASN1_PCTX_get_flags:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	ASN1_PCTX_get_flags, .-ASN1_PCTX_get_flags
	.globl	ASN1_PCTX_set_flags
	.type	ASN1_PCTX_set_flags, @function
ASN1_PCTX_set_flags:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	ASN1_PCTX_set_flags, .-ASN1_PCTX_set_flags
	.globl	ASN1_PCTX_get_nm_flags
	.type	ASN1_PCTX_get_nm_flags, @function
ASN1_PCTX_get_nm_flags:
.LFB727:
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
.LFE727:
	.size	ASN1_PCTX_get_nm_flags, .-ASN1_PCTX_get_nm_flags
	.globl	ASN1_PCTX_set_nm_flags
	.type	ASN1_PCTX_set_nm_flags, @function
ASN1_PCTX_set_nm_flags:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	ASN1_PCTX_set_nm_flags, .-ASN1_PCTX_set_nm_flags
	.globl	ASN1_PCTX_get_cert_flags
	.type	ASN1_PCTX_get_cert_flags, @function
ASN1_PCTX_get_cert_flags:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ASN1_PCTX_get_cert_flags, .-ASN1_PCTX_get_cert_flags
	.globl	ASN1_PCTX_set_cert_flags
	.type	ASN1_PCTX_set_cert_flags, @function
ASN1_PCTX_set_cert_flags:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ASN1_PCTX_set_cert_flags, .-ASN1_PCTX_set_cert_flags
	.globl	ASN1_PCTX_get_oid_flags
	.type	ASN1_PCTX_get_oid_flags, @function
ASN1_PCTX_get_oid_flags:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ASN1_PCTX_get_oid_flags, .-ASN1_PCTX_get_oid_flags
	.globl	ASN1_PCTX_set_oid_flags
	.type	ASN1_PCTX_set_oid_flags, @function
ASN1_PCTX_set_oid_flags:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ASN1_PCTX_set_oid_flags, .-ASN1_PCTX_set_oid_flags
	.globl	ASN1_PCTX_get_str_flags
	.type	ASN1_PCTX_get_str_flags, @function
ASN1_PCTX_get_str_flags:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ASN1_PCTX_get_str_flags, .-ASN1_PCTX_get_str_flags
	.globl	ASN1_PCTX_set_str_flags
	.type	ASN1_PCTX_set_str_flags, @function
ASN1_PCTX_set_str_flags:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ASN1_PCTX_set_str_flags, .-ASN1_PCTX_set_str_flags
	.globl	ASN1_item_print
	.type	ASN1_item_print, @function
ASN1_item_print:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L29
	leaq	default_pctx(%rip), %rax
	movq	%rax, -56(%rbp)
.L29:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L30
	movq	$0, -8(%rbp)
	jmp	.L31
.L30:
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.L31:
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	-56(%rbp)
	pushq	$0
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	asn1_item_print_ctx
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ASN1_item_print, .-ASN1_item_print
	.section	.rodata
.LC1:
	.string	"<ABSENT>\n"
.LC2:
	.string	""
.LC3:
	.string	"\n"
.LC4:
	.string	":EXTERNAL TYPE %s\n"
.LC5:
	.string	"ERROR: selector [%d] invalid\n"
.LC6:
	.string	" {\n"
.LC7:
	.string	"%*s}\n"
.LC8:
	.string	"Unprocessed type %d\n"
	.text
	.type	asn1_item_print_ctx, @function
asn1_item_print_ctx:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L34
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L34
.L35:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L34:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L36
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	.L37
.L36:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L38
	cmpl	$0, 16(%rbp)
	jne	.L39
	movq	24(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movl	-100(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_print_fsname
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L71
.L39:
	leaq	.LC1(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L38
	movl	$0, %eax
	jmp	.L71
.L38:
	movl	$1, %eax
	jmp	.L71
.L37:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L41
	cmpl	$6, %eax
	jg	.L42
	cmpl	$5, %eax
	je	.L43
	cmpl	$5, %eax
	jg	.L42
	cmpl	$4, %eax
	je	.L44
	cmpl	$4, %eax
	jg	.L42
	cmpl	$2, %eax
	je	.L45
	cmpl	$2, %eax
	jg	.L42
	testl	%eax, %eax
	je	.L46
	cmpl	$1, %eax
	je	.L41
	jmp	.L42
.L46:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	24(%rbp), %rdi
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_template_print_ctx
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L71
.L43:
	movq	-128(%rbp), %r8
	movq	-120(%rbp), %rdi
	movl	-100(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_primitive_print
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L71
.L44:
	cmpl	$0, 16(%rbp)
	jne	.L50
	movq	24(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movl	-100(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_print_fsname
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L71
.L50:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L51
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-40(%rbp), %rax
	movq	48(%rax), %r9
	movq	24(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L71
.L52:
	cmpl	$2, -20(%rbp)
	jne	.L53
	leaq	.LC3(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L53
	movl	$0, %eax
	jmp	.L71
.L53:
	movl	$1, %eax
	jmp	.L71
.L51:
	cmpq	$0, -128(%rbp)
	je	.L74
	movq	-128(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L74
	movl	$0, %eax
	jmp	.L71
.L45:
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_choice_selector_const@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L55
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L56
.L55:
	movl	-20(%rbp), %edx
	leaq	.LC5(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L57
	movl	$0, %eax
	jmp	.L71
.L57:
	movl	$1, %eax
	jmp	.L71
.L56:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_const_field_ptr@PLT
	movq	%rax, -48(%rbp)
	movq	24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	-100(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_template_print_ctx
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L71
.L41:
	cmpl	$0, 16(%rbp)
	jne	.L59
	movq	24(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movl	-100(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_print_fsname
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L71
.L59:
	cmpq	$0, -120(%rbp)
	jne	.L60
	cmpq	$0, -128(%rbp)
	je	.L61
.L60:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L62
	leaq	.LC6(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L61
	movl	$0, %eax
	jmp	.L71
.L62:
	leaq	.LC3(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L61
	movl	$0, %eax
	jmp	.L71
.L61:
	cmpq	$0, -16(%rbp)
	je	.L63
	leaq	-80(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rsi
	movl	$8, %edi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L71
.L64:
	cmpl	$2, -20(%rbp)
	jne	.L63
	movl	$1, %eax
	jmp	.L71
.L63:
	movl	$0, -20(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L65
.L68:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L71
.L66:
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_const_field_ptr@PLT
	movq	%rax, -48(%rbp)
	movl	-100(%rbp), %eax
	leal	2(%rax), %edi
	movq	24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	asn1_template_print_ctx
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L71
.L67:
	addl	$1, -20(%rbp)
	addq	$40, -8(%rbp)
.L65:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L68
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L69
	leaq	.LC2(%rip), %rcx
	movl	-100(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jns	.L69
	movl	$0, %eax
	jmp	.L71
.L69:
	cmpq	$0, -16(%rbp)
	je	.L76
	leaq	-80(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rsi
	movl	$9, %edi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L71
.L42:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L71
.L72:
	nop
	jmp	.L48
.L73:
	nop
	jmp	.L48
.L74:
	nop
	jmp	.L48
.L75:
	nop
	jmp	.L48
.L76:
	nop
.L48:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	asn1_item_print_ctx, .-asn1_item_print_ctx
	.section	.rodata
.LC9:
	.string	"SET"
.LC10:
	.string	"SEQUENCE"
.LC11:
	.string	"%*s%s OF %s {\n"
.LC12:
	.string	"%*s%s:\n"
.LC13:
	.string	"ABSENT"
.LC14:
	.string	"EMPTY"
.LC15:
	.string	"%*s<%s>\n"
	.text
	.type	asn1_template_print_ctx, @function
asn1_template_print_ctx:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L78
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L79
.L78:
	movq	$0, -16(%rbp)
.L79:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L80
	movq	$0, -24(%rbp)
	jmp	.L81
.L80:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.L81:
	movl	-36(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L82
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.L82:
	movl	-36(%rbp), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L83
	cmpq	$0, -24(%rbp)
	je	.L84
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L85
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L86
	leaq	.LC9(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L87
.L86:
	leaq	.LC10(%rip), %rax
	movq	%rax, -32(%rbp)
.L87:
	movq	-96(%rbp), %rax
	movq	24(%rax), %r8
	movq	-32(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	movl	-84(%rbp), %edx
	leaq	.LC11(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L84
	movl	$0, %eax
	jmp	.L98
.L85:
	movq	-24(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	movl	-84(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L84
	movl	$0, %eax
	jmp	.L98
.L84:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L89
.L92:
	cmpl	$0, -4(%rbp)
	jle	.L90
	leaq	.LC3(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L90
	movl	$0, %eax
	jmp	.L98
.L90:
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_value
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movl	-84(%rbp), %eax
	leal	2(%rax), %edx
	leaq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	-104(%rbp)
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	asn1_item_print_ctx
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L98
.L91:
	addl	$1, -4(%rbp)
.L89:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L92
	cmpl	$0, -4(%rbp)
	jne	.L93
	cmpq	$0, -48(%rbp)
	jne	.L94
	leaq	.LC13(%rip), %rax
	jmp	.L95
.L94:
	leaq	.LC14(%rip), %rax
.L95:
	movl	-84(%rbp), %edx
	addl	$2, %edx
	leaq	.LC2(%rip), %rcx
	leaq	.LC15(%rip), %rsi
	movq	-72(%rbp), %rdi
	movq	%rax, %r8
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L93
	movl	$0, %eax
	jmp	.L98
.L93:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L96
	leaq	.LC2(%rip), %rcx
	movl	-84(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L96
	movl	$0, %eax
	jmp	.L98
.L96:
	movl	$1, %eax
	jmp	.L98
.L83:
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	-104(%rbp)
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_item_print_ctx
	addq	$16, %rsp
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	asn1_template_print_ctx, .-asn1_template_print_ctx
	.section	.rodata
.LC16:
	.string	" (%s)"
.LC17:
	.string	": "
	.text
	.type	asn1_print_fsname, @function
asn1_print_fsname:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	jmp	.L100
.L103:
	movl	nspaces.1(%rip), %edx
	leaq	spaces.0(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %edx
	movl	nspaces.1(%rip), %eax
	cmpl	%eax, %edx
	je	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movl	nspaces.1(%rip), %eax
	subl	%eax, -12(%rbp)
.L100:
	movl	nspaces.1(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L103
	movl	-12(%rbp), %edx
	leaq	spaces.0(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -12(%rbp)
	je	.L104
	movl	$0, %eax
	jmp	.L102
.L104:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L105
	movq	$0, -32(%rbp)
.L105:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L106
	movq	$0, -24(%rbp)
.L106:
	cmpq	$0, -32(%rbp)
	jne	.L107
	cmpq	$0, -24(%rbp)
	jne	.L107
	movl	$1, %eax
	jmp	.L102
.L107:
	cmpq	$0, -24(%rbp)
	je	.L108
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L108
	movl	$0, %eax
	jmp	.L102
.L108:
	cmpq	$0, -32(%rbp)
	je	.L109
	cmpq	$0, -24(%rbp)
	je	.L110
	movq	-32(%rbp), %rdx
	leaq	.LC16(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L109
	movl	$0, %eax
	jmp	.L102
.L110:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L109
	movl	$0, %eax
	jmp	.L102
.L109:
	leaq	.LC17(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$2, %eax
	je	.L111
	movl	$0, %eax
	jmp	.L102
.L111:
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	asn1_print_fsname, .-asn1_print_fsname
	.section	.rodata
.LC18:
	.string	"BOOL ABSENT"
.LC19:
	.string	"FALSE"
.LC20:
	.string	"TRUE"
	.text
	.type	asn1_print_boolean, @function
asn1_print_boolean:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.L113
	cmpl	$0, -28(%rbp)
	je	.L114
	jmp	.L119
.L113:
	leaq	.LC18(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L116
.L114:
	leaq	.LC19(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L116
.L119:
	leaq	.LC20(%rip), %rax
	movq	%rax, -8(%rbp)
	nop
.L116:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movl	$1, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	asn1_print_boolean, .-asn1_print_boolean
	.type	asn1_print_integer, @function
asn1_print_integer:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_INTEGER@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L123
	movl	$0, -4(%rbp)
.L123:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	asn1_print_integer, .-asn1_print_integer
	.section	.rodata
.LC21:
	.string	"%s (%s)"
	.text
	.type	asn1_print_oid, @function
asn1_print_oid:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L125
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
.L125:
	movq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leaq	-96(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC21(%rip), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L126
	movl	$0, %eax
	jmp	.L128
.L126:
	movl	$1, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	asn1_print_oid, .-asn1_print_oid
	.section	.rodata
.LC22:
	.string	" (%ld unused bits)\n"
	.text
	.type	asn1_print_obstring, @function
asn1_print_obstring:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	jne	.L130
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	andl	$7, %eax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L131
	movl	$0, %eax
	jmp	.L132
.L130:
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L133
	movl	-20(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	testl	%eax, %eax
	jg	.L133
	movl	$0, %eax
	jmp	.L132
.L133:
	movl	$1, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	asn1_print_obstring, .-asn1_print_obstring
	.section	.rodata
.LC23:
	.string	"NULL\n"
.LC24:
	.string	":"
	.text
	.type	asn1_primitive_print, @function
asn1_primitive_print:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$1, -20(%rbp)
	movl	$1, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	16(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_print_fsname
	testl	%eax, %eax
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	cmpq	$0, -48(%rbp)
	je	.L137
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L137
	movq	-48(%rbp), %rax
	movq	56(%rax), %r9
	movq	16(%rbp), %rdi
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L136
.L137:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L138
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	andb	$-2, %ah
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L139
.L138:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	jne	.L140
	movq	$0, -16(%rbp)
	jmp	.L139
.L140:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L139:
	cmpq	$-4, -8(%rbp)
	jne	.L141
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L142
	movq	$0, -32(%rbp)
	jmp	.L143
.L142:
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	call	ASN1_tag2str@PLT
	movq	%rax, -32(%rbp)
	jmp	.L143
.L141:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L144
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	call	ASN1_tag2str@PLT
	movq	%rax, -32(%rbp)
	jmp	.L143
.L144:
	movq	$0, -32(%rbp)
.L143:
	cmpq	$5, -8(%rbp)
	jne	.L145
	leaq	.LC23(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L146
	movl	$0, %eax
	jmp	.L136
.L146:
	movl	$1, %eax
	jmp	.L136
.L145:
	cmpq	$0, -32(%rbp)
	je	.L147
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L148
	movl	$0, %eax
	jmp	.L136
.L148:
	leaq	.LC24(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L147
	movl	$0, %eax
	jmp	.L136
.L147:
	cmpq	$24, -8(%rbp)
	je	.L149
	cmpq	$24, -8(%rbp)
	jg	.L150
	cmpq	$23, -8(%rbp)
	je	.L151
	cmpq	$23, -8(%rbp)
	jg	.L150
	cmpq	$17, -8(%rbp)
	jg	.L150
	cmpq	$16, -8(%rbp)
	jge	.L152
	cmpq	$10, -8(%rbp)
	je	.L153
	cmpq	$10, -8(%rbp)
	jg	.L150
	cmpq	$6, -8(%rbp)
	je	.L154
	cmpq	$6, -8(%rbp)
	jg	.L150
	cmpq	$4, -8(%rbp)
	jg	.L150
	cmpq	$3, -8(%rbp)
	jge	.L155
	cmpq	$2, -8(%rbp)
	je	.L153
	cmpq	$2, -8(%rbp)
	jg	.L150
	cmpq	$-3, -8(%rbp)
	je	.L152
	cmpq	$1, -8(%rbp)
	jne	.L150
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L156
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, -36(%rbp)
.L156:
	movl	-36(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	asn1_print_boolean
	movl	%eax, -20(%rbp)
	jmp	.L157
.L153:
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_print_integer
	movl	%eax, -20(%rbp)
	jmp	.L157
.L151:
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_UTCTIME_print@PLT
	movl	%eax, -20(%rbp)
	jmp	.L157
.L149:
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	movl	%eax, -20(%rbp)
	jmp	.L157
.L154:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_print_oid
	movl	%eax, -20(%rbp)
	jmp	.L157
.L155:
	movl	-92(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_print_obstring
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L157
.L152:
	leaq	.LC3(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L158
	movl	$0, %eax
	jmp	.L136
.L158:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-92(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASN1_parse_dump@PLT
	testl	%eax, %eax
	jg	.L159
	movl	$0, -20(%rbp)
.L159:
	movl	$0, -24(%rbp)
	jmp	.L157
.L150:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print_ex@PLT
	movl	%eax, -20(%rbp)
.L157:
	cmpl	$0, -20(%rbp)
	jne	.L160
	movl	$0, %eax
	jmp	.L136
.L160:
	cmpl	$0, -24(%rbp)
	je	.L161
	leaq	.LC3(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L161
	movl	$0, %eax
	jmp	.L136
.L161:
	movl	$1, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	asn1_primitive_print, .-asn1_primitive_print
	.section	.rodata
	.align 4
	.type	nspaces.1, @object
	.size	nspaces.1, 4
nspaces.1:
	.long	20
	.align 16
	.type	spaces.0, @object
	.size	spaces.0, 21
spaces.0:
	.string	"                    "
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

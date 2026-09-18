	.file	"eck_prn.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/ec/eck_prn.c"
	.text
	.globl	ECPKParameters_print_fp
	.type	ECPKParameters_print_fp, @function
ECPKParameters_print_fp:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ECPKParameters_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ECPKParameters_print_fp, .-ECPKParameters_print_fp
	.globl	EC_KEY_print_fp
	.type	EC_KEY_print_fp, @function
EC_KEY_print_fp:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	EC_KEY_print_fp, .-EC_KEY_print_fp
	.globl	ECParameters_print_fp
	.type	ECParameters_print_fp, @function
ECParameters_print_fp:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ECParameters_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ECParameters_print_fp, .-ECParameters_print_fp
	.section	.rodata
.LC1:
	.string	"ASN1 OID: %s"
.LC2:
	.string	"\n"
.LC3:
	.string	"NIST CURVE: %s\n"
.LC4:
	.string	"Field Type: %s\n"
.LC5:
	.string	"Basis Type: %s\n"
.LC6:
	.string	"Polynomial:"
.LC7:
	.string	"Prime:"
.LC8:
	.string	"A:   "
.LC9:
	.string	"B:   "
.LC10:
	.string	"Order: "
.LC11:
	.string	"Cofactor: "
.LC12:
	.string	"Seed:"
	.text
	.globl	ECPKParameters_print
	.type	ECPKParameters_print, @function
ECPKParameters_print:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	$0, -4(%rbp)
	movl	$524320, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L15
	movl	$786690, -8(%rbp)
	jmp	.L16
.L15:
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movl	$524291, -8(%rbp)
	jmp	.L16
.L17:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	testl	%eax, %eax
	je	.L18
	movl	-164(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L50
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.L51
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L52
	leaq	.LC2(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L53
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	EC_curve_nid2nist@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L23
	movl	-164(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L54
	movq	-128(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L23
	jmp	.L16
.L18:
	movl	$0, -68(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -100(%rbp)
	cmpl	$407, -100(%rbp)
	jne	.L25
	movl	$1, -68(%rbp)
.L25:
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L26
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L26
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L27
.L26:
	movl	$524291, -8(%rbp)
	jmp	.L16
.L27:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$524304, -8(%rbp)
	jmp	.L16
.L28:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L29
	movl	$524304, -8(%rbp)
	jmp	.L16
.L29:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L30
	movl	$524304, -8(%rbp)
	jmp	.L16
.L30:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_point_conversion_form@PLT
	movl	%eax, -104(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-136(%rbp), %rcx
	movl	-104(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L31
	movl	$524304, -8(%rbp)
	jmp	.L16
.L31:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L32
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	movq	%rax, -48(%rbp)
.L32:
	movl	-164(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L55
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	cmpl	$0, -68(%rbp)
	je	.L35
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_basis_type@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L57
	movl	-164(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L58
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L59
	cmpq	$0, -24(%rbp)
	je	.L39
	movl	-164(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	jne	.L39
	jmp	.L16
.L35:
	cmpq	$0, -24(%rbp)
	je	.L39
	movl	-164(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L60
.L39:
	cmpq	$0, -32(%rbp)
	je	.L40
	movl	-164(%rbp), %ecx
	movq	-32(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L61
.L40:
	cmpq	$0, -40(%rbp)
	je	.L41
	movl	-164(%rbp), %ecx
	movq	-40(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L62
.L41:
	cmpl	$2, -104(%rbp)
	jne	.L42
	movq	gen_compressed.3(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L43
.L42:
	cmpl	$4, -104(%rbp)
	jne	.L44
	movq	gen_uncompressed.2(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L43
.L44:
	movq	gen_hybrid.1(%rip), %rax
	movq	%rax, -64(%rbp)
.L43:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L45
	movq	-136(%rbp), %rdx
	movl	-164(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	print_bin
	testl	%eax, %eax
	je	.L63
.L45:
	cmpq	$0, -88(%rbp)
	je	.L46
	movl	-164(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L64
.L46:
	cmpq	$0, -96(%rbp)
	je	.L47
	movl	-164(%rbp), %ecx
	movq	-96(%rbp), %rdx
	leaq	.LC11(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L65
.L47:
	cmpq	$0, -112(%rbp)
	je	.L23
	movl	-164(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rdx
	leaq	.LC12(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	print_bin
	testl	%eax, %eax
	je	.L66
.L23:
	movl	$1, -4(%rbp)
	jmp	.L16
.L50:
	nop
	jmp	.L16
.L51:
	nop
	jmp	.L16
.L52:
	nop
	jmp	.L16
.L53:
	nop
	jmp	.L16
.L54:
	nop
	jmp	.L16
.L55:
	nop
	jmp	.L16
.L56:
	nop
	jmp	.L16
.L57:
	nop
	jmp	.L16
.L58:
	nop
	jmp	.L16
.L59:
	nop
	jmp	.L16
.L60:
	nop
	jmp	.L16
.L61:
	nop
	jmp	.L16
.L62:
	nop
	jmp	.L16
.L63:
	nop
	jmp	.L16
.L64:
	nop
	jmp	.L16
.L65:
	nop
	jmp	.L16
.L66:
	nop
.L16:
	cmpl	$0, -4(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-8(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L48:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rsi
	movl	$220, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ECPKParameters_print, .-ECPKParameters_print
	.section	.rodata
.LC13:
	.string	"%s"
.LC14:
	.string	""
.LC15:
	.string	":"
.LC16:
	.string	"%02x%s"
	.text
	.type	print_bin, @function
print_bin:
.LFB406:
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
	movl	%r8d, -180(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L68
	movl	$1, %eax
	jmp	.L81
.L68:
	cmpl	$0, -180(%rbp)
	jle	.L70
	cmpl	$128, -180(%rbp)
	jle	.L71
	movl	$128, -180(%rbp)
.L71:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-144(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-180(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L72
	movl	$0, %eax
	jmp	.L81
.L70:
	movl	$0, -180(%rbp)
.L72:
	movq	-160(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L73
	movl	$0, %eax
	jmp	.L81
.L73:
	movq	$0, -8(%rbp)
	jmp	.L74
.L79:
	movq	-8(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	jne	.L75
	movb	$10, -144(%rbp)
	movl	-180(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-144(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movl	-180(%rbp), %eax
	leal	5(%rax), %edx
	leaq	-144(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L75
	movl	$0, %eax
	jmp	.L81
.L75:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -176(%rbp)
	jne	.L76
	leaq	.LC14(%rip), %rax
	jmp	.L77
.L76:
	leaq	.LC15(%rip), %rax
.L77:
	movq	-168(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	leaq	.LC16(%rip), %rsi
	movq	-152(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L78
	movl	$0, %eax
	jmp	.L81
.L78:
	addq	$1, -8(%rbp)
.L74:
	movq	-8(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jb	.L79
	leaq	.LC2(%rip), %rcx
	movq	-152(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	print_bin, .-print_bin
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"ECPKParameters_print_fp"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"EC_KEY_print_fp"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"ECParameters_print_fp"
.LC17:
	.string	"Generator (compressed):"
	.section	.data.rel.local,"aw"
	.align 8
	.type	gen_compressed.3, @object
	.size	gen_compressed.3, 8
gen_compressed.3:
	.quad	.LC17
	.section	.rodata
.LC18:
	.string	"Generator (uncompressed):"
	.section	.data.rel.local
	.align 8
	.type	gen_uncompressed.2, @object
	.size	gen_uncompressed.2, 8
gen_uncompressed.2:
	.quad	.LC18
	.section	.rodata
.LC19:
	.string	"Generator (hybrid):"
	.section	.data.rel.local
	.align 8
	.type	gen_hybrid.1, @object
	.size	gen_hybrid.1, 8
gen_hybrid.1:
	.quad	.LC19
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ECPKParameters_print"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cms_ess.c"
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
	.type	ossl_check_GENERAL_NAMES_sk_type, @function
ossl_check_GENERAL_NAMES_sk_type:
.LFB535:
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
.LFE535:
	.size	ossl_check_GENERAL_NAMES_sk_type, .-ossl_check_GENERAL_NAMES_sk_type
	.type	ossl_check_GENERAL_NAMES_freefunc_type, @function
ossl_check_GENERAL_NAMES_freefunc_type:
.LFB538:
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
.LFE538:
	.size	ossl_check_GENERAL_NAMES_freefunc_type, .-ossl_check_GENERAL_NAMES_freefunc_type
	.type	ossl_check_const_CMS_SignerInfo_sk_type, @function
ossl_check_const_CMS_SignerInfo_sk_type:
.LFB624:
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
.LFE624:
	.size	ossl_check_const_CMS_SignerInfo_sk_type, .-ossl_check_const_CMS_SignerInfo_sk_type
	.globl	d2i_CMS_ReceiptRequest
	.type	d2i_CMS_ReceiptRequest, @function
d2i_CMS_ReceiptRequest:
.LFB689:
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
	call	CMS_ReceiptRequest_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	d2i_CMS_ReceiptRequest, .-d2i_CMS_ReceiptRequest
	.globl	i2d_CMS_ReceiptRequest
	.type	i2d_CMS_ReceiptRequest, @function
i2d_CMS_ReceiptRequest:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	CMS_ReceiptRequest_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	i2d_CMS_ReceiptRequest, .-i2d_CMS_ReceiptRequest
	.globl	CMS_ReceiptRequest_new
	.type	CMS_ReceiptRequest_new, @function
CMS_ReceiptRequest_new:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CMS_ReceiptRequest_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	CMS_ReceiptRequest_new, .-CMS_ReceiptRequest_new
	.globl	CMS_ReceiptRequest_free
	.type	CMS_ReceiptRequest_free, @function
CMS_ReceiptRequest_free:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	CMS_ReceiptRequest_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	CMS_ReceiptRequest_free, .-CMS_ReceiptRequest_free
	.globl	CMS_get1_ReceiptRequest
	.type	CMS_get1_ReceiptRequest, @function
CMS_get1_ReceiptRequest:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$212, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L19
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L19:
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	call	CMS_ReceiptRequest_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$-1, %eax
	jmp	.L21
.L22:
	cmpq	$0, -48(%rbp)
	je	.L23
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L24
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_free@PLT
.L24:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	CMS_get1_ReceiptRequest, .-CMS_get1_ReceiptRequest
	.type	ossl_cms_signerinfo_get_signing_cert, @function
ossl_cms_signerinfo_get_signing_cert:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$223, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L26
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L26:
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	call	ESS_SIGNING_CERT_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L29
	movl	$-1, %eax
	jmp	.L28
.L29:
	cmpq	$0, -48(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L31
.L30:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_free@PLT
.L31:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	ossl_cms_signerinfo_get_signing_cert, .-ossl_cms_signerinfo_get_signing_cert
	.type	ossl_cms_signerinfo_get_signing_cert_v2, @function
ossl_cms_signerinfo_get_signing_cert_v2:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1086, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L33:
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	call	ESS_SIGNING_CERT_V2_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L36
	movl	$-1, %eax
	jmp	.L35
.L36:
	cmpq	$0, -48(%rbp)
	je	.L37
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L38
.L37:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_V2_free@PLT
.L38:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	ossl_cms_signerinfo_get_signing_cert_v2, .-ossl_cms_signerinfo_get_signing_cert_v2
	.globl	ossl_cms_check_signing_certs
	.type	ossl_cms_check_signing_certs, @function
ossl_cms_check_signing_certs:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_signerinfo_get_signing_cert
	testl	%eax, %eax
	js	.L40
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_signerinfo_get_signing_cert_v2
	testl	%eax, %eax
	js	.L40
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	call	OSSL_ESS_check_signing_certs@PLT
	testl	%eax, %eax
	jle	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	movl	$0, %eax
.L41:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_V2_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	ossl_cms_check_signing_certs, .-ossl_cms_check_signing_certs
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_ess.c"
	.text
	.globl	CMS_ReceiptRequest_create0_ex
	.type	CMS_ReceiptRequest_create0_ex, @function
CMS_ReceiptRequest_create0_ex:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	call	CMS_ReceiptRequest_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L44:
	cmpq	$0, -40(%rbp)
	je	.L46
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L48:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L52
.L47:
	movq	GENERAL_NAMES_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -56(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L50
.L49:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rax)
.L50:
	movq	-24(%rbp), %rax
	jmp	.L51
.L52:
	nop
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_free@PLT
	movl	$0, %eax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	CMS_ReceiptRequest_create0_ex, .-CMS_ReceiptRequest_create0_ex
	.globl	CMS_ReceiptRequest_create0
	.type	CMS_ReceiptRequest_create0, @function
CMS_ReceiptRequest_create0:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_create0_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	CMS_ReceiptRequest_create0, .-CMS_ReceiptRequest_create0
	.globl	CMS_add1_ReceiptRequest
	.type	CMS_add1_ReceiptRequest, @function
CMS_add1_ReceiptRequest:
.LFB699:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_CMS_ReceiptRequest@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L56
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L56:
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$212, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	testl	%eax, %eax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L58:
	movl	$1, -4(%rbp)
.L57:
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	CMS_add1_ReceiptRequest, .-CMS_add1_ReceiptRequest
	.globl	CMS_ReceiptRequest_get0_values
	.type	CMS_ReceiptRequest_get0_values, @function
CMS_ReceiptRequest_get0_values:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L61:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L62
	cmpq	$0, -24(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L63:
	cmpq	$0, -32(%rbp)
	je	.L64
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L64
.L62:
	cmpq	$0, -24(%rbp)
	je	.L65
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
.L65:
	cmpq	$0, -32(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L64:
	cmpq	$0, -40(%rbp)
	je	.L67
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L67:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	CMS_ReceiptRequest_get0_values, .-CMS_ReceiptRequest_get0_values
	.type	cms_msgSigDigest, @function
cms_msgSigDigest:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	24(%rax), %rbx
	call	CMS_Attributes_Verify_it@PLT
	movq	%rax, %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%r12
	movq	%r13, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	ossl_asn1_item_digest_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L70
.L71:
	movl	$1, %eax
.L70:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	cms_msgSigDigest, .-cms_msgSigDigest
	.globl	ossl_cms_msgSigDigest_add1
	.type	ossl_cms_msgSigDigest_add1, @function
ossl_cms_msgSigDigest_add1:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	leaq	-68(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_msgSigDigest
	testl	%eax, %eax
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L73:
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$216, %esi
	movq	%rax, %rdi
	call	CMS_signed_add1_attr_by_NID@PLT
	testl	%eax, %eax
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524334, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	ossl_cms_msgSigDigest_add1, .-ossl_cms_msgSigDigest_add1
	.globl	ossl_cms_Receipt_verify
	.type	ossl_cms_Receipt_verify, @function
ossl_cms_Receipt_verify:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L100
	cmpq	$0, -40(%rbp)
	je	.L100
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	je	.L81
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$273, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L81:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_eContentType@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$204, %eax
	je	.L82
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L82:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_content@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L83
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L84
.L83:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$286, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L84:
	call	CMS_Receipt_it@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$169, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L85:
	movl	$0, -8(%rbp)
	jmp	.L86
.L89:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L101
	addl	$1, -8(%rbp)
.L86:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L89
	jmp	.L88
.L101:
	nop
.L88:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L90:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movl	$216, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movl	$4, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L91:
	leaq	-148(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cms_msgSigDigest
	testl	%eax, %eax
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L92:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-148(%rbp), %eax
	cmpl	%eax, %edx
	je	.L93
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L93:
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L94
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L94:
	movl	$50, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movl	$6, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L95:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	je	.L96
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L96:
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_get1_ReceiptRequest@PLT
	testl	%eax, %eax
	jg	.L97
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L97:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L98
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L80
.L98:
	movl	$1, -4(%rbp)
	jmp	.L80
.L100:
	nop
.L80:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_free@PLT
	call	CMS_Receipt_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	ossl_cms_Receipt_verify, .-ossl_cms_Receipt_verify
	.globl	ossl_cms_encode_Receipt
	.type	ossl_cms_encode_Receipt, @function
ossl_cms_encode_Receipt:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_get1_ReceiptRequest@PLT
	testl	%eax, %eax
	jg	.L103
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L103:
	movl	$50, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	movl	$6, %ecx
	movl	$-3, %edx
	movq	%rax, %rdi
	call	CMS_signed_get0_data_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$405, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L104
.L105:
	movl	$1, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	call	CMS_Receipt_it@PLT
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	movq	%rax, -8(%rbp)
.L104:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	ossl_cms_encode_Receipt, .-ossl_cms_encode_Receipt
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 30
__func__.4:
	.string	"CMS_ReceiptRequest_create0_ex"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"CMS_add1_ReceiptRequest"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 27
__func__.2:
	.string	"ossl_cms_msgSigDigest_add1"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"ossl_cms_Receipt_verify"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"ossl_cms_encode_Receipt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cmp_hdr.c"
	.text
	.type	ossl_check_ASN1_UTF8STRING_type, @function
ossl_check_ASN1_UTF8STRING_type:
.LFB69:
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
.LFE69:
	.size	ossl_check_ASN1_UTF8STRING_type, .-ossl_check_ASN1_UTF8STRING_type
	.type	ossl_check_ASN1_UTF8STRING_sk_type, @function
ossl_check_ASN1_UTF8STRING_sk_type:
.LFB71:
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
.LFE71:
	.size	ossl_check_ASN1_UTF8STRING_sk_type, .-ossl_check_ASN1_UTF8STRING_sk_type
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
	.type	ossl_check_const_OSSL_CMP_ITAV_sk_type, @function
ossl_check_const_OSSL_CMP_ITAV_sk_type:
.LFB636:
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
.LFE636:
	.size	ossl_check_const_OSSL_CMP_ITAV_sk_type, .-ossl_check_const_OSSL_CMP_ITAV_sk_type
	.globl	ossl_cmp_hdr_set_pvno
	.type	ossl_cmp_hdr_set_pvno, @function
ossl_cmp_hdr_set_pvno:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_cmp_hdr_set_pvno, .-ossl_cmp_hdr_set_pvno
	.globl	ossl_cmp_hdr_get_pvno
	.type	ossl_cmp_hdr_get_pvno, @function
ossl_cmp_hdr_get_pvno:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L15
	movl	$-1, %eax
	jmp	.L19
.L15:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_int64@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	.L17
	movq	-8(%rbp), %rax
	cmpq	$2147483647, %rax
	jle	.L18
.L17:
	movl	$-1, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_cmp_hdr_get_pvno, .-ossl_cmp_hdr_get_pvno
	.globl	ossl_cmp_hdr_get_protection_nid
	.type	ossl_cmp_hdr_get_protection_nid, @function
ossl_cmp_hdr_get_protection_nid:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_cmp_hdr_get_protection_nid, .-ossl_cmp_hdr_get_protection_nid
	.section	.rodata
.LC0:
	.string	"../crypto/cmp/cmp_hdr.c"
	.text
	.globl	OSSL_CMP_HDR_get0_transactionID
	.type	OSSL_CMP_HDR_get0_transactionID, @function
OSSL_CMP_HDR_get0_transactionID:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	OSSL_CMP_HDR_get0_transactionID, .-OSSL_CMP_HDR_get0_transactionID
	.globl	ossl_cmp_hdr_get0_senderNonce
	.type	ossl_cmp_hdr_get0_senderNonce, @function
ossl_cmp_hdr_get0_senderNonce:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_cmp_hdr_get0_senderNonce, .-ossl_cmp_hdr_get0_senderNonce
	.globl	OSSL_CMP_HDR_get0_recipNonce
	.type	OSSL_CMP_HDR_get0_recipNonce, @function
OSSL_CMP_HDR_get0_recipNonce:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	OSSL_CMP_HDR_get0_recipNonce, .-OSSL_CMP_HDR_get0_recipNonce
	.globl	OSSL_CMP_HDR_get0_geninfo_ITAVs
	.type	OSSL_CMP_HDR_get0_geninfo_ITAVs, @function
OSSL_CMP_HDR_get0_geninfo_ITAVs:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	OSSL_CMP_HDR_get0_geninfo_ITAVs, .-OSSL_CMP_HDR_get0_geninfo_ITAVs
	.globl	ossl_cmp_general_name_is_NULL_DN
	.type	ossl_cmp_general_name_is_NULL_DN, @function
ossl_cmp_general_name_is_NULL_DN:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L38
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	testq	%rax, %rax
	jne	.L38
.L37:
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ossl_cmp_general_name_is_NULL_DN, .-ossl_cmp_general_name_is_NULL_DN
	.type	set1_general_name, @function
set1_general_name:
.LFB753:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	call	GENERAL_NAME_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	cmpq	$0, -32(%rbp)
	jne	.L46
	call	X509_NAME_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	jmp	.L45
.L46:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	je	.L49
.L47:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L43
.L48:
	nop
	jmp	.L45
.L49:
	nop
.L45:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	set1_general_name, .-set1_general_name
	.globl	ossl_cmp_hdr_set1_sender
	.type	ossl_cmp_hdr_set1_sender, @function
ossl_cmp_hdr_set1_sender:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set1_general_name
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	ossl_cmp_hdr_set1_sender, .-ossl_cmp_hdr_set1_sender
	.globl	ossl_cmp_hdr_set1_recipient
	.type	ossl_cmp_hdr_set1_recipient, @function
ossl_cmp_hdr_set1_recipient:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set1_general_name
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_cmp_hdr_set1_recipient, .-ossl_cmp_hdr_set1_recipient
	.globl	ossl_cmp_hdr_update_messageTime
	.type	ossl_cmp_hdr_update_messageTime, @function
ossl_cmp_hdr_update_messageTime:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	call	ASN1_GENERALIZEDTIME_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_cmp_hdr_update_messageTime, .-ossl_cmp_hdr_update_messageTime
	.type	set_random, @function
set_random:
.LFB757:
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
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L62
.L61:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L62:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_asn1_octet_string_set1_bytes@PLT
	movl	%eax, -4(%rbp)
.L63:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$159, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	set_random, .-set_random
	.globl	ossl_cmp_hdr_set1_senderKID
	.type	ossl_cmp_hdr_set1_senderKID, @function
ossl_cmp_hdr_set1_senderKID:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cmp_asn1_octet_string_set1@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	ossl_cmp_hdr_set1_senderKID, .-ossl_cmp_hdr_set1_senderKID
	.globl	ossl_cmp_hdr_push0_freeText
	.type	ossl_cmp_hdr_push0_freeText, @function
ossl_cmp_hdr_push0_freeText:
.LFB759:
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
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L69
	cmpq	$0, -32(%rbp)
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	cltq
	testq	%rax, %rax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	movl	$0, %eax
	jmp	.L72
.L73:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
.L72:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ossl_cmp_hdr_push0_freeText, .-ossl_cmp_hdr_push0_freeText
	.globl	ossl_cmp_hdr_push1_freeText
	.type	ossl_cmp_hdr_push1_freeText, @function
ossl_cmp_hdr_push1_freeText:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
	cmpq	$0, -16(%rbp)
	je	.L75
	movl	$1, %eax
	jmp	.L76
.L75:
	movl	$0, %eax
.L76:
	cltq
	testq	%rax, %rax
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	movl	$0, %eax
	jmp	.L78
.L79:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_sk_ASN1_UTF8STRING_push_str@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ossl_cmp_hdr_push1_freeText, .-ossl_cmp_hdr_push1_freeText
	.globl	ossl_cmp_hdr_generalInfo_push0_item
	.type	ossl_cmp_hdr_generalInfo_push0_item, @function
ossl_cmp_hdr_generalInfo_push0_item:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L81
	cmpq	$0, -16(%rbp)
	je	.L81
	movl	$1, %eax
	jmp	.L82
.L81:
	movl	$0, %eax
.L82:
	cltq
	testq	%rax, %rax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_CMP_ITAV_push0_stack_item@PLT
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_cmp_hdr_generalInfo_push0_item, .-ossl_cmp_hdr_generalInfo_push0_item
	.globl	ossl_cmp_hdr_generalInfo_push1_items
	.type	ossl_cmp_hdr_generalInfo_push1_items, @function
ossl_cmp_hdr_generalInfo_push1_items:
.LFB762:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	$0, -4(%rbp)
	jmp	.L88
.L91:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L87
.L89:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_generalInfo_push0_item@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
	jmp	.L87
.L90:
	addl	$1, -4(%rbp)
.L88:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L91
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_cmp_hdr_generalInfo_push1_items, .-ossl_cmp_hdr_generalInfo_push1_items
	.globl	ossl_cmp_hdr_set_implicitConfirm
	.type	ossl_cmp_hdr_set_implicitConfirm, @function
ossl_cmp_hdr_set_implicitConfirm:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	call	ASN1_NULL_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L94
.L95:
	movl	$310, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_CMP_ITAV_create@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L99
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_generalInfo_push0_item@PLT
	testl	%eax, %eax
	je	.L100
	movl	$1, %eax
	jmp	.L94
.L99:
	nop
	jmp	.L97
.L100:
	nop
.L97:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ossl_cmp_hdr_set_implicitConfirm, .-ossl_cmp_hdr_set_implicitConfirm
	.globl	ossl_cmp_hdr_has_implicitConfirm
	.type	ossl_cmp_hdr_has_implicitConfirm, @function
ossl_cmp_hdr_has_implicitConfirm:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L104
.L106:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L105
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$310, %eax
	jne	.L105
	movl	$1, %eax
	jmp	.L103
.L105:
	addl	$1, -4(%rbp)
.L104:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L106
	movl	$0, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	ossl_cmp_hdr_has_implicitConfirm, .-ossl_cmp_hdr_has_implicitConfirm
	.section	.rodata
.LC1:
	.string	"DEBUG"
	.align 8
.LC2:
	.string	"Starting new transaction with ID=%s"
	.text
	.globl	ossl_cmp_hdr_set_transactionID
	.type	ossl_cmp_hdr_set_transactionID, @function
ossl_cmp_hdr_set_transactionID:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	movq	-24(%rbp), %rax
	leaq	280(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	set_random
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L111
	leaq	.LC1(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.0(%rip), %rdx
	movq	-24(%rbp), %rax
	pushq	-8(%rbp)
	leaq	.LC2(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$291, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L111:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L108:
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$56, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cmp_asn1_octet_string_set1@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ossl_cmp_hdr_set_transactionID, .-ossl_cmp_hdr_set_transactionID
	.globl	ossl_cmp_hdr_init
	.type	ossl_cmp_hdr_init, @function
ossl_cmp_hdr_init:
.LFB766:
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
	cmpq	$0, -24(%rbp)
	je	.L113
	cmpq	$0, -32(%rbp)
	je	.L113
	movl	$1, %eax
	jmp	.L114
.L113:
	movl	$0, %eax
.L114:
	cltq
	testq	%rax, %rax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_pvno@PLT
	testl	%eax, %eax
	jne	.L117
	movl	$0, %eax
	jmp	.L116
.L117:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -8(%rbp)
	jmp	.L119
.L118:
	movq	-24(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-24(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -8(%rbp)
	jmp	.L119
.L120:
	movq	-24(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-24(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -8(%rbp)
	jmp	.L119
.L121:
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -8(%rbp)
.L119:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_sender@PLT
	testl	%eax, %eax
	jne	.L122
	movl	$0, %eax
	jmp	.L116
.L122:
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L124
.L123:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -16(%rbp)
	jmp	.L124
.L125:
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L124
.L126:
	movq	-24(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-24(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -16(%rbp)
	jmp	.L124
.L127:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -16(%rbp)
.L124:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_recipient@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L116
.L128:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_update_messageTime@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L116
.L129:
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cmp_asn1_octet_string_set1@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L116
.L130:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_transactionID@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L116
.L131:
	movq	-32(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	set_random
	testl	%eax, %eax
	jne	.L132
	movl	$0, %eax
	jmp	.L116
.L132:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_senderNonce@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L116
.L133:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_push1_freeText@PLT
	testl	%eax, %eax
	jne	.L134
	movl	$0, %eax
	jmp	.L116
.L134:
	movl	$1, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	ossl_cmp_hdr_init, .-ossl_cmp_hdr_init
	.section	.rodata
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 32
__func__.4:
	.string	"OSSL_CMP_HDR_get0_transactionID"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"OSSL_CMP_HDR_get0_recipNonce"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 32
__func__.2:
	.string	"OSSL_CMP_HDR_get0_geninfo_ITAVs"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 11
__func__.1:
	.string	"set_random"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"ossl_cmp_hdr_set_transactionID"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

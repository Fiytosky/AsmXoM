	.file	"ocsp_lib.c"
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
	.globl	OCSP_cert_to_id
	.type	OCSP_cert_to_id, @function
OCSP_cert_to_id:
.LFB652:
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
	cmpq	$0, -40(%rbp)
	jne	.L6
	call	EVP_sha1@PLT
	movq	%rax, -40(%rbp)
.L6:
	cmpq	$0, -48(%rbp)
	je	.L7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, -16(%rbp)
	jmp	.L8
.L7:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
.L8:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey_bitstr@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_cert_id_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	OCSP_cert_to_id, .-OCSP_cert_to_id
	.section	.rodata
.LC0:
	.string	"../crypto/ocsp/ocsp_lib.c"
	.text
	.globl	OCSP_cert_id_new
	.type	OCSP_cert_id_new, @function
OCSP_cert_id_new:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	$0, -8(%rbp)
	call	OCSP_CERTID_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L25
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L13:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L26
	call	ASN1_TYPE_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$5, (%rax)
	leaq	-24(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_digest@PLT
	testl	%eax, %eax
	je	.L28
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L29
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L30
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L31
	cmpq	$0, -128(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_STRING_copy@PLT
	testl	%eax, %eax
	je	.L32
.L21:
	movq	-8(%rbp), %rax
	jmp	.L23
.L28:
	nop
.L17:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L12
.L25:
	nop
	jmp	.L12
.L26:
	nop
	jmp	.L12
.L27:
	nop
	jmp	.L12
.L29:
	nop
	jmp	.L12
.L30:
	nop
	jmp	.L12
.L31:
	nop
	jmp	.L12
.L32:
	nop
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_CERTID_free@PLT
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	OCSP_cert_id_new, .-OCSP_cert_id_new
	.globl	OCSP_id_issuer_cmp
	.type	OCSP_id_issuer_cmp, @function
OCSP_id_issuer_cmp:
.LFB654:
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
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L34
	movl	-4(%rbp), %eax
	jmp	.L35
.L34:
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L36
	movl	-4(%rbp), %eax
	jmp	.L35
.L36:
	movq	-32(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	OCSP_id_issuer_cmp, .-OCSP_id_issuer_cmp
	.globl	OCSP_id_cmp
	.type	OCSP_id_cmp, @function
OCSP_id_cmp:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_id_issuer_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L38
	movl	-4(%rbp), %eax
	jmp	.L39
.L38:
	movq	-32(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	OCSP_id_cmp, .-OCSP_id_cmp
	.globl	OCSP_CERTID_dup
	.type	OCSP_CERTID_dup, @function
OCSP_CERTID_dup:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OCSP_CERTID_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	OCSP_CERTID_dup, .-OCSP_CERTID_dup
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"OCSP_cert_id_new"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

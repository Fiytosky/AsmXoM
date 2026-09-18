	.file	"x509_set.c"
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
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.globl	X509_set_version
	.type	X509_set_version, @function
X509_set_version:
.LFB722:
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
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_version@PLT
	cmpq	%rax, -16(%rbp)
	jne	.L10
	movl	$1, %eax
	jmp	.L9
.L10:
	cmpq	$0, -16(%rbp)
	jne	.L11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 128(%rax)
	movl	$1, %eax
	jmp	.L9
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	call	ASN1_INTEGER_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L9
.L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L9
.L13:
	movq	-8(%rbp), %rax
	movl	$1, 128(%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	X509_set_version, .-X509_set_version
	.globl	X509_set_serialNumber
	.type	X509_set_serialNumber, @function
X509_set_serialNumber:
.LFB723:
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
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L17
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_copy@PLT
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	movl	$1, 128(%rax)
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	X509_set_serialNumber, .-X509_set_serialNumber
	.globl	X509_set_issuer_name
	.type	X509_set_issuer_name, @function
X509_set_issuer_name:
.LFB724:
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
	je	.L19
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L20
.L19:
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movl	$1, 128(%rax)
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	X509_set_issuer_name, .-X509_set_issuer_name
	.globl	X509_set_subject_name
	.type	X509_set_subject_name, @function
X509_set_subject_name:
.LFB725:
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
	je	.L23
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	$1, 128(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	X509_set_subject_name, .-X509_set_subject_name
	.globl	ossl_x509_set1_time
	.type	ossl_x509_set1_time, @function
ossl_x509_set1_time:
.LFB726:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L29
	cmpq	$0, -8(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.L30:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	ossl_x509_set1_time, .-ossl_x509_set1_time
	.globl	X509_set1_notBefore
	.type	X509_set1_notBefore, @function
X509_set1_notBefore:
.LFB727:
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
	je	.L32
	cmpq	$0, -16(%rbp)
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_x509_set1_time@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	X509_set1_notBefore, .-X509_set1_notBefore
	.globl	X509_set1_notAfter
	.type	X509_set1_notAfter, @function
X509_set1_notAfter:
.LFB728:
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
	je	.L36
	cmpq	$0, -16(%rbp)
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_x509_set1_time@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	X509_set1_notAfter, .-X509_set1_notAfter
	.globl	X509_set_pubkey
	.type	X509_set_pubkey, @function
X509_set_pubkey:
.LFB729:
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
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_PUBKEY_set@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L41
.L42:
	movq	-8(%rbp), %rax
	movl	$1, 128(%rax)
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	X509_set_pubkey, .-X509_set_pubkey
	.globl	X509_up_ref
	.type	X509_up_ref, @function
X509_up_ref:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L44
	movl	$0, %eax
	jmp	.L46
.L44:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	X509_up_ref, .-X509_up_ref
	.globl	X509_get_version
	.type	X509_get_version, @function
X509_get_version:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	X509_get_version, .-X509_get_version
	.globl	X509_get0_notBefore
	.type	X509_get0_notBefore, @function
X509_get0_notBefore:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	X509_get0_notBefore, .-X509_get0_notBefore
	.globl	X509_get0_notAfter
	.type	X509_get0_notAfter, @function
X509_get0_notAfter:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	X509_get0_notAfter, .-X509_get0_notAfter
	.globl	X509_getm_notBefore
	.type	X509_getm_notBefore, @function
X509_getm_notBefore:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	X509_getm_notBefore, .-X509_getm_notBefore
	.globl	X509_getm_notAfter
	.type	X509_getm_notAfter, @function
X509_getm_notAfter:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	X509_getm_notAfter, .-X509_getm_notAfter
	.globl	X509_get_signature_type
	.type	X509_get_signature_type, @function
X509_get_signature_type:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	X509_get_signature_type, .-X509_get_signature_type
	.globl	X509_get_X509_PUBKEY
	.type	X509_get_X509_PUBKEY, @function
X509_get_X509_PUBKEY:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	X509_get_X509_PUBKEY, .-X509_get_X509_PUBKEY
	.globl	X509_get0_extensions
	.type	X509_get0_extensions, @function
X509_get0_extensions:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	X509_get0_extensions, .-X509_get0_extensions
	.globl	X509_get0_uids
	.type	X509_get0_uids, @function
X509_get0_uids:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L64:
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L66:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	X509_get0_uids, .-X509_get0_uids
	.globl	X509_get0_tbs_sigalg
	.type	X509_get0_tbs_sigalg, @function
X509_get0_tbs_sigalg:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	X509_get0_tbs_sigalg, .-X509_get0_tbs_sigalg
	.globl	X509_SIG_INFO_get
	.type	X509_SIG_INFO_get, @function
X509_SIG_INFO_get:
.LFB741:
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
	je	.L70
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L70:
	cmpq	$0, -24(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L71:
	cmpq	$0, -32(%rbp)
	je	.L72
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L72:
	cmpq	$0, -40(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L73:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	X509_SIG_INFO_get, .-X509_SIG_INFO_get
	.globl	X509_SIG_INFO_set
	.type	X509_SIG_INFO_set, @function
X509_SIG_INFO_set:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	X509_SIG_INFO_set, .-X509_SIG_INFO_set
	.globl	X509_get_signature_info
	.type	X509_get_signature_info, @function
X509_get_signature_info:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	movq	-8(%rbp), %rax
	leaq	176(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	X509_SIG_INFO_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	X509_get_signature_info, .-X509_get_signature_info
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509_set.c"
	.text
	.type	x509_sig_info_init, @function
x509_sig_info_init:
.LFB744:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %ecx
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	je	.L79
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L80
.L79:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L80:
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-32(%rbp), %eax
	cmpl	$809, %eax
	je	.L82
	cmpl	$809, %eax
	jg	.L83
	cmpl	$64, %eax
	je	.L84
	cmpl	$64, %eax
	jg	.L83
	testl	%eax, %eax
	je	.L85
	cmpl	$4, %eax
	je	.L86
	jmp	.L83
.L85:
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	EVP_PKEY_asn1_find@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-8(%rbp), %rax
	movq	216(%rax), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L94
.L87:
	cmpq	$0, -64(%rbp)
	je	.L89
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L89
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L88
.L89:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L84:
	movq	-40(%rbp), %rax
	movl	$63, 8(%rax)
	jmp	.L88
.L86:
	movq	-40(%rbp), %rax
	movl	$39, 8(%rax)
	jmp	.L88
.L82:
	movq	-40(%rbp), %rax
	movl	$105, 8(%rax)
	jmp	.L88
.L83:
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L90:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	leal	0(,%rax,4), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L88
.L94:
	nop
.L88:
	movl	-32(%rbp), %eax
	cmpl	$64, %eax
	je	.L91
	cmpl	$64, %eax
	jl	.L92
	subl	$672, %eax
	cmpl	$2, %eax
	ja	.L92
.L91:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
.L92:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	x509_sig_info_init, .-x509_sig_info_init
	.globl	ossl_x509_init_sig_info
	.type	ossl_x509_init_sig_info, @function
ossl_x509_init_sig_info:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	136(%rax), %rsi
	movq	-8(%rbp), %rax
	addq	$176, %rax
	movq	%rax, %rdi
	call	x509_sig_info_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_x509_init_sig_info, .-ossl_x509_init_sig_info
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"x509_sig_info_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"x509_cmp.c"
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
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB408:
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
.LFE408:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB410:
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
.LFE410:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.globl	X509_issuer_and_serial_cmp
	.type	X509_issuer_and_serial_cmp, @function
X509_issuer_and_serial_cmp:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L12
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	jmp	.L13
.L12:
	cmpq	$0, -40(%rbp)
	jne	.L14
	movl	$-1, %eax
	jmp	.L13
.L14:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L15
	cmpl	$0, -20(%rbp)
	jns	.L16
	movl	$-1, %eax
	jmp	.L13
.L16:
	movl	$1, %eax
	jmp	.L13
.L15:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	X509_issuer_and_serial_cmp, .-X509_issuer_and_serial_cmp
	.section	.rodata
.LC0:
	.string	"MD5"
.LC1:
	.string	"../crypto/x509/x509_cmp.c"
	.text
	.globl	X509_issuer_and_serial_hash
	.type	X509_issuer_and_serial_hash, @function
X509_issuer_and_serial_hash:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L28
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L32
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L33
	leaq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L34
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	movzbl	-47(%rbp), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-46(%rbp), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movzbl	-45(%rbp), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rdx, %rax
	andl	$4294967295, %eax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L28:
	nop
	jmp	.L20
.L29:
	nop
	jmp	.L20
.L30:
	nop
	jmp	.L20
.L31:
	nop
	jmp	.L20
.L32:
	nop
	jmp	.L20
.L33:
	nop
	jmp	.L20
.L34:
	nop
.L20:
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$68, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509_issuer_and_serial_hash, .-X509_issuer_and_serial_hash
	.globl	X509_issuer_name_cmp
	.type	X509_issuer_name_cmp, @function
X509_issuer_name_cmp:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	X509_issuer_name_cmp, .-X509_issuer_name_cmp
	.globl	X509_subject_name_cmp
	.type	X509_subject_name_cmp, @function
X509_subject_name_cmp:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	X509_subject_name_cmp, .-X509_subject_name_cmp
	.globl	X509_CRL_cmp
	.type	X509_CRL_cmp, @function
X509_CRL_cmp:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	X509_CRL_cmp, .-X509_CRL_cmp
	.globl	X509_CRL_match
	.type	X509_CRL_match, @function
X509_CRL_match:
.LFB627:
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
	movl	132(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L42
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L42
	movq	-32(%rbp), %rax
	leaq	184(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$184, %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
	nop
	cmpl	$0, -4(%rbp)
	js	.L45
	jmp	.L47
.L42:
	movl	$-2, %eax
	jmp	.L44
.L47:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	jmp	.L44
.L45:
	movl	$-1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	X509_CRL_match, .-X509_CRL_match
	.globl	X509_get_issuer_name
	.type	X509_get_issuer_name, @function
X509_get_issuer_name:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	X509_get_issuer_name, .-X509_get_issuer_name
	.globl	X509_issuer_name_hash
	.type	X509_issuer_name_hash, @function
X509_issuer_name_hash:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_hash_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	X509_issuer_name_hash, .-X509_issuer_name_hash
	.globl	X509_issuer_name_hash_old
	.type	X509_issuer_name_hash_old, @function
X509_issuer_name_hash_old:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_hash_old@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	X509_issuer_name_hash_old, .-X509_issuer_name_hash_old
	.globl	X509_get_subject_name
	.type	X509_get_subject_name, @function
X509_get_subject_name:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	X509_get_subject_name, .-X509_get_subject_name
	.globl	X509_get_serialNumber
	.type	X509_get_serialNumber, @function
X509_get_serialNumber:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	X509_get_serialNumber, .-X509_get_serialNumber
	.globl	X509_get0_serialNumber
	.type	X509_get0_serialNumber, @function
X509_get0_serialNumber:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	X509_get0_serialNumber, .-X509_get0_serialNumber
	.globl	X509_subject_name_hash
	.type	X509_subject_name_hash, @function
X509_subject_name_hash:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_hash_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	X509_subject_name_hash, .-X509_subject_name_hash
	.globl	X509_subject_name_hash_old
	.type	X509_subject_name_hash_old, @function
X509_subject_name_hash_old:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_hash_old@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	X509_subject_name_hash_old, .-X509_subject_name_hash_old
	.globl	X509_cmp
	.type	X509_cmp, @function
X509_cmp:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L67
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L67
	movq	-32(%rbp), %rax
	leaq	312(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$312, %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
.L67:
	cmpl	$0, -4(%rbp)
	je	.L68
	cmpl	$0, -4(%rbp)
	jns	.L69
	movl	$-1, %eax
	jmp	.L66
.L69:
	movl	$1, %eax
	jmp	.L66
.L68:
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L71
	movq	-32(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L71
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L72
	movl	$-1, %eax
	jmp	.L66
.L72:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L73
	movl	$1, %eax
	jmp	.L66
.L73:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	112(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
.L71:
	cmpl	$0, -4(%rbp)
	js	.L74
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	jmp	.L66
.L74:
	movl	$-1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	X509_cmp, .-X509_cmp
	.globl	ossl_x509_add_cert_new
	.type	ossl_x509_add_cert_new, @function
ossl_x509_add_cert_new:
.LFB637:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ossl_x509_add_cert_new, .-ossl_x509_add_cert_new
	.globl	X509_add_cert
	.type	X509_add_cert, @function
X509_add_cert:
.LFB638:
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L80:
	cmpq	$0, -48(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L81
.L82:
	movl	-52(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L83
	movl	$0, -20(%rbp)
	jmp	.L84
.L86:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$1, %eax
	jmp	.L81
.L85:
	addl	$1, -20(%rbp)
.L84:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L86
.L83:
	movl	-52(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L87
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L87
	cmpl	$0, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	jmp	.L81
.L87:
	movl	-52(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L88
	movl	$0, %r12d
	jmp	.L89
.L88:
	movl	$-1, %r12d
.L89:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L90:
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L91
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
.L91:
	movl	$1, %eax
.L81:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	X509_add_cert, .-X509_add_cert
	.globl	X509_add_certs
	.type	X509_add_certs, @function
X509_add_certs:
.LFB639:
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
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_certs_new@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	X509_add_certs, .-X509_add_certs
	.globl	ossl_x509_add_certs_new
	.type	ossl_x509_add_certs_new, @function
ossl_x509_add_certs_new:
.LFB640:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L96
.L101:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L97
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L98
.L97:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L98:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	addl	$1, -4(%rbp)
.L96:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L101
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_x509_add_certs_new, .-ossl_x509_add_certs_new
	.globl	X509_NAME_cmp
	.type	X509_NAME_cmp, @function
X509_NAME_cmp:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L103
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	jmp	.L104
.L103:
	cmpq	$0, -24(%rbp)
	jne	.L105
	movl	$-1, %eax
	jmp	.L104
.L105:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L107
.L106:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L107
	movl	$-2, %eax
	jmp	.L104
.L107:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L109
.L108:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L109
	movl	$-2, %eax
	jmp	.L104
.L109:
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L110
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L110
	movl	$0, %eax
	jmp	.L104
.L110:
	cmpl	$0, -4(%rbp)
	jne	.L111
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L113
.L112:
	movl	$-2, %eax
	jmp	.L104
.L113:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
.L111:
	cmpl	$0, -4(%rbp)
	js	.L114
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	jmp	.L104
.L114:
	movl	$-1, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	X509_NAME_cmp, .-X509_NAME_cmp
	.section	.rodata
.LC2:
	.string	"SHA1"
	.text
	.globl	X509_NAME_hash_ex
	.type	X509_NAME_hash_ex, @function
X509_NAME_hash_ex:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -20(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L117
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
.L117:
	cmpl	$0, -20(%rbp)
	js	.L118
	cmpq	$0, -16(%rbp)
	je	.L118
	movq	-56(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rsi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L118
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	movzbl	-47(%rbp), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-46(%rbp), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movzbl	-45(%rbp), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rdx, %rax
	andl	$4294967295, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L118
	movq	-80(%rbp), %rax
	movl	$1, (%rax)
.L118:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	X509_NAME_hash_ex, .-X509_NAME_hash_ex
	.section	.rodata
.LC3:
	.string	"-fips"
	.text
	.globl	X509_NAME_hash_old
	.type	X509_NAME_hash_old, @function
X509_NAME_hash_old:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L126
	cmpq	$0, -24(%rbp)
	je	.L126
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	testl	%eax, %eax
	js	.L127
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L128
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L128
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L128
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	movzbl	-47(%rbp), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-46(%rbp), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movzbl	-45(%rbp), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rdx, %rax
	andl	$4294967295, %eax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L126:
	nop
	jmp	.L123
.L127:
	nop
	jmp	.L123
.L128:
	nop
.L123:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	X509_NAME_hash_old, .-X509_NAME_hash_old
	.globl	X509_find_by_issuer_and_serial
	.type	X509_find_by_issuer_and_serial, @function
X509_find_by_issuer_and_serial:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$432, %rsp
	movq	%rdi, -408(%rbp)
	movq	%rsi, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.L130
	movl	$0, %eax
	jmp	.L135
.L130:
	movq	-424(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -392(%rbp)
	movq	%rdx, -384(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -376(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -352(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L132
.L134:
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	leaq	-400(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_issuer_and_serial_cmp@PLT
	testl	%eax, %eax
	jne	.L133
	movq	-16(%rbp), %rax
	jmp	.L135
.L133:
	addl	$1, -4(%rbp)
.L132:
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L134
	movl	$0, %eax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	X509_find_by_issuer_and_serial, .-X509_find_by_issuer_and_serial
	.globl	X509_find_by_subject
	.type	X509_find_by_subject, @function
X509_find_by_subject:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L137
.L140:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-16(%rbp), %rax
	jmp	.L139
.L138:
	addl	$1, -4(%rbp)
.L137:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L140
	movl	$0, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	X509_find_by_subject, .-X509_find_by_subject
	.globl	X509_get0_pubkey
	.type	X509_get0_pubkey, @function
X509_get0_pubkey:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	X509_get0_pubkey, .-X509_get0_pubkey
	.globl	X509_get_pubkey
	.type	X509_get_pubkey, @function
X509_get_pubkey:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L145
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get@PLT
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	X509_get_pubkey, .-X509_get_pubkey
	.globl	X509_check_private_key
	.type	X509_check_private_key, @function
X509_check_private_key:
.LFB648:
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
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L148
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_check_private_key@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	X509_check_private_key, .-X509_check_private_key
	.globl	ossl_x509_check_private_key
	.type	ossl_x509_check_private_key, @function
ossl_x509_check_private_key:
.LFB649:
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
	jne	.L151
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L151:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	cmpl	$1, %eax
	je	.L153
	cmpl	$1, %eax
	jg	.L154
	testl	%eax, %eax
	je	.L155
	testl	%eax, %eax
	jg	.L154
	cmpl	$-2, %eax
	je	.L156
	cmpl	$-1, %eax
	je	.L157
	jmp	.L154
.L153:
	movl	$1, %eax
	jmp	.L152
.L155:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L157:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$421, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L156:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L154:
	movl	$0, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	ossl_x509_check_private_key, .-ossl_x509_check_private_key
	.section	.rodata
.LC4:
	.string	"EC"
	.text
	.type	check_suite_b, @function
check_suite_b:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L159
	leaq	.LC4(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L160
.L159:
	movl	$57, %eax
	jmp	.L169
.L160:
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_group_name@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$58, %eax
	jmp	.L169
.L162:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$715, -4(%rbp)
	jne	.L163
	cmpl	$-1, -124(%rbp)
	je	.L164
	cmpl	$795, -124(%rbp)
	je	.L164
	movl	$59, %eax
	jmp	.L169
.L164:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	andl	$131072, %eax
	testq	%rax, %rax
	jne	.L165
	movl	$60, %eax
	jmp	.L169
.L165:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	andq	$-65537, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L166
.L163:
	cmpl	$415, -4(%rbp)
	jne	.L167
	cmpl	$-1, -124(%rbp)
	je	.L168
	cmpl	$794, -124(%rbp)
	je	.L168
	movl	$59, %eax
	jmp	.L169
.L168:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	andl	$65536, %eax
	testq	%rax, %rax
	jne	.L166
	movl	$60, %eax
	jmp	.L169
.L167:
	movl	$58, %eax
	jmp	.L169
.L166:
	movl	$0, %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	check_suite_b, .-check_suite_b
	.globl	X509_chain_check_suiteb
	.type	X509_chain_check_suiteb, @function
X509_chain_check_suiteb:
.LFB651:
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
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	andl	$196608, %eax
	testq	%rax, %rax
	jne	.L171
	movl	$0, %eax
	jmp	.L187
.L171:
	cmpq	$0, -48(%rbp)
	jne	.L173
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L174
.L173:
	movl	$0, -8(%rbp)
.L174:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L175
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	check_suite_b
	jmp	.L187
.L175:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_version@PLT
	cmpq	$2, %rax
	je	.L176
	movl	$56, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L177
.L176:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	check_suite_b
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L179
	movl	$0, -8(%rbp)
	jmp	.L177
.L182:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_signature_nid@PLT
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_version@PLT
	cmpq	$2, %rax
	je	.L180
	movl	$56, -4(%rbp)
	jmp	.L177
.L180:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_suite_b
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L188
	addl	$1, -8(%rbp)
.L179:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L182
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_signature_nid@PLT
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_suite_b
	movl	%eax, -4(%rbp)
	jmp	.L177
.L188:
	nop
.L177:
	cmpl	$0, -4(%rbp)
	je	.L183
	cmpl	$59, -4(%rbp)
	je	.L184
	cmpl	$60, -4(%rbp)
	jne	.L185
.L184:
	cmpl	$0, -8(%rbp)
	je	.L185
	subl	$1, -8(%rbp)
.L185:
	cmpl	$60, -4(%rbp)
	jne	.L186
	movq	-32(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	je	.L186
	movl	$61, -4(%rbp)
.L186:
	cmpq	$0, -40(%rbp)
	je	.L183
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L183:
	movl	-4(%rbp), %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	X509_chain_check_suiteb, .-X509_chain_check_suiteb
	.globl	X509_CRL_check_suiteb
	.type	X509_CRL_check_suiteb, @function
X509_CRL_check_suiteb:
.LFB652:
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
	andl	$196608, %eax
	testq	%rax, %rax
	jne	.L190
	movl	$0, %eax
	jmp	.L191
.L190:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	leaq	-40(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_suite_b
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	X509_CRL_check_suiteb, .-X509_CRL_check_suiteb
	.globl	X509_chain_up_ref
	.type	X509_chain_up_ref, @function
X509_chain_up_ref:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L193
	movl	$0, %eax
	jmp	.L194
.L193:
	movl	$0, -4(%rbp)
	jmp	.L195
.L198:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L202
	addl	$1, -4(%rbp)
.L195:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L198
	movq	-16(%rbp), %rax
	jmp	.L194
.L202:
	nop
.L197:
	jmp	.L199
.L200:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_free@PLT
.L199:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jg	.L200
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	X509_chain_up_ref, .-X509_chain_up_ref
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"ossl_x509_add_cert_new"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 14
__func__.3:
	.string	"X509_add_cert"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"X509_add_certs"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"X509_check_private_key"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"ossl_x509_check_private_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"x509_vfy.c"
	.text
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
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
	.type	ossl_check_const_X509_REVOKED_sk_type, @function
ossl_check_const_X509_REVOKED_sk_type:
.LFB415:
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
.LFE415:
	.size	ossl_check_const_X509_REVOKED_sk_type, .-ossl_check_const_X509_REVOKED_sk_type
	.type	ossl_check_const_X509_CRL_sk_type, @function
ossl_check_const_X509_CRL_sk_type:
.LFB421:
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
.LFE421:
	.size	ossl_check_const_X509_CRL_sk_type, .-ossl_check_const_X509_CRL_sk_type
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB422:
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
.LFE422:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.type	ossl_check_X509_CRL_freefunc_type, @function
ossl_check_X509_CRL_freefunc_type:
.LFB425:
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
.LFE425:
	.size	ossl_check_X509_CRL_freefunc_type, .-ossl_check_X509_CRL_freefunc_type
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB433:
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
.LFE433:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB522:
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
.LFE522:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_const_DIST_POINT_sk_type, @function
ossl_check_const_DIST_POINT_sk_type:
.LFB534:
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
.LFE534:
	.size	ossl_check_const_DIST_POINT_sk_type, .-ossl_check_const_DIST_POINT_sk_type
	.type	sk_danetls_record_num, @function
sk_danetls_record_num:
.LFB617:
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
.LFE617:
	.size	sk_danetls_record_num, .-sk_danetls_record_num
	.type	sk_danetls_record_value, @function
sk_danetls_record_value:
.LFB618:
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
.LFE618:
	.size	sk_danetls_record_value, .-sk_danetls_record_value
	.type	null_callback, @function
null_callback:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	null_callback, .-null_callback
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509_vfy.c"
	.text
	.globl	X509_self_signed
	.type	X509_self_signed, @function
X509_self_signed:
.LFB723:
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
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509v3_cache_extensions@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$-1, %eax
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L35
.L37:
	cmpl	$0, -28(%rbp)
	jne	.L38
	movl	$1, %eax
	jmp	.L35
.L38:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_verify@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	X509_self_signed, .-X509_self_signed
	.type	lookup_cert_match, @function
lookup_cert_match:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rax
	movq	120(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	movq	%rax, -40(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -40(%rbp)
	jne	.L40
	movl	$-1, %eax
	jmp	.L41
.L40:
	movl	$0, -28(%rbp)
	jmp	.L42
.L45:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	je	.L48
	movq	$0, -24(%rbp)
	addl	$1, -28(%rbp)
.L42:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L45
	jmp	.L44
.L48:
	nop
.L44:
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$-1, -32(%rbp)
	jmp	.L46
.L47:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L46:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-32(%rbp), %eax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	lookup_cert_match, .-lookup_cert_match
	.type	verify_cb_cert, @function
verify_cb_cert:
.LFB725:
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
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L50
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 172(%rax)
.L51:
	cmpq	$0, -16(%rbp)
	jne	.L52
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	jmp	.L53
.L52:
	movq	-16(%rbp), %rax
.L53:
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
	cmpl	$0, -24(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 176(%rax)
.L54:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	verify_cb_cert, .-verify_cb_cert
	.type	verify_cb_crl, @function
verify_cb_crl:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 176(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	verify_cb_crl, .-verify_cb_crl
	.type	check_auth_level, @function
check_auth_level:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jg	.L59
	movl	$1, %eax
	jmp	.L60
.L59:
	movl	$0, -4(%rbp)
	jmp	.L61
.L64:
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L62
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_cert_key_level
	testl	%eax, %eax
	jne	.L62
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$67, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L60
.L62:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L63
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_sig_level
	testl	%eax, %eax
	jne	.L63
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$68, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L60
.L63:
	addl	$1, -4(%rbp)
.L61:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L64
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	check_auth_level, .-check_auth_level
	.type	verify_rpk, @function
verify_rpk:
.LFB728:
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
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	verify_rpk, .-verify_rpk
	.type	verify_chain, @function
verify_chain:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	build_chain
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_extensions
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_auth_level
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_id
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L69
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_get_pubkey_parameters@PLT
	testl	%eax, %eax
	je	.L70
	movl	$1, -4(%rbp)
	jmp	.L71
.L70:
	movl	$-1, -4(%rbp)
.L71:
	cmpl	$0, -4(%rbp)
	jle	.L69
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L72
.L69:
	movl	-4(%rbp), %eax
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	-24(%rbp), %rcx
	leaq	172(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	X509_chain_check_suiteb@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L74
	movq	-24(%rbp), %rax
	movl	172(%rax), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	jmp	.L76
.L75:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	internal_verify
	movl	%eax, -4(%rbp)
.L76:
	cmpl	$0, -4(%rbp)
	jg	.L77
	movl	-4(%rbp), %eax
	jmp	.L73
.L77:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_name_constraints
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L78
	movl	-4(%rbp), %eax
	jmp	.L73
.L78:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_asid_validate_path@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L79
	movl	-4(%rbp), %eax
	jmp	.L73
.L79:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_addr_validate_path@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L80
	movl	-4(%rbp), %eax
	jmp	.L73
.L80:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L81
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L81:
	movl	-4(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	verify_chain, .-verify_chain
	.globl	X509_STORE_CTX_verify
	.type	X509_STORE_CTX_verify, @function
X509_STORE_CTX_verify:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L84
.L83:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_verify_rpk
	jmp	.L84
.L85:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L86
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L86:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_verify_x509
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	X509_STORE_CTX_verify, .-X509_STORE_CTX_verify
	.globl	X509_verify_cert
	.type	X509_verify_cert, @function
X509_verify_cert:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_verify_rpk
	jmp	.L92
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_verify_x509
.L92:
	nop
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	X509_verify_cert, .-X509_verify_cert
	.type	x509_verify_rpk, @function
x509_verify_rpk:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_key_level
	testl	%eax, %eax
	jne	.L94
	movq	-24(%rbp), %rax
	movl	$66, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	-24(%rbp), %rax
	movl	$95, 176(%rax)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L96
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dane_verify_rpk
	movl	%eax, -4(%rbp)
	jmp	.L97
.L96:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	verify_rpk
	movl	%eax, -4(%rbp)
.L97:
	cmpl	$0, -4(%rbp)
	jg	.L98
	movq	-24(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	jne	.L98
	movq	-24(%rbp), %rax
	movl	$1, 176(%rax)
.L98:
	movl	-4(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	x509_verify_rpk, .-x509_verify_rpk
	.type	x509_verify_x509, @function
x509_verify_x509:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movl	$69, 176(%rax)
	movl	$-1, %eax
	jmp	.L101
.L100:
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L102
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movl	$69, 176(%rax)
	movl	$-1, %eax
	jmp	.L101
.L102:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	152(%rdx), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	jne	.L103
	movq	-24(%rbp), %rax
	movl	$17, 176(%rax)
	movl	$-1, %eax
	jmp	.L101
.L103:
	movq	-24(%rbp), %rax
	movl	$1, 148(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_cert_key_level
	testl	%eax, %eax
	jne	.L104
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$66, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L101
.L104:
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L105
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dane_verify
	movl	%eax, -4(%rbp)
	jmp	.L106
.L105:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	verify_chain
	movl	%eax, -4(%rbp)
.L106:
	cmpl	$0, -4(%rbp)
	jg	.L107
	movq	-24(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	jne	.L107
	movq	-24(%rbp), %rax
	movl	$1, 176(%rax)
.L107:
	movl	-4(%rbp), %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	x509_verify_x509, .-x509_verify_x509
	.type	sk_X509_contains, @function
sk_X509_contains:
.LFB734:
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
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L109
.L112:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	jne	.L110
	movl	$1, %eax
	jmp	.L111
.L110:
	addl	$1, -4(%rbp)
.L109:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L112
	movl	$0, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	sk_X509_contains, .-sk_X509_contains
	.type	find_issuer, @function
find_issuer:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L114
.L121:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L115
	movq	-72(%rbp), %rax
	movl	232(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L116
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	je	.L117
.L116:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_contains
	testl	%eax, %eax
	jne	.L115
.L117:
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_check_cert_time@PLT
	testl	%eax, %eax
	je	.L118
	movq	-40(%rbp), %rax
	jmp	.L119
.L118:
	cmpq	$0, -32(%rbp)
	je	.L120
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jle	.L115
.L120:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.L115:
	addl	$1, -20(%rbp)
.L114:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L121
	movq	-32(%rbp), %rax
.L119:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	find_issuer, .-find_issuer
	.type	check_issued, @function
check_issued:
.LFB736:
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
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_likely_issued@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L123
	movl	$1, %eax
	jmp	.L124
.L123:
	movl	$0, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	check_issued, .-check_issued
	.type	get_issuer_sk, @function
get_issuer_sk:
.LFB737:
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
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_issuer
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L128
	movl	$1, %eax
	jmp	.L127
.L128:
	movl	$-1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	get_issuer_sk, .-get_issuer_sk
	.type	lookup_certs_sk, @function
lookup_certs_sk:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movl	$0, -4(%rbp)
	jmp	.L133
.L135:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
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
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-40(%rbp), %rax
	movl	$17, 176(%rax)
	movl	$0, %eax
	jmp	.L132
.L134:
	addl	$1, -4(%rbp)
.L133:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L135
	movq	-16(%rbp), %rax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	lookup_certs_sk, .-lookup_certs_sk
	.type	check_purpose, @function
check_purpose:
.LFB739:
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
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	$3, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L137
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L137
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_check_trust@PLT
	movl	%eax, -4(%rbp)
.L137:
	cmpl	$1, -4(%rbp)
	je	.L138
	cmpl	$2, -4(%rbp)
	je	.L147
	jmp	.L146
.L138:
	movl	$1, %eax
	jmp	.L141
.L146:
	cmpl	$0, -44(%rbp)
	setg	%al
	movzbl	%al, %edx
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	testl	%eax, %eax
	je	.L148
	cmpl	$1, %eax
	jne	.L144
	movl	$1, %eax
	jmp	.L141
.L144:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$32, %eax
	testq	%rax, %rax
	jne	.L149
	movl	$1, %eax
	jmp	.L141
.L148:
	nop
	jmp	.L149
.L147:
	nop
	jmp	.L142
.L149:
	nop
.L142:
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$26, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	check_purpose, .-check_purpose
	.type	check_extensions, @function
check_extensions:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -28(%rbp)
	movl	$-1, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movl	$0, -24(%rbp)
	movl	$6, -20(%rbp)
	jmp	.L152
.L151:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$64, %eax
	shrq	$6, %rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, -20(%rbp)
.L152:
	movl	$0, -4(%rbp)
	jmp	.L153
.L192:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L154
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L154
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$34, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	cmpl	$0, -24(%rbp)
	jne	.L156
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L156
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$40, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L155
.L156:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_check_ca@PLT
	movl	%eax, -44(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L157
	cmpl	$0, -8(%rbp)
	je	.L158
	jmp	.L193
.L157:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L194
	cmpl	$1, -44(%rbp)
	je	.L194
	cmpl	$0, -44(%rbp)
	je	.L194
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$79, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L194
	movl	$0, %eax
	jmp	.L155
.L158:
	cmpl	$0, -44(%rbp)
	je	.L195
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$37, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L155
.L193:
	cmpl	$0, -44(%rbp)
	je	.L163
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jg	.L164
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L196
.L164:
	cmpl	$1, -44(%rbp)
	je	.L196
.L163:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$79, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L196
	movl	$0, %eax
	jmp	.L155
.L194:
	nop
	jmp	.L161
.L195:
	nop
	jmp	.L161
.L196:
	nop
.L161:
	cmpl	$1, -28(%rbp)
	jle	.L166
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	check_curve
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L167
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L167
	movl	$0, %eax
	jmp	.L155
.L167:
	cmpl	$0, -44(%rbp)
	jne	.L166
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$94, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L166
	movl	$0, %eax
	jmp	.L155
.L166:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L168
	cmpl	$1, -28(%rbp)
	jle	.L168
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	cmpq	$-1, %rax
	je	.L169
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L170
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$80, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L170
	movl	$0, %eax
	jmp	.L155
.L170:
	movq	-40(%rbp), %rax
	movl	236(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L169
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$81, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L155
.L169:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L171
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L171
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L171
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$89, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L171
	movl	$0, %eax
	jmp	.L155
.L171:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L172
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L173
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$92, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L155
.L172:
	movq	-40(%rbp), %rax
	movl	236(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L173
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$82, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L155
.L173:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	testl	%eax, %eax
	jne	.L174
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$83, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L174
	movl	$0, %eax
	jmp	.L155
.L174:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L175
	movq	-40(%rbp), %rax
	movl	236(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L175
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L176
.L175:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	testl	%eax, %eax
	jne	.L176
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$84, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L155
.L176:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	testl	%eax, %eax
	jne	.L177
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	jne	.L177
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$88, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L177
	movl	$0, %eax
	jmp	.L155
.L177:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L178
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$87, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L178
	movl	$0, %eax
	jmp	.L155
.L178:
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$136, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_cmp@PLT
	testl	%eax, %eax
	je	.L179
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$78, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L179
	movl	$0, %eax
	jmp	.L155
.L179:
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L180
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$90, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L180
	movl	$0, %eax
	jmp	.L155
.L180:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	je	.L181
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L181
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$91, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L181
	movl	$0, %eax
	jmp	.L155
.L181:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_version@PLT
	cmpq	$1, %rax
	jle	.L182
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jle	.L183
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L183
.L184:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$85, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L183
	movl	$0, %eax
	jmp	.L155
.L183:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L168
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L168
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$86, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L155
.L182:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L168
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$93, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L155
.L168:
	cmpl	$0, -20(%rbp)
	jle	.L185
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	check_purpose
	testl	%eax, %eax
	jne	.L185
	movl	$0, %eax
	jmp	.L155
.L185:
	cmpl	$1, -4(%rbp)
	jle	.L186
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	cmpq	$-1, %rax
	je	.L186
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	216(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L186
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$25, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L155
.L186:
	cmpl	$0, -4(%rbp)
	jle	.L187
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L187
	addl	$1, -12(%rbp)
.L187:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L188
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	cmpq	$-1, %rax
	je	.L189
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L190
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$38, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L190
	movl	$0, %eax
	jmp	.L155
.L190:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	%eax, -16(%rbp)
.L189:
	addl	$1, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L191
.L188:
	movl	$1, -8(%rbp)
.L191:
	addl	$1, -4(%rbp)
.L153:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L192
	movl	$1, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	check_extensions, .-check_extensions
	.type	has_san_id, @function
has_san_id:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movl	$0, -4(%rbp)
	jmp	.L200
.L203:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L201
	movl	$1, -8(%rbp)
	jmp	.L202
.L201:
	addl	$1, -4(%rbp)
.L200:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L203
.L202:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movl	-8(%rbp), %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	has_san_id, .-has_san_id
	.type	check_name_constraints, @function
check_name_constraints:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L205
.L227:
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L206
	movq	-48(%rbp), %rax
	movl	232(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L229
.L206:
	movq	-48(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L208
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jg	.L209
	movl	$72, -28(%rbp)
	jmp	.L210
.L209:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	movl	%eax, %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_entry_count@PLT
	addl	$1, %eax
	cmpl	%eax, %ebx
	je	.L211
	movl	$72, -28(%rbp)
	jmp	.L210
.L211:
	movl	-80(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_set@PLT
	movl	%eax, %ebx
	movl	-80(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_set@PLT
	cmpl	%eax, %ebx
	jne	.L212
	movl	$72, -28(%rbp)
	jmp	.L210
.L212:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L213
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-104(%rbp), %rax
	movl	$17, 176(%rax)
	movl	$-1, %eax
	jmp	.L214
.L213:
	movl	-80(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_delete_entry@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -76(%rbp)
	cmpl	$13, -76(%rbp)
	jne	.L215
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L216
.L215:
	movl	$72, -28(%rbp)
.L216:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
.L210:
	cmpl	$0, -28(%rbp)
	je	.L208
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L208
	movl	$0, %eax
	jmp	.L214
.L208:
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L217
.L226:
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	288(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L218
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NAME_CONSTRAINTS_check@PLT
	movl	%eax, -32(%rbp)
	movl	$1, -36(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L219
	cmpl	$0, -20(%rbp)
	jne	.L219
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L219
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L220
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	has_san_id
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L219
.L220:
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NAME_CONSTRAINTS_check_CN@PLT
	movl	%eax, -32(%rbp)
.L219:
	cmpl	$0, -36(%rbp)
	jns	.L221
	movl	-36(%rbp), %eax
	jmp	.L214
.L221:
	cmpl	$0, -32(%rbp)
	je	.L230
	cmpl	$17, -32(%rbp)
	jne	.L228
	movl	$-1, %eax
	jmp	.L214
.L228:
	movl	-32(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L231
	movl	$0, %eax
	jmp	.L214
.L230:
	nop
	jmp	.L218
.L231:
	nop
.L218:
	subl	$1, -24(%rbp)
.L217:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.L226
	jmp	.L207
.L229:
	nop
.L207:
	subl	$1, -20(%rbp)
.L205:
	cmpl	$0, -20(%rbp)
	jns	.L227
	movl	$1, %eax
.L214:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	check_name_constraints, .-check_name_constraints
	.type	check_id_error, @function
check_id_error:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	verify_cb_cert
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	check_id_error, .-check_id_error
	.type	check_hosts, @function
check_hosts:
.LFB744:
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
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L235
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$842, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 72(%rax)
.L235:
	movl	$0, -4(%rbp)
	jmp	.L236
.L239:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	64(%rax), %edx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_check_host@PLT
	testl	%eax, %eax
	jle	.L237
	movl	$1, %eax
	jmp	.L238
.L237:
	addl	$1, -4(%rbp)
.L236:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L239
	cmpl	$0, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	check_hosts, .-check_hosts
	.type	check_id, @function
check_id:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_hosts
	testl	%eax, %eax
	jg	.L241
	movq	-24(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	check_id_error
	testl	%eax, %eax
	jne	.L241
	movl	$0, %eax
	jmp	.L242
.L241:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L243
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_check_email@PLT
	testl	%eax, %eax
	jg	.L243
	movq	-24(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	check_id_error
	testl	%eax, %eax
	jne	.L243
	movl	$0, %eax
	jmp	.L242
.L243:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L244
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_check_ip@PLT
	testl	%eax, %eax
	jg	.L244
	movq	-24(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	check_id_error
	testl	%eax, %eax
	jne	.L244
	movl	$0, %eax
	jmp	.L242
.L244:
	movl	$1, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	check_id, .-check_id
	.type	check_trust, @function
check_trust:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L246
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$5, %eax
	testl	%eax, %eax
	je	.L246
	cmpl	$0, -76(%rbp)
	jle	.L246
	movl	-76(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L246
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_dane_issuer
	movl	%eax, -48(%rbp)
	cmpl	$3, -48(%rbp)
	je	.L246
	movl	-48(%rbp), %eax
	jmp	.L266
.L246:
	movl	-76(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L248
.L253:
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_check_trust@PLT
	movl	%eax, -48(%rbp)
	cmpl	$1, -48(%rbp)
	je	.L267
	cmpl	$2, -48(%rbp)
	je	.L268
	addl	$1, -20(%rbp)
.L248:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L253
	movl	-76(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L254
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$524288, %eax
	testq	%rax, %rax
	jne	.L269
	movl	$3, %eax
	jmp	.L266
.L254:
	movl	-76(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L256
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$524288, %eax
	testq	%rax, %rax
	je	.L256
	movl	$0, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_cert_match
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L257
	movl	-52(%rbp), %eax
	jmp	.L266
.L257:
	cmpl	$0, -52(%rbp)
	jne	.L258
	movl	$3, %eax
	jmp	.L266
.L258:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_check_trust@PLT
	movl	%eax, -48(%rbp)
	cmpl	$2, -48(%rbp)
	jne	.L259
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L252
.L259:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_set@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-72(%rbp), %rax
	movl	$0, 148(%rax)
	jmp	.L250
.L256:
	movl	$3, %eax
	jmp	.L266
.L268:
	nop
.L252:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$28, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L260
	movl	$2, %eax
	jmp	.L266
.L260:
	movl	$3, %eax
	jmp	.L266
.L267:
	nop
	jmp	.L250
.L269:
	nop
.L250:
	cmpq	$0, -40(%rbp)
	je	.L262
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jg	.L263
.L262:
	movl	$1, %eax
	jmp	.L266
.L263:
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jns	.L264
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 48(%rax)
.L264:
	movq	-40(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	js	.L265
	movl	$1, %eax
	jmp	.L266
.L265:
	movl	$3, %eax
.L266:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	check_trust, .-check_trust
	.type	check_revocation, @function
check_revocation:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L271
	movl	$1, %eax
	jmp	.L272
.L271:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L273
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L274
.L273:
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L275
	movl	$1, %eax
	jmp	.L272
.L275:
	movl	$0, -8(%rbp)
.L274:
	movl	$0, -4(%rbp)
	jmp	.L276
.L278:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_cert
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L277
	movl	-12(%rbp), %eax
	jmp	.L272
.L277:
	addl	$1, -4(%rbp)
.L276:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L278
	movl	$1, %eax
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	check_revocation, .-check_revocation
	.type	check_cert, @function
check_cert:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 212(%rax)
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L282
	movl	$1, %eax
	jmp	.L293
.L292:
	movq	-56(%rbp), %rax
	movl	212(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-56(%rbp), %rax
	movq	88(%rax), %r8
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	jmp	.L284
.L283:
	movq	-16(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_crl_delta
	movl	%eax, -4(%rbp)
.L284:
	cmpl	$0, -4(%rbp)
	jne	.L285
	movq	-56(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	movl	%eax, -4(%rbp)
	jmp	.L286
.L285:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L294
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L288
	movq	-56(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L295
	movq	-56(%rbp), %rax
	movq	104(%rax), %r8
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L290
	jmp	.L286
.L288:
	movl	$1, -4(%rbp)
.L290:
	cmpl	$2, -4(%rbp)
	je	.L291
	movq	-56(%rbp), %rax
	movq	104(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L296
.L291:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	212(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L282
	movq	-56(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	movl	%eax, -4(%rbp)
	jmp	.L286
.L282:
	movq	-56(%rbp), %rax
	movl	212(%rax), %eax
	cmpl	$32895, %eax
	jne	.L292
	jmp	.L286
.L294:
	nop
	jmp	.L286
.L295:
	nop
	jmp	.L286
.L296:
	nop
.L286:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 200(%rax)
	movl	-4(%rbp), %eax
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	check_cert, .-check_cert
	.type	check_crl_time, @function
check_crl_time:
.LFB749:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L298
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.L299
.L298:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L300
	movl	$1, %eax
	jmp	.L301
.L300:
	movq	$0, -8(%rbp)
.L299:
	cmpl	$0, -36(%rbp)
	je	.L302
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 200(%rax)
.L302:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_lastUpdate@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L303
	cmpl	$0, -36(%rbp)
	jne	.L304
	movl	$0, %eax
	jmp	.L301
.L304:
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L303
	movl	$0, %eax
	jmp	.L301
.L303:
	cmpl	$0, -12(%rbp)
	jle	.L305
	cmpl	$0, -36(%rbp)
	jne	.L306
	movl	$0, %eax
	jmp	.L301
.L306:
	movq	-24(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L305
	movl	$0, %eax
	jmp	.L301
.L305:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	testq	%rax, %rax
	je	.L307
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L308
	cmpl	$0, -36(%rbp)
	jne	.L309
	movl	$0, %eax
	jmp	.L301
.L309:
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L308
	movl	$0, %eax
	jmp	.L301
.L308:
	cmpl	$0, -12(%rbp)
	jns	.L307
	movq	-24(%rbp), %rax
	movl	208(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L307
	cmpl	$0, -36(%rbp)
	je	.L310
	movq	-24(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L307
.L310:
	movl	$0, %eax
	jmp	.L301
.L307:
	cmpl	$0, -36(%rbp)
	je	.L311
	movq	-24(%rbp), %rax
	movq	$0, 200(%rax)
.L311:
	movl	$1, %eax
.L301:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	check_crl_time, .-check_crl_time
	.type	get_crl_sk, @function
get_crl_sk:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L313
.L321:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	get_crl_score
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L326
	cmpl	$0, -68(%rbp)
	je	.L326
	movl	-68(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L317
	cmpq	$0, -40(%rbp)
	je	.L317
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_lastUpdate@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_lastUpdate@PLT
	movq	%rax, %rdx
	leaq	-88(%rbp), %rsi
	leaq	-84(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	je	.L327
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	jg	.L317
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jle	.L328
.L317:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L316
.L326:
	nop
	jmp	.L316
.L327:
	nop
	jmp	.L316
.L328:
	nop
.L316:
	addl	$1, -20(%rbp)
.L313:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L321
	cmpq	$0, -40(%rbp)
	je	.L322
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movq	-144(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	get_delta_sk
.L322:
	cmpl	$447, -24(%rbp)
	jle	.L323
	movl	$1, %eax
	jmp	.L325
.L323:
	movl	$0, %eax
.L325:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	get_crl_sk, .-get_crl_sk
	.type	crl_extension_match, @function
crl_extension_match:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_by_NID@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L330
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_by_NID@PLT
	cmpl	$-1, %eax
	je	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, -8(%rbp)
.L330:
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_by_NID@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L333
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_by_NID@PLT
	cmpl	$-1, %eax
	je	.L334
	movl	$0, %eax
	jmp	.L332
.L334:
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, -16(%rbp)
.L333:
	cmpq	$0, -8(%rbp)
	jne	.L335
	cmpq	$0, -16(%rbp)
	jne	.L335
	movl	$1, %eax
	jmp	.L332
.L335:
	cmpq	$0, -8(%rbp)
	je	.L336
	cmpq	$0, -16(%rbp)
	jne	.L337
.L336:
	movl	$0, %eax
	jmp	.L332
.L337:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	crl_extension_match, .-crl_extension_match
	.type	check_delta_base, @function
check_delta_base:
.LFB752:
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
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L339
	movl	$0, %eax
	jmp	.L340
.L339:
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L341
	movl	$0, %eax
	jmp	.L340
.L341:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L342
	movl	$0, %eax
	jmp	.L340
.L342:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	crl_extension_match
	testl	%eax, %eax
	jne	.L343
	movl	$0, %eax
	jmp	.L340
.L343:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$770, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	crl_extension_match
	testl	%eax, %eax
	jne	.L344
	movl	$0, %eax
	jmp	.L340
.L344:
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jle	.L345
	movl	$0, %eax
	jmp	.L340
.L345:
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L340:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	check_delta_base, .-check_delta_base
	.type	get_delta_sk, @function
get_delta_sk:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L354
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movl	232(%rax), %edx
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	orl	%edx, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L355
	movl	$0, -4(%rbp)
	jmp	.L350
.L353:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_delta_base
	testl	%eax, %eax
	je	.L351
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_crl_time
	testl	%eax, %eax
	je	.L352
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L352:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L346
.L351:
	addl	$1, -4(%rbp)
.L350:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L353
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L346
.L354:
	nop
	jmp	.L346
.L355:
	nop
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	get_delta_sk, .-get_delta_sk
	.type	get_crl_score, @function
get_crl_score:
.LFB754:
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
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movl	152(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L357
	movl	$0, %eax
	jmp	.L369
.L357:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	jne	.L359
	movq	-64(%rbp), %rax
	movl	152(%rax), %eax
	andl	$96, %eax
	testl	%eax, %eax
	je	.L360
	movl	$0, %eax
	jmp	.L369
.L359:
	movq	-64(%rbp), %rax
	movl	152(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L361
	movq	-64(%rbp), %rax
	movl	156(%rax), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L360
	movl	$0, %eax
	jmp	.L369
.L361:
	movq	-64(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L360
	movl	$0, %eax
	jmp	.L369
.L360:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L362
	movq	-64(%rbp), %rax
	movl	152(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L363
	movl	$0, %eax
	jmp	.L369
.L362:
	movl	-24(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -24(%rbp)
.L363:
	movq	-64(%rbp), %rax
	movl	132(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L364
	movl	-24(%rbp), %eax
	orb	$1, %ah
	movl	%eax, -24(%rbp)
.L364:
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_crl_time
	testl	%eax, %eax
	je	.L365
	movl	-24(%rbp), %eax
	orl	$64, %eax
	movl	%eax, -24(%rbp)
.L365:
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	crl_akid_check
	movl	-24(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L366
	movl	$0, %eax
	jmp	.L369
.L366:
	movl	-24(%rbp), %edx
	leaq	-28(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	crl_crldp_check
	testl	%eax, %eax
	je	.L367
	movl	-20(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L368
	movl	$0, %eax
	jmp	.L369
.L368:
	movl	-28(%rbp), %eax
	orl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	orb	$-128, %al
	movl	%eax, -24(%rbp)
.L367:
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movl	-24(%rbp), %eax
.L369:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	get_crl_score, .-get_crl_score
	.type	crl_akid_check, @function
crl_akid_check:
.LFB755:
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
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	172(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	je	.L371
	addl	$1, -4(%rbp)
.L371:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_akid@PLT
	testl	%eax, %eax
	jne	.L372
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L372
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$28, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L370
.L372:
	addl	$1, -4(%rbp)
	jmp	.L374
.L377:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
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
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L383
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_akid@PLT
	testl	%eax, %eax
	jne	.L376
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$12, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L370
.L383:
	nop
.L376:
	addl	$1, -4(%rbp)
.L374:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L377
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L384
	movl	$0, -8(%rbp)
	jmp	.L379
.L382:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L385
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_akid@PLT
	testl	%eax, %eax
	jne	.L381
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L370
.L385:
	nop
.L381:
	addl	$1, -8(%rbp)
.L379:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L382
	jmp	.L370
.L384:
	nop
.L370:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	crl_akid_check, .-crl_akid_check
	.type	check_crl_path, @function
check_crl_path:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	leaq	-288(%rbp), %rdx
	movl	$0, %eax
	movl	$35, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-296(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L387
	movl	$0, %eax
	jmp	.L392
.L387:
	movq	-296(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-296(%rbp), %rax
	movq	(%rax), %rsi
	movq	-304(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L389
	movl	$-1, %eax
	jmp	.L392
.L389:
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-296(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_param@PLT
	movq	-296(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-296(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -232(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L393
	movq	-136(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-296(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_crl_chain
	movl	%eax, -4(%rbp)
	jmp	.L391
.L393:
	nop
.L391:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_cleanup@PLT
	movl	-4(%rbp), %eax
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	check_crl_path, .-check_crl_path
	.type	check_crl_chain, @function
check_crl_chain:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	check_crl_chain, .-check_crl_chain
	.type	idp_check_dp, @function
idp_check_dp:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L397
	cmpq	$0, -64(%rbp)
	jne	.L398
.L397:
	movl	$1, %eax
	jmp	.L399
.L398:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L400
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L401
	movl	$0, %eax
	jmp	.L399
.L401:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L402
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L403
	movl	$0, %eax
	jmp	.L399
.L403:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L399
.L402:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L404
.L400:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L404
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L405
	movl	$0, %eax
	jmp	.L399
.L405:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L404:
	cmpq	$0, -8(%rbp)
	je	.L406
	movl	$0, -20(%rbp)
	jmp	.L407
.L410:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L416
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L409
	movl	$1, %eax
	jmp	.L399
.L416:
	nop
.L409:
	addl	$1, -20(%rbp)
.L407:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L410
	movl	$0, %eax
	jmp	.L399
.L406:
	movl	$0, -20(%rbp)
	jmp	.L411
.L415:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L412
.L414:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L413
	movl	$1, %eax
	jmp	.L399
.L413:
	addl	$1, -24(%rbp)
.L412:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L414
	addl	$1, -20(%rbp)
.L411:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L415
	movl	$0, %eax
.L399:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	idp_check_dp, .-idp_check_dp
	.type	crldp_check_crlissuer, @function
crldp_check_crlissuer:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L418
	movl	-52(%rbp), %eax
	andl	$32, %eax
	shrl	$5, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	jmp	.L419
.L418:
	movl	$0, -4(%rbp)
	jmp	.L420
.L423:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L424
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L422
	movl	$1, %eax
	jmp	.L419
.L424:
	nop
.L422:
	addl	$1, -4(%rbp)
.L420:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L423
	movl	$0, %eax
.L419:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	crldp_check_crlissuer, .-crldp_check_crlissuer
	.type	crl_crldp_check, @function
crl_crldp_check:
.LFB760:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	152(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L426
	movl	$0, %eax
	jmp	.L427
.L426:
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L428
	movq	-32(%rbp), %rax
	movl	152(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L429
	movl	$0, %eax
	jmp	.L427
.L428:
	movq	-32(%rbp), %rax
	movl	152(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L429
	movl	$0, %eax
	jmp	.L427
.L429:
	movq	-32(%rbp), %rax
	movl	156(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L430
.L433:
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_DIST_POINT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	crldp_check_crlissuer
	testl	%eax, %eax
	je	.L431
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L432
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	idp_check_dp
	testl	%eax, %eax
	je	.L431
.L432:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	andl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L427
.L431:
	addl	$1, -4(%rbp)
.L430:
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_DIST_POINT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L433
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L434
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L435
.L434:
	movl	-36(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L435
	movl	$1, %eax
	jmp	.L427
.L435:
	movl	$0, %eax
.L427:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	crl_crldp_check, .-crl_crldp_check
	.type	get_crl_delta, @function
get_crl_delta:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movl	212(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-56(%rbp), %r9
	leaq	-52(%rbp), %r8
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	get_crl_sk
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L444
	movq	-88(%rbp), %rax
	movq	128(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L440
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L445
.L440:
	leaq	-56(%rbp), %r8
	leaq	-52(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	get_crl_sk
	addq	$16, %rsp
	movq	X509_CRL_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L439
.L444:
	nop
	jmp	.L439
.L445:
	nop
.L439:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L441
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	-52(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 208(%rax)
	movl	-56(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 212(%rax)
	movq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L443
.L441:
	movl	$0, %eax
.L443:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	get_crl_delta, .-get_crl_delta
	.type	check_crl, @function
check_crl:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L447
	movq	-56(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L448
.L447:
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.L449
	movl	-36(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	jmp	.L448
.L449:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L448
	movq	-56(%rbp), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L448
	movl	$0, %eax
	jmp	.L450
.L448:
	cmpq	$0, -24(%rbp)
	jne	.L451
	movl	$1, %eax
	jmp	.L450
.L451:
	movq	-64(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L452
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L453
	movq	-24(%rbp), %rax
	movl	236(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L453
	movq	-56(%rbp), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L453
	movl	$0, %eax
	jmp	.L450
.L453:
	movq	-56(%rbp), %rax
	movl	208(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L454
	movq	-56(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L454
	movl	$0, %eax
	jmp	.L450
.L454:
	movq	-56(%rbp), %rax
	movl	208(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L455
	movq	-56(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_crl_path
	testl	%eax, %eax
	jg	.L455
	movq	-56(%rbp), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L455
	movl	$0, %eax
	jmp	.L450
.L455:
	movq	-64(%rbp), %rax
	movl	152(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L452
	movq	-56(%rbp), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L452
	movl	$0, %eax
	jmp	.L450
.L452:
	movq	-56(%rbp), %rax
	movl	208(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L456
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_crl_time
	testl	%eax, %eax
	jne	.L456
	movl	$0, %eax
	jmp	.L450
.L456:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L457
	movq	-56(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L457
	movl	$0, %eax
	jmp	.L450
.L457:
	cmpq	$0, -32(%rbp)
	je	.L458
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_check_suiteb@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L459
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L459
	movl	$0, %eax
	jmp	.L450
.L459:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_verify@PLT
	testl	%eax, %eax
	jg	.L458
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L458
	movl	$0, %eax
	jmp	.L450
.L458:
	movl	$1, %eax
.L450:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	check_crl, .-check_crl
	.type	cert_crl, @function
cert_crl:
.LFB763:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L461
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L461
	movq	-24(%rbp), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L461
	movl	$0, %eax
	jmp	.L465
.L461:
	movq	-40(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_get0_by_cert@PLT
	testl	%eax, %eax
	je	.L463
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$8, %eax
	jne	.L464
	movl	$2, %eax
	jmp	.L465
.L464:
	movq	-24(%rbp), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	verify_cb_crl
	testl	%eax, %eax
	jne	.L463
	movl	$0, %eax
	jmp	.L465
.L463:
	movl	$1, %eax
.L465:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	cert_crl, .-cert_crl
	.type	check_policy, @function
check_policy:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L467
	movl	$1, %eax
	jmp	.L468
.L467:
	movq	-56(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	je	.L469
	movl	$0, %edi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L469
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1713, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L470
.L469:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movl	%eax, %r8d
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	-56(%rbp), %rcx
	leaq	168(%rcx), %rsi
	movq	-56(%rbp), %rcx
	leaq	160(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	X509_policy_check@PLT
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	je	.L471
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
.L471:
	cmpl	$0, -28(%rbp)
	jne	.L472
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1722, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L470
.L472:
	cmpl	$-1, -28(%rbp)
	jne	.L473
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L474
.L477:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L475
	movl	$1, -24(%rbp)
.L475:
	movq	-40(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L476
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$42, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L476
	movl	$0, %eax
	jmp	.L468
.L476:
	addl	$1, -20(%rbp)
.L474:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L477
	cmpl	$0, -24(%rbp)
	jne	.L478
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1740, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L468
.L478:
	movl	$1, %eax
	jmp	.L468
.L473:
	cmpl	$-2, -28(%rbp)
	jne	.L479
	movq	-56(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-56(%rbp), %rax
	movl	$43, 176(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	jmp	.L468
.L479:
	cmpl	$1, -28(%rbp)
	je	.L480
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1752, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L468
.L480:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L481
	movq	-56(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L481
	movl	$0, %eax
	jmp	.L468
.L481:
	movl	$1, %eax
	jmp	.L468
.L470:
	movq	-56(%rbp), %rax
	movl	$17, 176(%rax)
	movl	$-1, %eax
.L468:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	check_policy, .-check_policy
	.globl	ossl_x509_check_cert_time
	.type	ossl_x509_check_cert_time, @function
ossl_x509_check_cert_time:
.LFB765:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L483
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.L484
.L483:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L485
	movl	$1, %eax
	jmp	.L486
.L485:
	movq	$0, -8(%rbp)
.L484:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notBefore@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L487
	cmpl	$0, -36(%rbp)
	jns	.L487
	movl	$0, %eax
	jmp	.L486
.L487:
	cmpl	$0, -12(%rbp)
	jne	.L488
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$13, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L488
	movl	$0, %eax
	jmp	.L486
.L488:
	cmpl	$0, -12(%rbp)
	jle	.L489
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$9, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L489
	movl	$0, %eax
	jmp	.L486
.L489:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L490
	cmpl	$0, -36(%rbp)
	jns	.L490
	movl	$0, %eax
	jmp	.L486
.L490:
	cmpl	$0, -12(%rbp)
	jne	.L491
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$14, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L491
	movl	$0, %eax
	jmp	.L486
.L491:
	cmpl	$0, -12(%rbp)
	jns	.L492
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L492
	movl	$0, %eax
	jmp	.L486
.L492:
	movl	$1, %eax
.L486:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ossl_x509_check_cert_time, .-ossl_x509_check_cert_time
	.type	internal_verify, @function
internal_verify:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L494
	movq	-56(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
	testl	%eax, %eax
	jne	.L495
	movl	$0, %eax
	jmp	.L496
.L495:
	movl	$1, %eax
	jmp	.L496
.L494:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movl	248(%rax), %eax
	testl	%eax, %eax
	je	.L497
	movq	$0, -16(%rbp)
	jmp	.L500
.L497:
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_likely_issued@PLT
	testl	%eax, %eax
	je	.L500
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$524288, %eax
	testq	%rax, %rax
	jne	.L500
	cmpl	$0, -4(%rbp)
	jle	.L499
	subl	$1, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	jmp	.L500
.L499:
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$21, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L500
	movl	$0, %eax
	jmp	.L496
.L510:
	cmpq	$0, -16(%rbp)
	je	.L501
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L502
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	je	.L501
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L501
.L502:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L503
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L504
.L503:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_signing_allowed@PLT
	movl	%eax, -28(%rbp)
	jmp	.L505
.L504:
	movl	$0, -28(%rbp)
.L505:
	cmpl	$0, -28(%rbp)
	je	.L506
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L506
	movl	$0, %eax
	jmp	.L496
.L506:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L507
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L501
	movl	$0, %eax
	jmp	.L496
.L507:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_verify@PLT
	testl	%eax, %eax
	jg	.L501
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L501
	movl	$0, %eax
	jmp	.L496
.L501:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_check_cert_time@PLT
	testl	%eax, %eax
	jne	.L508
	movl	$0, %eax
	jmp	.L496
.L508:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 172(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L509
	movl	$0, %eax
	jmp	.L496
.L509:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L500
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
.L500:
	cmpl	$0, -4(%rbp)
	jns	.L510
	movl	$1, %eax
.L496:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	internal_verify, .-internal_verify
	.globl	X509_cmp_current_time
	.type	X509_cmp_current_time, @function
X509_cmp_current_time:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	X509_cmp_current_time, .-X509_cmp_current_time
	.globl	X509_cmp_time
	.type	X509_cmp_time, @function
X509_cmp_time:
.LFB768:
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
	movl	$0, -8(%rbp)
	movb	$90, -17(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	je	.L514
	cmpl	$24, %eax
	je	.L515
	jmp	.L530
.L514:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movq	utctime_length.9(%rip), %rdx
	cmpl	%edx, %eax
	je	.L531
	movl	$0, %eax
	jmp	.L529
.L515:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movq	generalizedtime_length.8(%rip), %rdx
	cmpl	%edx, %eax
	je	.L532
	movl	$0, %eax
	jmp	.L529
.L530:
	movl	$0, %eax
	jmp	.L529
.L531:
	nop
	jmp	.L519
.L532:
	nop
.L519:
	movl	$0, -4(%rbp)
	jmp	.L521
.L523:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	jne	.L522
	movl	$0, %eax
	jmp	.L529
.L522:
	addl	$1, -4(%rbp)
.L521:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L523
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movsbl	-17(%rbp), %eax
	cmpl	%eax, %edx
	je	.L524
	movl	$0, %eax
	jmp	.L529
.L524:
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	X509_time_adj@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L533
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-28(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	je	.L534
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	js	.L528
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	js	.L528
	movl	$-1, -8(%rbp)
	jmp	.L526
.L528:
	movl	$1, -8(%rbp)
	jmp	.L526
.L533:
	nop
	jmp	.L526
.L534:
	nop
.L526:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	-8(%rbp), %eax
.L529:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	X509_cmp_time, .-X509_cmp_time
	.globl	X509_cmp_timeframe
	.type	X509_cmp_timeframe, @function
X509_cmp_timeframe:
.LFB769:
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
	cmpq	$0, -40(%rbp)
	je	.L536
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_flags@PLT
	movq	%rax, -16(%rbp)
	jmp	.L537
.L536:
	movq	$0, -16(%rbp)
.L537:
	movq	-16(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L538
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_time@PLT
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L539
.L538:
	movq	-16(%rbp), %rax
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L539
	movl	$0, %eax
	jmp	.L543
.L539:
	cmpq	$0, -56(%rbp)
	je	.L541
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	testl	%eax, %eax
	jns	.L541
	movl	$1, %eax
	jmp	.L543
.L541:
	cmpq	$0, -48(%rbp)
	je	.L542
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	testl	%eax, %eax
	jle	.L542
	movl	$-1, %eax
	jmp	.L543
.L542:
	movl	$0, %eax
.L543:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	X509_cmp_timeframe, .-X509_cmp_timeframe
	.globl	X509_gmtime_adj
	.type	X509_gmtime_adj, @function
X509_gmtime_adj:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_time_adj@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	X509_gmtime_adj, .-X509_gmtime_adj
	.globl	X509_time_adj
	.type	X509_time_adj, @function
X509_time_adj:
.LFB771:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_time_adj_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	X509_time_adj, .-X509_time_adj
	.globl	X509_time_adj_ex
	.type	X509_time_adj_ex, @function
X509_time_adj_ex:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L549
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L550
.L549:
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
.L550:
	cmpq	$0, -24(%rbp)
	je	.L551
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	andl	$64, %eax
	testq	%rax, %rax
	jne	.L551
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L552
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTCTIME_adj@PLT
	jmp	.L554
.L552:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$24, %eax
	jne	.L551
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_adj@PLT
	jmp	.L554
.L551:
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_adj@PLT
.L554:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	X509_time_adj_ex, .-X509_time_adj_ex
	.globl	X509_get_pubkey_parameters
	.type	X509_get_pubkey_parameters, @function
X509_get_pubkey_parameters:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L556
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	jne	.L556
	movl	$1, %eax
	jmp	.L557
.L556:
	movl	$0, -12(%rbp)
	jmp	.L558
.L562:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L559
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2073, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L557
.L559:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L568
	movq	$0, -8(%rbp)
	addl	$1, -12(%rbp)
.L558:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L562
	jmp	.L561
.L568:
	nop
.L561:
	cmpq	$0, -8(%rbp)
	jne	.L563
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2081, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L557
.L563:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L564
.L566:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L565
	movl	$0, %eax
	jmp	.L557
.L565:
	subl	$1, -16(%rbp)
.L564:
	cmpl	$0, -16(%rbp)
	jns	.L566
	cmpq	$0, -40(%rbp)
	je	.L567
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	jmp	.L557
.L567:
	movl	$1, %eax
.L557:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	X509_get_pubkey_parameters, .-X509_get_pubkey_parameters
	.globl	X509_CRL_diff
	.type	X509_CRL_diff, @function
X509_CRL_diff:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L570
	movq	-80(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L571
.L570:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2110, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L571:
	movq	-72(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L573
	movq	-80(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L574
.L573:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L574:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L575
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L575:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	crl_extension_match
	testl	%eax, %eax
	jne	.L576
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L576:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$770, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	crl_extension_match
	testl	%eax, %eax
	jne	.L577
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2130, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L577:
	movq	-72(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jg	.L578
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L578:
	cmpq	$0, -88(%rbp)
	je	.L579
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_verify@PLT
	testl	%eax, %eax
	jle	.L580
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_verify@PLT
	testl	%eax, %eax
	jg	.L579
.L580:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L572
.L579:
	movq	-72(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L581
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_CRL_set_version@PLT
	testl	%eax, %eax
	jne	.L582
.L581:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L582:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_set_issuer_name@PLT
	testl	%eax, %eax
	jne	.L584
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L584:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_lastUpdate@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_set1_lastUpdate@PLT
	testl	%eax, %eax
	jne	.L585
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L585:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_set1_nextUpdate@PLT
	testl	%eax, %eax
	jne	.L586
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L586:
	movq	-72(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$140, %esi
	movq	%rax, %rdi
	call	X509_CRL_add1_ext_i2d@PLT
	testl	%eax, %eax
	jne	.L587
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L587:
	movl	$0, -20(%rbp)
	jmp	.L588
.L590:
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_add_ext@PLT
	testl	%eax, %eax
	jne	.L589
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L589:
	addl	$1, -20(%rbp)
.L588:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_ext_count@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L590
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_REVOKED@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L591
.L595:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_get0_by_serial@PLT
	testl	%eax, %eax
	jne	.L592
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_dup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L593
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L593:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_add0_revoked@PLT
	testl	%eax, %eax
	jne	.L592
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_free@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L592:
	addl	$1, -20(%rbp)
.L591:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L595
	cmpq	$0, -88(%rbp)
	je	.L596
	cmpq	$0, -96(%rbp)
	je	.L596
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_sign@PLT
	testl	%eax, %eax
	jne	.L596
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L583
.L596:
	movq	-32(%rbp), %rax
	jmp	.L572
.L583:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movl	$0, %eax
.L572:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	X509_CRL_diff, .-X509_CRL_diff
	.globl	X509_STORE_CTX_set_ex_data
	.type	X509_STORE_CTX_set_ex_data, @function
X509_STORE_CTX_set_ex_data:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	224(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	X509_STORE_CTX_set_ex_data, .-X509_STORE_CTX_set_ex_data
	.globl	X509_STORE_CTX_get_ex_data
	.type	X509_STORE_CTX_get_ex_data, @function
X509_STORE_CTX_get_ex_data:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	224(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	X509_STORE_CTX_get_ex_data, .-X509_STORE_CTX_get_ex_data
	.globl	X509_STORE_CTX_get_error
	.type	X509_STORE_CTX_get_error, @function
X509_STORE_CTX_get_error:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	176(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	X509_STORE_CTX_get_error, .-X509_STORE_CTX_get_error
	.globl	X509_STORE_CTX_set_error
	.type	X509_STORE_CTX_set_error, @function
X509_STORE_CTX_set_error:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	X509_STORE_CTX_set_error, .-X509_STORE_CTX_set_error
	.globl	X509_STORE_CTX_get_error_depth
	.type	X509_STORE_CTX_get_error_depth, @function
X509_STORE_CTX_get_error_depth:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	X509_STORE_CTX_get_error_depth, .-X509_STORE_CTX_get_error_depth
	.globl	X509_STORE_CTX_set_error_depth
	.type	X509_STORE_CTX_set_error_depth, @function
X509_STORE_CTX_set_error_depth:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 172(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	X509_STORE_CTX_set_error_depth, .-X509_STORE_CTX_set_error_depth
	.globl	X509_STORE_CTX_get_current_cert
	.type	X509_STORE_CTX_get_current_cert, @function
X509_STORE_CTX_get_current_cert:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	X509_STORE_CTX_get_current_cert, .-X509_STORE_CTX_get_current_cert
	.globl	X509_STORE_CTX_set_current_cert
	.type	X509_STORE_CTX_set_current_cert, @function
X509_STORE_CTX_set_current_cert:
.LFB782:
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
	movq	%rdx, 184(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	X509_STORE_CTX_set_current_cert, .-X509_STORE_CTX_set_current_cert
	.globl	X509_STORE_CTX_get0_chain
	.type	X509_STORE_CTX_get0_chain, @function
X509_STORE_CTX_get0_chain:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	X509_STORE_CTX_get0_chain, .-X509_STORE_CTX_get0_chain
	.globl	X509_STORE_CTX_get1_chain
	.type	X509_STORE_CTX_get1_chain, @function
X509_STORE_CTX_get1_chain:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L613
	movl	$0, %eax
	jmp	.L614
.L613:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
.L614:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	X509_STORE_CTX_get1_chain, .-X509_STORE_CTX_get1_chain
	.globl	X509_STORE_CTX_get0_current_issuer
	.type	X509_STORE_CTX_get0_current_issuer, @function
X509_STORE_CTX_get0_current_issuer:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	X509_STORE_CTX_get0_current_issuer, .-X509_STORE_CTX_get0_current_issuer
	.globl	X509_STORE_CTX_get0_current_crl
	.type	X509_STORE_CTX_get0_current_crl, @function
X509_STORE_CTX_get0_current_crl:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	X509_STORE_CTX_get0_current_crl, .-X509_STORE_CTX_get0_current_crl
	.globl	X509_STORE_CTX_get0_parent_ctx
	.type	X509_STORE_CTX_get0_parent_ctx, @function
X509_STORE_CTX_get0_parent_ctx:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	X509_STORE_CTX_get0_parent_ctx, .-X509_STORE_CTX_get0_parent_ctx
	.globl	X509_STORE_CTX_set_cert
	.type	X509_STORE_CTX_set_cert, @function
X509_STORE_CTX_set_cert:
.LFB788:
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
.LFE788:
	.size	X509_STORE_CTX_set_cert, .-X509_STORE_CTX_set_cert
	.globl	X509_STORE_CTX_set0_rpk
	.type	X509_STORE_CTX_set0_rpk, @function
X509_STORE_CTX_set0_rpk:
.LFB789:
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
	movq	%rdx, 256(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	X509_STORE_CTX_set0_rpk, .-X509_STORE_CTX_set0_rpk
	.globl	X509_STORE_CTX_set0_crls
	.type	X509_STORE_CTX_set0_crls, @function
X509_STORE_CTX_set0_crls:
.LFB790:
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
.LFE790:
	.size	X509_STORE_CTX_set0_crls, .-X509_STORE_CTX_set0_crls
	.globl	X509_STORE_CTX_set_purpose
	.type	X509_STORE_CTX_set_purpose, @function
X509_STORE_CTX_set_purpose:
.LFB791:
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
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_purpose_inherit@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	X509_STORE_CTX_set_purpose, .-X509_STORE_CTX_set_purpose
	.globl	X509_STORE_CTX_set_trust
	.type	X509_STORE_CTX_set_trust, @function
X509_STORE_CTX_set_trust:
.LFB792:
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
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_purpose_inherit@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	X509_STORE_CTX_set_trust, .-X509_STORE_CTX_set_trust
	.globl	X509_STORE_CTX_purpose_inherit
	.type	X509_STORE_CTX_purpose_inherit, @function
X509_STORE_CTX_purpose_inherit:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L629
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L630
.L629:
	cmpl	$0, -28(%rbp)
	jne	.L630
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.L630:
	cmpl	$0, -32(%rbp)
	je	.L631
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get_by_id@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L632
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L633
.L632:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L634
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get_by_id@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L635
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2360, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L633
.L635:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -8(%rbp)
.L634:
	cmpl	$0, -36(%rbp)
	jne	.L631
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -36(%rbp)
.L631:
	cmpl	$0, -36(%rbp)
	je	.L636
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	X509_TRUST_get_by_id@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L636
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L633
.L636:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L637
	cmpl	$0, -32(%rbp)
	je	.L637
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 32(%rax)
.L637:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L638
	cmpl	$0, -36(%rbp)
	je	.L638
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 36(%rax)
.L638:
	movl	$1, %eax
.L633:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	X509_STORE_CTX_purpose_inherit, .-X509_STORE_CTX_purpose_inherit
	.globl	X509_STORE_CTX_new_ex
	.type	X509_STORE_CTX_new_ex, @function
X509_STORE_CTX_new_ex:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$2386, %edx
	movq	%rax, %rsi
	movl	$280, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L640
	movl	$0, %eax
	jmp	.L641
.L640:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 264(%rax)
	cmpq	$0, -32(%rbp)
	je	.L642
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2393, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.L642
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2395, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L641
.L642:
	movq	-8(%rbp), %rax
.L641:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	X509_STORE_CTX_new_ex, .-X509_STORE_CTX_new_ex
	.globl	X509_STORE_CTX_new
	.type	X509_STORE_CTX_new, @function
X509_STORE_CTX_new:
.LFB795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	X509_STORE_CTX_new_ex@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	X509_STORE_CTX_new, .-X509_STORE_CTX_new
	.globl	X509_STORE_CTX_free
	.type	X509_STORE_CTX_free, @function
X509_STORE_CTX_free:
.LFB796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L648
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_cleanup@PLT
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$2416, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2417, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L645
.L648:
	nop
.L645:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	X509_STORE_CTX_free, .-X509_STORE_CTX_free
	.globl	X509_STORE_CTX_init_rpk
	.type	X509_STORE_CTX_init_rpk, @function
X509_STORE_CTX_init_rpk:
.LFB797:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L650
	movl	$0, %eax
	jmp	.L651
.L650:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 256(%rax)
	movl	$1, %eax
.L651:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	X509_STORE_CTX_init_rpk, .-X509_STORE_CTX_init_rpk
	.section	.rodata
.LC1:
	.string	"default"
	.text
	.globl	X509_STORE_CTX_init
	.type	X509_STORE_CTX_init, @function
X509_STORE_CTX_init:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L653
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2433, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L654
.L653:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_cleanup@PLT
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 176(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 168(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 172(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 212(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 240(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-40(%rbp), %rax
	addq	$224, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -48(%rbp)
	je	.L655
	movq	-48(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 136(%rax)
	jmp	.L656
.L655:
	movq	-40(%rbp), %rax
	movq	$0, 136(%rax)
.L656:
	cmpq	$0, -48(%rbp)
	je	.L657
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L657
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L658
.L657:
	movq	-40(%rbp), %rax
	leaq	check_issued(%rip), %rdx
	movq	%rdx, 72(%rax)
.L658:
	cmpq	$0, -48(%rbp)
	je	.L659
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L659
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L660
.L659:
	movq	-40(%rbp), %rax
	movq	X509_STORE_CTX_get1_issuer@GOTPCREL(%rip), %rdx
	movq	%rdx, 64(%rax)
.L660:
	cmpq	$0, -48(%rbp)
	je	.L661
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L661
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L662
.L661:
	movq	-40(%rbp), %rax
	leaq	null_callback(%rip), %rdx
	movq	%rdx, 56(%rax)
.L662:
	cmpq	$0, -48(%rbp)
	je	.L663
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L663
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L664
.L663:
	movq	-40(%rbp), %rax
	leaq	internal_verify(%rip), %rdx
	movq	%rdx, 48(%rax)
.L664:
	cmpq	$0, -48(%rbp)
	je	.L665
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L665
	movq	-48(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 80(%rax)
	jmp	.L666
.L665:
	movq	-40(%rbp), %rax
	leaq	check_revocation(%rip), %rdx
	movq	%rdx, 80(%rax)
.L666:
	cmpq	$0, -48(%rbp)
	je	.L667
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L667
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L668
.L667:
	movq	-40(%rbp), %rax
	movq	$0, 88(%rax)
.L668:
	cmpq	$0, -48(%rbp)
	je	.L669
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L669
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 96(%rax)
	jmp	.L670
.L669:
	movq	-40(%rbp), %rax
	leaq	check_crl(%rip), %rdx
	movq	%rdx, 96(%rax)
.L670:
	cmpq	$0, -48(%rbp)
	je	.L671
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L671
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 104(%rax)
	jmp	.L672
.L671:
	movq	-40(%rbp), %rax
	leaq	cert_crl(%rip), %rdx
	movq	%rdx, 104(%rax)
.L672:
	cmpq	$0, -48(%rbp)
	je	.L673
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L673
	movq	-48(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 112(%rax)
	jmp	.L674
.L673:
	movq	-40(%rbp), %rax
	leaq	check_policy(%rip), %rdx
	movq	%rdx, 112(%rax)
.L674:
	cmpq	$0, -48(%rbp)
	je	.L675
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L675
	movq	-48(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 120(%rax)
	jmp	.L676
.L675:
	movq	-40(%rbp), %rax
	movq	X509_STORE_CTX_get1_certs@GOTPCREL(%rip), %rdx
	movq	%rdx, 120(%rax)
.L676:
	cmpq	$0, -48(%rbp)
	je	.L677
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L677
	movq	-48(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 128(%rax)
	jmp	.L678
.L677:
	movq	-40(%rbp), %rax
	movq	X509_STORE_CTX_get1_crls@GOTPCREL(%rip), %rdx
	movq	%rdx, 128(%rax)
.L678:
	call	X509_VERIFY_PARAM_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L679
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2525, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L680
.L679:
	cmpq	$0, -48(%rbp)
	jne	.L681
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	orl	$17, %edx
	movl	%edx, 16(%rax)
	jmp	.L682
.L681:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_inherit@PLT
	testl	%eax, %eax
	je	.L686
.L682:
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_default@PLT
	testl	%eax, %eax
	je	.L687
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L684
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get_by_id@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L684
	movq	-40(%rbp), %rax
	movq	32(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PURPOSE_get_trust@PLT
	movl	%eax, 36(%rbx)
.L684:
	movq	-40(%rbp), %rax
	leaq	224(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	je	.L685
	movl	$1, %eax
	jmp	.L654
.L685:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2553, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L680
.L686:
	nop
	jmp	.L680
.L687:
	nop
.L680:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_cleanup@PLT
	movl	$0, %eax
.L654:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	X509_STORE_CTX_init, .-X509_STORE_CTX_init
	.globl	X509_STORE_CTX_set0_trusted_stack
	.type	X509_STORE_CTX_set0_trusted_stack, @function
X509_STORE_CTX_set0_trusted_stack:
.LFB799:
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
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	leaq	get_issuer_sk(%rip), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	leaq	lookup_certs_sk(%rip), %rdx
	movq	%rdx, 120(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	X509_STORE_CTX_set0_trusted_stack, .-X509_STORE_CTX_set0_trusted_stack
	.globl	X509_STORE_CTX_cleanup
	.type	X509_STORE_CTX_cleanup, @function
X509_STORE_CTX_cleanup:
.LFB800:
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
	testq	%rax, %rax
	je	.L690
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
.L690:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L691
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L692
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
.L692:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.L691:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	X509_policy_tree_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	leaq	224(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-8(%rbp), %rax
	addq	$224, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	X509_STORE_CTX_cleanup, .-X509_STORE_CTX_cleanup
	.globl	X509_STORE_CTX_set_depth
	.type	X509_STORE_CTX_set_depth, @function
X509_STORE_CTX_set_depth:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_depth@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	X509_STORE_CTX_set_depth, .-X509_STORE_CTX_set_depth
	.globl	X509_STORE_CTX_set_flags
	.type	X509_STORE_CTX_set_flags, @function
X509_STORE_CTX_set_flags:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	X509_STORE_CTX_set_flags, .-X509_STORE_CTX_set_flags
	.globl	X509_STORE_CTX_set_time
	.type	X509_STORE_CTX_set_time, @function
X509_STORE_CTX_set_time:
.LFB803:
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
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_time@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	X509_STORE_CTX_set_time, .-X509_STORE_CTX_set_time
	.globl	X509_STORE_CTX_set_current_reasons
	.type	X509_STORE_CTX_set_current_reasons, @function
X509_STORE_CTX_set_current_reasons:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 212(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	X509_STORE_CTX_set_current_reasons, .-X509_STORE_CTX_set_current_reasons
	.globl	X509_STORE_CTX_get0_cert
	.type	X509_STORE_CTX_get0_cert, @function
X509_STORE_CTX_get0_cert:
.LFB805:
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
.LFE805:
	.size	X509_STORE_CTX_get0_cert, .-X509_STORE_CTX_get0_cert
	.globl	X509_STORE_CTX_get0_rpk
	.type	X509_STORE_CTX_get0_rpk, @function
X509_STORE_CTX_get0_rpk:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	X509_STORE_CTX_get0_rpk, .-X509_STORE_CTX_get0_rpk
	.globl	X509_STORE_CTX_get0_untrusted
	.type	X509_STORE_CTX_get0_untrusted, @function
X509_STORE_CTX_get0_untrusted:
.LFB807:
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
.LFE807:
	.size	X509_STORE_CTX_get0_untrusted, .-X509_STORE_CTX_get0_untrusted
	.globl	X509_STORE_CTX_set0_untrusted
	.type	X509_STORE_CTX_set0_untrusted, @function
X509_STORE_CTX_set0_untrusted:
.LFB808:
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
.LFE808:
	.size	X509_STORE_CTX_set0_untrusted, .-X509_STORE_CTX_set0_untrusted
	.globl	X509_STORE_CTX_set0_verified_chain
	.type	X509_STORE_CTX_set0_verified_chain, @function
X509_STORE_CTX_set0_verified_chain:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 152(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	X509_STORE_CTX_set0_verified_chain, .-X509_STORE_CTX_set0_verified_chain
	.globl	X509_STORE_CTX_set_verify_cb
	.type	X509_STORE_CTX_set_verify_cb, @function
X509_STORE_CTX_set_verify_cb:
.LFB810:
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
	movq	%rdx, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	X509_STORE_CTX_set_verify_cb, .-X509_STORE_CTX_set_verify_cb
	.globl	X509_STORE_CTX_get_verify_cb
	.type	X509_STORE_CTX_get_verify_cb, @function
X509_STORE_CTX_get_verify_cb:
.LFB811:
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
.LFE811:
	.size	X509_STORE_CTX_get_verify_cb, .-X509_STORE_CTX_get_verify_cb
	.globl	X509_STORE_CTX_set_verify
	.type	X509_STORE_CTX_set_verify, @function
X509_STORE_CTX_set_verify:
.LFB812:
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
	movq	%rdx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	X509_STORE_CTX_set_verify, .-X509_STORE_CTX_set_verify
	.globl	X509_STORE_CTX_get_verify
	.type	X509_STORE_CTX_get_verify, @function
X509_STORE_CTX_get_verify:
.LFB813:
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
.LFE813:
	.size	X509_STORE_CTX_get_verify, .-X509_STORE_CTX_get_verify
	.globl	X509_STORE_CTX_get_get_issuer
	.type	X509_STORE_CTX_get_get_issuer, @function
X509_STORE_CTX_get_get_issuer:
.LFB814:
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
.LFE814:
	.size	X509_STORE_CTX_get_get_issuer, .-X509_STORE_CTX_get_get_issuer
	.globl	X509_STORE_CTX_get_check_issued
	.type	X509_STORE_CTX_get_check_issued, @function
X509_STORE_CTX_get_check_issued:
.LFB815:
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
.LFE815:
	.size	X509_STORE_CTX_get_check_issued, .-X509_STORE_CTX_get_check_issued
	.globl	X509_STORE_CTX_get_check_revocation
	.type	X509_STORE_CTX_get_check_revocation, @function
X509_STORE_CTX_get_check_revocation:
.LFB816:
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
.LFE816:
	.size	X509_STORE_CTX_get_check_revocation, .-X509_STORE_CTX_get_check_revocation
	.globl	X509_STORE_CTX_get_get_crl
	.type	X509_STORE_CTX_get_get_crl, @function
X509_STORE_CTX_get_get_crl:
.LFB817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	X509_STORE_CTX_get_get_crl, .-X509_STORE_CTX_get_get_crl
	.globl	X509_STORE_CTX_set_get_crl
	.type	X509_STORE_CTX_set_get_crl, @function
X509_STORE_CTX_set_get_crl:
.LFB818:
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
	movq	%rdx, 88(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	X509_STORE_CTX_set_get_crl, .-X509_STORE_CTX_set_get_crl
	.globl	X509_STORE_CTX_get_check_crl
	.type	X509_STORE_CTX_get_check_crl, @function
X509_STORE_CTX_get_check_crl:
.LFB819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	X509_STORE_CTX_get_check_crl, .-X509_STORE_CTX_get_check_crl
	.globl	X509_STORE_CTX_get_cert_crl
	.type	X509_STORE_CTX_get_cert_crl, @function
X509_STORE_CTX_get_cert_crl:
.LFB820:
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
.LFE820:
	.size	X509_STORE_CTX_get_cert_crl, .-X509_STORE_CTX_get_cert_crl
	.globl	X509_STORE_CTX_get_check_policy
	.type	X509_STORE_CTX_get_check_policy, @function
X509_STORE_CTX_get_check_policy:
.LFB821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	X509_STORE_CTX_get_check_policy, .-X509_STORE_CTX_get_check_policy
	.globl	X509_STORE_CTX_get_lookup_certs
	.type	X509_STORE_CTX_get_lookup_certs, @function
X509_STORE_CTX_get_lookup_certs:
.LFB822:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	X509_STORE_CTX_get_lookup_certs, .-X509_STORE_CTX_get_lookup_certs
	.globl	X509_STORE_CTX_get_lookup_crls
	.type	X509_STORE_CTX_get_lookup_crls, @function
X509_STORE_CTX_get_lookup_crls:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	X509_STORE_CTX_get_lookup_crls, .-X509_STORE_CTX_get_lookup_crls
	.globl	X509_STORE_CTX_get_cleanup
	.type	X509_STORE_CTX_get_cleanup, @function
X509_STORE_CTX_get_cleanup:
.LFB824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	X509_STORE_CTX_get_cleanup, .-X509_STORE_CTX_get_cleanup
	.globl	X509_STORE_CTX_get0_policy_tree
	.type	X509_STORE_CTX_get0_policy_tree, @function
X509_STORE_CTX_get0_policy_tree:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	X509_STORE_CTX_get0_policy_tree, .-X509_STORE_CTX_get0_policy_tree
	.globl	X509_STORE_CTX_get_explicit_policy
	.type	X509_STORE_CTX_get_explicit_policy, @function
X509_STORE_CTX_get_explicit_policy:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	168(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	X509_STORE_CTX_get_explicit_policy, .-X509_STORE_CTX_get_explicit_policy
	.globl	X509_STORE_CTX_get_num_untrusted
	.type	X509_STORE_CTX_get_num_untrusted, @function
X509_STORE_CTX_get_num_untrusted:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	148(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	X509_STORE_CTX_get_num_untrusted, .-X509_STORE_CTX_get_num_untrusted
	.section	.rodata
.LC2:
	.string	"name=%s"
	.text
	.globl	X509_STORE_CTX_set_default
	.type	X509_STORE_CTX_set_default, @function
X509_STORE_CTX_set_default:
.LFB828:
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
	call	X509_VERIFY_PARAM_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L739
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2756, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$121, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L740
.L739:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_inherit@PLT
.L740:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	X509_STORE_CTX_set_default, .-X509_STORE_CTX_set_default
	.globl	X509_STORE_CTX_get0_param
	.type	X509_STORE_CTX_get0_param, @function
X509_STORE_CTX_get0_param:
.LFB829:
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
.LFE829:
	.size	X509_STORE_CTX_get0_param, .-X509_STORE_CTX_get0_param
	.globl	X509_STORE_CTX_set0_param
	.type	X509_STORE_CTX_set0_param, @function
X509_STORE_CTX_set0_param:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	X509_STORE_CTX_set0_param, .-X509_STORE_CTX_set0_param
	.globl	X509_STORE_CTX_set0_dane
	.type	X509_STORE_CTX_set0_dane, @function
X509_STORE_CTX_set0_dane:
.LFB831:
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
	movq	%rdx, 240(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	X509_STORE_CTX_set0_dane, .-X509_STORE_CTX_set0_dane
	.type	dane_i2d, @function
dane_i2d:
.LFB832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movb	%al, -28(%rbp)
	movq	$0, -16(%rbp)
	movzbl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L746
	cmpl	$1, %eax
	je	.L747
	jmp	.L754
.L746:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	movl	%eax, -4(%rbp)
	jmp	.L749
.L747:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	i2d_X509_PUBKEY@PLT
	movl	%eax, -4(%rbp)
	jmp	.L749
.L754:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2795, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L753
.L749:
	cmpl	$0, -4(%rbp)
	js	.L751
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L752
.L751:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2800, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L753
.L752:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
.L753:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	dane_i2d, .-dane_i2d
	.type	dane_match_cert, @function
dane_match_cert:
.LFB833:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	-168(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$256, -4(%rbp)
	movl	$256, -8(%rbp)
	movl	$256, -12(%rbp)
	movl	$256, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -64(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L756
	movl	$10, -48(%rbp)
	jmp	.L757
.L756:
	movl	$5, -48(%rbp)
.L757:
	movq	-168(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -180(%rbp)
	jl	.L758
	andl	$3, -48(%rbp)
.L758:
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	js	.L759
	andl	$-4, -48(%rbp)
.L759:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	andl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L760
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	movl	%eax, -40(%rbp)
	jmp	.L761
.L760:
	movl	$0, -40(%rbp)
.L761:
	movl	$0, -36(%rbp)
	jmp	.L762
.L775:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_danetls_record_value
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-48(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L777
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	je	.L765
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	$256, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.L765:
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -8(%rbp)
	je	.L766
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2887, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
	movzbl	%al, %ecx
	leaq	-76(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	dane_i2d
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L767
	movl	$-1, %eax
	jmp	.L776
.L767:
	movl	$256, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	jmp	.L769
.L766:
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	je	.L769
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	jb	.L778
.L769:
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -16(%rbp)
	je	.L770
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -148(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L770
	leaq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rsi
	leaq	-148(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	jne	.L770
	movl	$-1, -44(%rbp)
	jmp	.L771
.L770:
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L764
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L764
	movl	-4(%rbp), %eax
	movl	$12, %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L772
	movl	$1, -44(%rbp)
.L772:
	cmpl	$0, -44(%rbp)
	jne	.L773
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jns	.L779
.L773:
	movq	-56(%rbp), %rax
	movl	-180(%rbp), %edx
	movl	%edx, 44(%rax)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$2940, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	jmp	.L779
.L777:
	nop
	jmp	.L764
.L778:
	nop
.L764:
	addl	$1, -36(%rbp)
.L762:
	cmpl	$0, -44(%rbp)
	jne	.L771
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L775
	jmp	.L771
.L779:
	nop
.L771:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2949, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-44(%rbp), %eax
.L776:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	dane_match_cert, .-dane_match_cert
	.type	check_dane_issuer, @function
check_dane_issuer:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L781
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	andl	$5, %eax
	testl	%eax, %eax
	je	.L781
	cmpl	$0, -44(%rbp)
	jne	.L782
.L781:
	movl	$3, %eax
	jmp	.L783
.L782:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L784
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dane_match_cert
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L784
	movl	-4(%rbp), %eax
	jmp	.L783
.L784:
	cmpl	$0, -4(%rbp)
	jle	.L785
	movl	-44(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 148(%rax)
	movl	$1, %eax
	jmp	.L783
.L785:
	movl	$3, %eax
.L783:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	check_dane_issuer, .-check_dane_issuer
	.type	check_dane_pkeys, @function
check_dane_pkeys:
.LFB835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	148(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	movl	%eax, -44(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L787
.L794:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_danetls_record_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L795
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpb	$1, %al
	jne	.L795
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	jne	.L795
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_verify@PLT
	testl	%eax, %eax
	jle	.L795
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-72(%rbp), %rax
	movl	$1, 248(%rax)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	jmp	.L791
.L792:
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, %rdi
	call	X509_free@PLT
	subl	$1, -20(%rbp)
.L791:
	movq	-72(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jg	.L792
	movl	$1, %eax
	jmp	.L793
.L795:
	nop
	addl	$1, -24(%rbp)
.L787:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L794
	movl	$3, %eax
.L793:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE835:
	.size	check_dane_pkeys, .-check_dane_pkeys
	.type	dane_match_rpk, @function
dane_match_rpk:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -148(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	movl	%eax, -48(%rbp)
	movl	$0, -24(%rbp)
	leaq	-72(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L797
	movl	$-1, %eax
	jmp	.L806
.L797:
	movl	-52(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -148(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L799
.L805:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_danetls_record_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L807
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpb	$1, %al
	jne	.L807
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	je	.L803
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -148(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L803
	leaq	-144(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdi
	leaq	-148(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	jne	.L803
	movl	$-1, -24(%rbp)
	jmp	.L804
.L803:
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L802
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L802
	movl	$1, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L804
.L807:
	nop
.L802:
	addl	$1, -20(%rbp)
.L799:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L805
.L804:
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$3068, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-24(%rbp), %eax
.L806:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	dane_match_rpk, .-dane_match_rpk
	.type	dane_reset, @function
dane_reset:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	dane_reset, .-dane_reset
	.type	check_leaf_suiteb, @function
check_leaf_suiteb:
.LFB838:
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
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_chain_check_suiteb@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L810
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L810
	movl	$0, %eax
	jmp	.L811
.L810:
	movl	$1, %eax
.L811:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	check_leaf_suiteb, .-check_leaf_suiteb
	.type	dane_verify_rpk, @function
dane_verify_rpk:
.LFB839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dane_reset
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dane_match_rpk
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 172(%rax)
	cmpl	$0, -12(%rbp)
	jns	.L813
	movq	-24(%rbp), %rax
	movl	$1, 176(%rax)
	movl	$-1, %eax
	jmp	.L814
.L813:
	cmpl	$0, -12(%rbp)
	jle	.L815
	movq	-24(%rbp), %rax
	movl	$0, 176(%rax)
	jmp	.L816
.L815:
	movq	-24(%rbp), %rax
	movl	$65, 176(%rax)
.L816:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	verify_rpk
.L814:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	dane_verify_rpk, .-dane_verify_rpk
	.type	dane_verify, @function
dane_verify:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dane_reset
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dane_match_cert
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L818
	cmpq	$0, -16(%rbp)
	je	.L819
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	andl	$5, %eax
	testl	%eax, %eax
	jne	.L820
.L819:
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jns	.L820
.L818:
	movl	$1, %eax
	jmp	.L821
.L820:
	movl	$0, %eax
.L821:
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L822
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_get_pubkey_parameters@PLT
	testl	%eax, %eax
	jne	.L822
	movl	$-1, %eax
	jmp	.L823
.L822:
	cmpl	$0, -20(%rbp)
	jle	.L824
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_leaf_suiteb
	testl	%eax, %eax
	jne	.L825
	movl	$0, %eax
	jmp	.L823
.L825:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L826
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	check_id
	testl	%eax, %eax
	jne	.L826
	movl	$0, %eax
	jmp	.L823
.L826:
	movq	-40(%rbp), %rax
	movl	$0, 172(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	*%rdx
	jmp	.L823
.L824:
	cmpl	$0, -20(%rbp)
	jns	.L827
	movq	-40(%rbp), %rax
	movl	$0, 172(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-40(%rbp), %rax
	movl	$17, 176(%rax)
	movl	$-1, %eax
	jmp	.L823
.L827:
	cmpl	$0, -24(%rbp)
	je	.L828
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_leaf_suiteb
	testl	%eax, %eax
	jne	.L829
	movl	$0, %eax
	jmp	.L823
.L829:
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$65, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	verify_cb_cert
	jmp	.L823
.L828:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	verify_chain
.L823:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	dane_verify, .-dane_verify
	.type	get1_trusted_issuer, @function
get1_trusted_issuer:
.LFB841:
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
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-32(%rbp), %rax
	movq	64(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	get1_trusted_issuer, .-get1_trusted_issuer
	.type	build_chain, @function
build_chain:
.LFB842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L833
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L833
	movl	$1, %eax
	jmp	.L834
.L833:
	movl	$0, %eax
.L834:
	cltq
	testq	%rax, %rax
	je	.L902
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L837
	movq	-72(%rbp), %rax
	movl	40(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L838
.L837:
	cmpq	$0, -72(%rbp)
	je	.L838
	movq	-72(%rbp), %rax
	movl	40(%rax), %eax
	andl	$12, %eax
	testl	%eax, %eax
	jne	.L839
.L838:
	cmpl	$0, -36(%rbp)
	je	.L840
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$32768, %eax
	testq	%rax, %rax
	je	.L841
.L840:
	orl	$2, -36(%rbp)
	jmp	.L842
.L841:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	jne	.L842
	movl	$1, -44(%rbp)
.L842:
	movl	$1, -40(%rbp)
.L839:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L843
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L844
.L843:
	cmpq	$0, -72(%rbp)
	je	.L845
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L845
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L845
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	jne	.L845
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3254, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L844
.L845:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	jne	.L846
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L844
.L846:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movl	40(%rax), %eax
	cmpl	$1073741823, %eax
	jle	.L847
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1073741823, 40(%rax)
.L847:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movl	40(%rax), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.L848
.L881:
	movq	$0, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 172(%rax)
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L849
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L850
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
.L850:
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.L851
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get1_trusted_issuer
	movl	%eax, -56(%rbp)
	jmp	.L852
.L851:
	movl	$0, -56(%rbp)
.L852:
	cmpl	$0, -56(%rbp)
	jns	.L853
	movl	$-1, -48(%rbp)
	movq	-104(%rbp), %rax
	movl	$70, 176(%rax)
	jmp	.L907
.L853:
	cmpl	$0, -56(%rbp)
	jle	.L855
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L856
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L836
.L856:
	movl	-36(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L858
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.L859
	cmpl	$0, -60(%rbp)
	jle	.L859
	cmpl	$0, -64(%rbp)
	jne	.L859
	movl	$1, %eax
	jmp	.L860
.L859:
	movl	$0, %eax
.L860:
	cltq
	testq	%rax, %rax
	jne	.L861
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L836
.L861:
	andl	$-5, -36(%rbp)
	jmp	.L862
.L863:
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, %rdi
	call	X509_free@PLT
	subl	$1, -20(%rbp)
.L862:
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.L863
	movq	-104(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 148(%rax)
	cmpq	$0, -72(%rbp)
	je	.L864
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L864
	movq	-72(%rbp), %rax
	movl	44(%rax), %edx
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, %edx
	jl	.L864
	movq	-72(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 32(%rax)
.L864:
	cmpq	$0, -72(%rbp)
	je	.L858
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L858
	movq	-72(%rbp), %rax
	movl	48(%rax), %edx
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, %edx
	jl	.L858
	movq	-72(%rbp), %rax
	movl	$-1, 48(%rax)
.L858:
	cmpl	$0, -64(%rbp)
	jne	.L865
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L866
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L844
.L866:
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L867
	jmp	.L836
.L865:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	je	.L868
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, -56(%rbp)
	jmp	.L867
.L868:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	subl	$1, -20(%rbp)
	movq	-104(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 148(%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
.L867:
	cmpl	$0, -56(%rbp)
	je	.L855
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -20(%rbp)
	setge	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L903
	andl	$-2, -36(%rbp)
	movl	-20(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_trust
	movl	%eax, -48(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.L904
	cmpl	$0, -64(%rbp)
	je	.L905
.L855:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L849
	movl	-36(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L872
	subl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L906
.L872:
	cmpl	$0, -44(%rbp)
	je	.L907
	movl	-36(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L907
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	$1, %eax
	jle	.L907
	orl	$4, -36(%rbp)
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
.L849:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L848
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L908
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	testl	%eax, %eax
	jg	.L875
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.L875
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_issuer
	jmp	.L876
.L875:
	movl	$0, %eax
.L876:
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L877
	andl	$-2, -36(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L909
	orl	$2, -36(%rbp)
	jmp	.L909
.L877:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_delete_ptr@PLT
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	je	.L910
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 148(%rax)
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_dane_issuer
	movl	%eax, -48(%rbp)
	cmpl	$1, -48(%rbp)
	je	.L907
	cmpl	$2, -48(%rbp)
	je	.L907
	jmp	.L848
.L905:
	nop
	jmp	.L848
.L906:
	nop
	jmp	.L848
.L909:
	nop
.L848:
	cmpl	$0, -36(%rbp)
	jne	.L881
	jmp	.L880
.L904:
	nop
	jmp	.L880
.L907:
	nop
.L880:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpl	$0, -48(%rbp)
	jns	.L882
	movl	-48(%rbp), %eax
	jmp	.L883
.L882:
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.L884
	cmpl	$3, -48(%rbp)
	jne	.L885
	cmpq	$0, -72(%rbp)
	je	.L885
	movq	-72(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L885
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	check_dane_pkeys
	movl	%eax, -48(%rbp)
.L885:
	cmpl	$3, -48(%rbp)
	jne	.L884
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L884
	movl	-20(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_trust
	movl	%eax, -48(%rbp)
.L884:
	cmpl	$1, -48(%rbp)
	je	.L886
	cmpl	$2, -48(%rbp)
	je	.L887
	jmp	.L901
.L886:
	movl	$1, %eax
	jmp	.L883
.L887:
	movl	$0, %eax
	jmp	.L883
.L901:
	movq	-104(%rbp), %rax
	movl	176(%rax), %eax
	cmpl	$14, %eax
	jg	.L889
	cmpl	$13, %eax
	jge	.L890
	testl	%eax, %eax
	je	.L911
	testl	%eax, %eax
	js	.L889
	subl	$9, %eax
	cmpl	$1, %eax
	ja	.L889
.L890:
	movl	$0, %eax
	jmp	.L883
.L889:
	movq	-104(%rbp), %rax
	movl	176(%rax), %edx
	movl	-20(%rbp), %eax
	leal	-1(%rax), %esi
	movq	-104(%rbp), %rax
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	jmp	.L883
.L911:
	nop
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L892
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	$22, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L892
	movl	$0, %eax
	jmp	.L883
.L892:
	cmpq	$0, -72(%rbp)
	je	.L893
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L893
	cmpq	$0, -72(%rbp)
	je	.L894
	movq	-72(%rbp), %rax
	movl	40(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L894
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	js	.L893
.L894:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	$65, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jne	.L893
	movl	$0, %eax
	jmp	.L883
.L893:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	testl	%eax, %eax
	jle	.L895
	cmpl	$1, -20(%rbp)
	jne	.L896
	movl	$18, %ecx
	jmp	.L897
.L896:
	movl	$19, %ecx
.L897:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	jmp	.L883
.L895:
	movq	-104(%rbp), %rax
	movl	148(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L898
	movl	$2, %ecx
	jmp	.L899
.L898:
	movl	$20, %ecx
.L899:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	verify_cb_cert
	jmp	.L883
.L902:
	nop
	jmp	.L836
.L903:
	nop
	jmp	.L836
.L908:
	nop
	jmp	.L836
.L910:
	nop
.L836:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3540, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-104(%rbp), %rax
	movl	$1, 176(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$-1, %eax
	jmp	.L883
.L844:
	movq	-104(%rbp), %rax
	movl	$17, 176(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$-1, %eax
.L883:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	build_chain, .-build_chain
	.globl	X509_build_chain
	.type	X509_build_chain, @function
X509_build_chain:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	$1, -4(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L913
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3561, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L924
.L913:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L915
	movl	$0, %eax
	jmp	.L924
.L915:
	cmpl	$0, -8(%rbp)
	je	.L916
	movq	-48(%rbp), %rax
	jmp	.L917
.L916:
	movl	$0, %eax
.L917:
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, %rcx
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L925
	cmpl	$0, -8(%rbp)
	jne	.L920
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_trusted_stack@PLT
.L920:
	movq	-16(%rbp), %rax
	leaq	152(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	jne	.L921
	movq	-16(%rbp), %rax
	movl	$17, 176(%rax)
	jmp	.L919
.L921:
	movq	-16(%rbp), %rax
	movl	$1, 148(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	build_chain
	testl	%eax, %eax
	jne	.L922
	cmpl	$0, -8(%rbp)
	jne	.L926
.L922:
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jle	.L923
	cmpl	$0, -60(%rbp)
	jne	.L923
	orl	$8, -4(%rbp)
.L923:
	movq	-16(%rbp), %rax
	movq	152(%rax), %rcx
	movl	-4(%rbp), %edx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_certs_new@PLT
	testl	%eax, %eax
	jne	.L927
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L919
.L925:
	nop
	jmp	.L919
.L926:
	nop
	jmp	.L919
.L927:
	nop
.L919:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-24(%rbp), %rax
.L924:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	X509_build_chain, .-X509_build_chain
	.section	.rodata
	.align 16
	.type	minbits_table, @object
	.size	minbits_table, 20
minbits_table:
	.long	80
	.long	112
	.long	128
	.long	192
	.long	256
	.align 4
	.type	NUM_AUTH_LEVELS, @object
	.size	NUM_AUTH_LEVELS, 4
NUM_AUTH_LEVELS:
	.long	5
	.text
	.type	check_key_level, @function
check_key_level:
.LFB844:
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
	movq	32(%rax), %rax
	movl	44(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L929
	movl	$1, %eax
	jmp	.L930
.L929:
	cmpq	$0, -32(%rbp)
	jne	.L931
	movl	$0, %eax
	jmp	.L930
.L931:
	movl	$5, %eax
	cmpl	%eax, -4(%rbp)
	jle	.L932
	movl	$5, -4(%rbp)
.L932:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	minbits_table(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %eax
.L930:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	check_key_level, .-check_key_level
	.type	check_cert_key_level, @function
check_cert_key_level:
.LFB845:
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
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_key_level
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	check_cert_key_level, .-check_cert_key_level
	.section	.rodata
.LC3:
	.string	"decoded-from-explicit"
	.text
	.type	check_curve, @function
check_curve:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L936
	movl	$-1, %eax
	jmp	.L941
.L936:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$408, %eax
	je	.L938
	movl	$1, %eax
	jmp	.L941
.L938:
	leaq	-16(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L939
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L941
.L939:
	movl	$-1, %eax
.L941:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	check_curve, .-check_curve
	.type	check_sig_level, @function
check_sig_level:
.LFB847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	44(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L943
	movl	$1, %eax
	jmp	.L947
.L943:
	movl	$5, %eax
	cmpl	%eax, -4(%rbp)
	jle	.L945
	movl	$5, -4(%rbp)
.L945:
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_get_signature_info@PLT
	testl	%eax, %eax
	jne	.L946
	movl	$0, %eax
	jmp	.L947
.L946:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	minbits_table(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
.L947:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	check_sig_level, .-check_sig_level
	.section	.rodata
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 17
__func__.15:
	.string	"X509_self_signed"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 22
__func__.14:
	.string	"X509_STORE_CTX_verify"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 17
__func__.13:
	.string	"X509_verify_cert"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 17
__func__.12:
	.string	"x509_verify_x509"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 23
__func__.11:
	.string	"check_name_constraints"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 13
__func__.10:
	.string	"check_policy"
	.align 8
	.type	utctime_length.9, @object
	.size	utctime_length.9, 8
utctime_length.9:
	.quad	13
	.align 8
	.type	generalizedtime_length.8, @object
	.size	generalizedtime_length.8, 8
generalizedtime_length.8:
	.quad	15
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 27
__func__.7:
	.string	"X509_get_pubkey_parameters"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"X509_CRL_diff"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 31
__func__.5:
	.string	"X509_STORE_CTX_purpose_inherit"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 20
__func__.4:
	.string	"X509_STORE_CTX_init"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"X509_STORE_CTX_set_default"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 9
__func__.2:
	.string	"dane_i2d"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"build_chain"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"X509_build_chain"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

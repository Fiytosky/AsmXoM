	.file	"cmp_genm.c"
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
	.type	ossl_check_X509_compfunc_type, @function
ossl_check_X509_compfunc_type:
.LFB411:
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
.LFE411:
	.size	ossl_check_X509_compfunc_type, .-ossl_check_X509_compfunc_type
	.type	ossl_check_X509_freefunc_type, @function
ossl_check_X509_freefunc_type:
.LFB413:
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
.LFE413:
	.size	ossl_check_X509_freefunc_type, .-ossl_check_X509_freefunc_type
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
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
.LFB637:
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
.LFE637:
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.type	get0_trustedStore_vpm, @function
get0_trustedStore_vpm:
.LFB739:
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
	call	OSSL_CMP_CTX_get0_trustedStore@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	get0_trustedStore_vpm, .-get0_trustedStore_vpm
	.section	.rodata
.LC0:
	.string	"WARN"
.LC1:
	.string	"ERR"
	.align 8
.LC2:
	.string	"certificate from '%s' with subject '%s' %s"
.LC3:
	.string	"../crypto/cmp/cmp_genm.c"
	.text
	.type	cert_msg, @function
cert_msg:
.LFB740:
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
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -8(%rbp)
	cmpl	$4, -40(%rbp)
	jne	.L22
	leaq	.LC0(%rip), %rax
	jmp	.L23
.L22:
	leaq	.LC1(%rip), %rax
.L23:
	movl	-36(%rbp), %r10d
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	-40(%rbp), %edi
	pushq	24(%rbp)
	pushq	-8(%rbp)
	pushq	-56(%rbp)
	leaq	.LC2(%rip), %r8
	pushq	%r8
	movq	%rax, %r9
	movl	%r10d, %r8d
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$31, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	cert_msg, .-cert_msg
	.section	.rodata
.LC4:
	.string	"has expired"
.LC5:
	.string	"not yet valid"
.LC6:
	.string	"is not an EE cert"
.LC7:
	.string	"is not a CA cert"
	.text
	.type	ossl_X509_check, @function
ossl_X509_check:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_extension_flags@PLT
	movl	%eax, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notBefore@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L25
	movl	$4, -24(%rbp)
	jmp	.L26
.L25:
	movl	$3, -24(%rbp)
.L26:
	cmpl	$0, -20(%rbp)
	jne	.L27
	cmpl	$0, -32(%rbp)
	jle	.L28
	leaq	.LC4(%rip), %rax
	jmp	.L29
.L28:
	leaq	.LC5(%rip), %rax
.L29:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
	movl	-24(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	leaq	__func__.5(%rip), %rdi
	pushq	%rax
	pushq	-72(%rbp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$46, %edx
	call	cert_msg
	addq	$16, %rsp
.L27:
	cmpl	$0, -76(%rbp)
	js	.L30
	movl	-28(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L30
	movl	-28(%rbp), %eax
	andl	$16, %eax
	shrl	$4, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -76(%rbp)
	setne	%al
	movzbl	%al, %eax
	cmpl	%eax, -36(%rbp)
	je	.L30
	cmpl	$0, -36(%rbp)
	je	.L31
	leaq	.LC6(%rip), %rax
	jmp	.L32
.L31:
	leaq	.LC7(%rip), %rax
.L32:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
	movl	-24(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	leaq	__func__.5(%rip), %rdi
	pushq	%rax
	pushq	-72(%rbp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$52, %edx
	call	cert_msg
	addq	$16, %rsp
	movl	$0, -20(%rbp)
.L30:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ossl_X509_check, .-ossl_X509_check
	.type	ossl_X509_check_all, @function
ossl_X509_check_all:
.LFB742:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L35
.L38:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_X509_check
	testl	%eax, %eax
	je	.L36
	cmpl	$0, -8(%rbp)
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L35:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L38
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ossl_X509_check_all, .-ossl_X509_check_all
	.section	.rodata
	.align 8
.LC8:
	.string	"client context in unsuitable state; should call CMPclient_reinit() before"
.LC9:
	.string	"with infoType %s"
	.align 8
.LC10:
	.string	"response on genm requesting infoType %s does not include suitable value"
	.align 8
.LC11:
	.string	"response on genm contains %d ITAVs; will use the first ITAV with infoType id-it-%s"
	.align 8
.LC12:
	.string	"%s' while expecting 'id-it-%s'"
	.align 8
.LC13:
	.string	"could not find any ITAV for %s"
	.text
	.type	get_genm_itav, @function
get_genm_itav:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movq	%rcx, -208(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L42
.L41:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	cmpl	$-1, %eax
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movl	$191, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L42
.L43:
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_push0_genm_ITAV@PLT
	testl	%eax, %eax
	je	.L56
	movq	$0, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_exec_GENM_ses@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	cmpl	$-3, %eax
	je	.L46
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-208(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	movl	$192, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L46:
	movl	$0, %eax
	jmp	.L47
.L45:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.L48
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-208(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	movl	$193, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L47
.L48:
	cmpl	$1, -16(%rbp)
	jle	.L49
	leaq	.LC0(%rip), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	-208(%rbp)
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC11(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$111, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
.L49:
	movl	$0, -12(%rbp)
	jmp	.L50
.L55:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_type@PLT
	movq	%rax, -32(%rbp)
	movabsq	$7957688057563342183, %rax
	movabsq	$7946918697617678708, %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movabsq	$2819364900480249702, %rax
	movl	$0, %edx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	%eax, -196(%rbp)
	jne	.L51
	addl	$1, -12(%rbp)
	jmp	.L52
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	addl	$1, -12(%rbp)
.L52:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	jmp	.L47
.L51:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movl	$128, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdx
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jns	.L54
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-176(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$7959953386440127804, %rcx
	movq	%rcx, (%rax)
	movw	$62, 8(%rax)
.L54:
	leaq	.LC0(%rip), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	-208(%rbp)
	leaq	-176(%rbp), %rsi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$129, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	addl	$1, -12(%rbp)
.L50:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L55
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-208(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	movl	$193, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L42
.L56:
	nop
.L42:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	get_genm_itav, .-get_genm_itav
	.section	.rodata
.LC14:
	.string	"caCerts"
.LC15:
	.string	"genp"
	.text
	.globl	OSSL_CMP_get1_caCerts
	.type	OSSL_CMP_get1_caCerts, @function
OSSL_CMP_get1_caCerts:
.LFB744:
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
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L58:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %edi
	call	OSSL_CMP_ITAV_new_caCerts@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L66
.L60:
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1223, %edx
	movq	%rax, %rdi
	call	get_genm_itav
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L66
.L61:
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_caCerts@PLT
	testl	%eax, %eax
	je	.L67
	movl	$1, -20(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L68
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get0_trustedStore_vpm
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ossl_X509_check_all
	testl	%eax, %eax
	jne	.L65
	movl	$0, -20(%rbp)
	jmp	.L63
.L65:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ebx
	movl	$0, %edi
	call	ossl_check_X509_compfunc_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	jne	.L69
	movq	X509_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L63
.L67:
	nop
	jmp	.L63
.L68:
	nop
	jmp	.L63
.L69:
	nop
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	-20(%rbp), %eax
.L66:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	OSSL_CMP_get1_caCerts, .-OSSL_CMP_get1_caCerts
	.type	selfsigned_verify_cb, @function
selfsigned_verify_cb:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.L71
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	testl	%eax, %eax
	jne	.L71
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	cmpl	$18, %eax
	jne	.L71
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_chain@PLT
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_untrusted@PLT
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_check_issued@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L72
.L75:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	addl	$1, -20(%rbp)
.L72:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L75
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_store@PLT
	movq	%rax, %rdi
	call	X509_STORE_get1_all_certs@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L76
.L80:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	-56(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L77
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	je	.L83
	movl	$1, -100(%rbp)
	jmp	.L83
.L77:
	addl	$1, -20(%rbp)
.L76:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L80
	jmp	.L79
.L83:
	nop
.L79:
	movq	X509_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-100(%rbp), %eax
	jmp	.L74
.L71:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_store@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L81
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get_verify_cb@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L82
.L81:
	movl	-100(%rbp), %eax
	jmp	.L74
.L82:
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movq	-88(%rbp), %rcx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
.L74:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	selfsigned_verify_cb, .-selfsigned_verify_cb
	.type	verify_ss_cert, @function
verify_ss_cert:
.LFB746:
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
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L85
	cmpq	$0, -56(%rbp)
	jne	.L86
.L85:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L87
.L86:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L91
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L91
	leaq	selfsigned_verify_cb(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_verify_cb@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L90
.L91:
	nop
.L90:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-4(%rbp), %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	verify_ss_cert, .-verify_ss_cert
	.section	.rodata
.LC16:
	.string	"using trust store"
	.align 8
.LC17:
	.string	"with given certificate as trust anchor"
	.align 8
.LC18:
	.string	"failed to validate %s certificate received in genp %s"
	.text
	.type	verify_ss_cert_trans, @function
verify_ss_cert_trans:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_trustedStore@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L93
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, -40(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L102
.L94:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set1_param@PLT
	testl	%eax, %eax
	je	.L103
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	testl	%eax, %eax
	je	.L103
.L93:
	cmpq	$0, -72(%rbp)
	je	.L98
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	je	.L104
.L98:
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_propq@PLT
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movq	%r12, %rsi
	call	verify_ss_cert
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpq	$0, -64(%rbp)
	jne	.L99
	leaq	.LC16(%rip), %rax
	jmp	.L100
.L99:
	leaq	.LC17(%rip), %rax
.L100:
	movq	-88(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$195, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L97
.L103:
	nop
	jmp	.L97
.L104:
	nop
	jmp	.L97
.L105:
	nop
.L97:
	movq	X509_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	cmpq	$0, -64(%rbp)
	je	.L101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
.L101:
	movl	-28(%rbp), %eax
.L102:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	verify_ss_cert_trans, .-verify_ss_cert_trans
	.section	.rodata
.LC19:
	.string	"rootCaKeyUpdate"
.LC20:
	.string	"newWithNew"
.LC21:
	.string	"oldWithOld"
	.text
	.globl	OSSL_CMP_get1_rootCaKeyUpdate
	.type	OSSL_CMP_get1_rootCaKeyUpdate, @function
OSSL_CMP_get1_rootCaKeyUpdate:
.LFB748:
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
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L107:
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_new_rootCaCert@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L109
	movl	$0, %eax
	jmp	.L122
.L109:
	leaq	.LC19(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1224, %edx
	movq	%rax, %rdi
	call	get_genm_itav
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L110
	movl	$0, %eax
	jmp	.L122
.L110:
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_rootCaKeyUpdate@PLT
	testl	%eax, %eax
	je	.L123
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L113
	movl	$1, -12(%rbp)
	jmp	.L112
.L113:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L114
	cmpq	$0, -64(%rbp)
	jne	.L124
.L114:
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC20(%rip), %rdi
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	verify_ss_cert_trans
	testl	%eax, %eax
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$319, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$195, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L115:
	cmpq	$0, -64(%rbp)
	je	.L116
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L116
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC21(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	verify_ss_cert_trans
	testl	%eax, %eax
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$195, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L112
.L116:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L125
	cmpq	$0, -80(%rbp)
	je	.L118
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L126
.L118:
	cmpq	$0, -88(%rbp)
	je	.L120
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L121
.L120:
	movl	$1, -12(%rbp)
	jmp	.L112
.L121:
	cmpq	$0, -80(%rbp)
	je	.L127
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L119
.L126:
	nop
	jmp	.L119
.L127:
	nop
.L119:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L112
.L123:
	nop
	jmp	.L112
.L124:
	nop
	jmp	.L112
.L125:
	nop
.L112:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-12(%rbp), %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	OSSL_CMP_get1_rootCaKeyUpdate, .-OSSL_CMP_get1_rootCaKeyUpdate
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"ossl_X509_check"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"get_genm_itav"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 22
__func__.3:
	.string	"OSSL_CMP_get1_caCerts"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"verify_ss_cert"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"verify_ss_cert_trans"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"OSSL_CMP_get1_rootCaKeyUpdate"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

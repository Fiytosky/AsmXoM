	.file	"v3_utl.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_compfunc_type, @function
ossl_check_OPENSSL_STRING_compfunc_type:
.LFB9:
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
.LFE9:
	.size	ossl_check_OPENSSL_STRING_compfunc_type, .-ossl_check_OPENSSL_STRING_compfunc_type
	.type	ossl_check_OPENSSL_STRING_freefunc_type, @function
ossl_check_OPENSSL_STRING_freefunc_type:
.LFB11:
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
.LFE11:
	.size	ossl_check_OPENSSL_STRING_freefunc_type, .-ossl_check_OPENSSL_STRING_freefunc_type
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
	.type	ossl_check_CONF_VALUE_type, @function
ossl_check_CONF_VALUE_type:
.LFB160:
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
.LFE160:
	.size	ossl_check_CONF_VALUE_type, .-ossl_check_CONF_VALUE_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
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
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB162:
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
.LFE162:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB165:
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
.LFE165:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB451:
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
.LFE451:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB454:
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
.LFE454:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.type	ossl_check_const_ACCESS_DESCRIPTION_sk_type, @function
ossl_check_const_ACCESS_DESCRIPTION_sk_type:
.LFB516:
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
.LFE516:
	.size	ossl_check_const_ACCESS_DESCRIPTION_sk_type, .-ossl_check_const_ACCESS_DESCRIPTION_sk_type
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
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
.LFB523:
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
.LFE523:
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_freefunc_type, @function
ossl_check_GENERAL_NAME_freefunc_type:
.LFB526:
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
.LFE526:
	.size	ossl_check_GENERAL_NAME_freefunc_type, .-ossl_check_GENERAL_NAME_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_utl.c"
	.text
	.type	x509v3_add_len_value, @function
x509v3_add_len_value:
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L34
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L43
.L34:
	cmpq	$0, -64(%rbp)
	je	.L36
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	jne	.L44
	leaq	.LC0(%rip), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$53, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L45
.L36:
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L46
	cmpl	$0, -44(%rbp)
	je	.L39
	call	OPENSSL_sk_new_null@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L39:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L41
.L43:
	nop
	jmp	.L35
.L44:
	nop
	jmp	.L35
.L45:
	nop
	jmp	.L35
.L46:
	nop
	jmp	.L35
.L47:
	nop
.L35:
	cmpl	$0, -44(%rbp)
	je	.L42
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
.L42:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$75, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	x509v3_add_len_value, .-x509v3_add_len_value
	.globl	X509V3_add_value
	.type	X509V3_add_value, @function
X509V3_add_value:
.LFB698:
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
	cmpq	$0, -16(%rbp)
	je	.L49
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	jmp	.L50
.L49:
	movl	$0, %edi
.L50:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	x509v3_add_len_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	X509V3_add_value, .-X509V3_add_value
	.globl	X509V3_add_value_uchar
	.type	X509V3_add_value_uchar, @function
X509V3_add_value_uchar:
.LFB699:
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
	cmpq	$0, -16(%rbp)
	je	.L53
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	jmp	.L54
.L53:
	movl	$0, %edi
.L54:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	x509v3_add_len_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	X509V3_add_value_uchar, .-X509V3_add_value_uchar
	.globl	x509v3_add_len_value_uchar
	.type	x509v3_add_len_value_uchar, @function
x509v3_add_len_value_uchar:
.LFB700:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509v3_add_len_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	x509v3_add_len_value_uchar, .-x509v3_add_len_value_uchar
	.globl	X509V3_conf_free
	.type	X509V3_conf_free, @function
X509V3_conf_free:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$108, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$109, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L58
.L61:
	nop
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	X509V3_conf_free, .-X509V3_conf_free
	.section	.rodata
.LC1:
	.string	"TRUE"
.LC2:
	.string	"FALSE"
	.text
	.globl	X509V3_add_value_bool
	.type	X509V3_add_value_bool, @function
X509V3_add_value_bool:
.LFB702:
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
	cmpl	$0, -12(%rbp)
	je	.L63
	movq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	jmp	.L64
.L63:
	movq	-24(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	X509V3_add_value_bool, .-X509V3_add_value_bool
	.globl	X509V3_add_value_bool_nf
	.type	X509V3_add_value_bool_nf, @function
X509V3_add_value_bool_nf:
.LFB703:
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
	cmpl	$0, -12(%rbp)
	je	.L66
	movq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	jmp	.L67
.L66:
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	X509V3_add_value_bool_nf, .-X509V3_add_value_bool_nf
	.section	.rodata
.LC3:
	.string	"-0x"
.LC4:
	.string	"0x"
	.text
	.type	bignum_to_string, @function
bignum_to_string:
.LFB704:
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
	call	BN_num_bits@PLT
	cmpl	$127, %eax
	jg	.L69
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	jmp	.L70
.L69:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$3, %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L72
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$150, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L70
.L72:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L73
	movq	-16(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	jmp	.L74
.L73:
	movq	-16(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L74:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	bignum_to_string, .-bignum_to_string
	.globl	i2s_ASN1_ENUMERATED
	.type	i2s_ASN1_ENUMERATED, @function
i2s_ASN1_ENUMERATED:
.LFB705:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_to_BN@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L78:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bignum_to_string
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L79:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	i2s_ASN1_ENUMERATED, .-i2s_ASN1_ENUMERATED
	.globl	i2s_ASN1_INTEGER
	.type	i2s_ASN1_INTEGER, @function
i2s_ASN1_INTEGER:
.LFB706:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L84
.L83:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bignum_to_string
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L84:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	i2s_ASN1_INTEGER, .-i2s_ASN1_INTEGER
	.globl	s2i_ASN1_INTEGER
	.type	s2i_ASN1_INTEGER, @function
s2i_ASN1_INTEGER:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L86
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L86:
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L88:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L89
	addq	$1, -48(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L90
.L89:
	movl	$0, -4(%rbp)
.L90:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L91
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	.L92
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	jne	.L91
.L92:
	addq	$2, -48(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L93
.L91:
	movl	$0, -8(%rbp)
.L93:
	cmpl	$0, -8(%rbp)
	je	.L94
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movl	%eax, -12(%rbp)
	jmp	.L95
.L94:
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	movl	%eax, -12(%rbp)
.L95:
	cmpl	$0, -12(%rbp)
	je	.L96
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L97
.L96:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L97:
	cmpl	$0, -4(%rbp)
	je	.L98
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L98
	movl	$0, -4(%rbp)
.L98:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L99:
	cmpl	$0, -4(%rbp)
	je	.L100
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
.L100:
	movq	-24(%rbp), %rax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	s2i_ASN1_INTEGER, .-s2i_ASN1_INTEGER
	.globl	X509V3_add_value_int
	.type	X509V3_add_value_int, @function
X509V3_add_value_int:
.LFB708:
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
	cmpq	$0, -32(%rbp)
	jne	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L105
	movl	$0, %eax
	jmp	.L104
.L105:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	movl	%eax, -12(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	X509V3_add_value_int, .-X509V3_add_value_int
	.section	.rodata
.LC5:
	.string	"true"
.LC6:
	.string	"Y"
.LC7:
	.string	"y"
.LC8:
	.string	"YES"
.LC9:
	.string	"yes"
.LC10:
	.string	"false"
.LC11:
	.string	"N"
.LC12:
	.string	"n"
.LC13:
	.string	"NO"
.LC14:
	.string	"no"
.LC15:
	.string	", value="
.LC16:
	.string	"name="
	.text
	.globl	X509V3_get_value_bool
	.type	X509V3_get_value_bool, @function
X509V3_get_value_bool:
.LFB709:
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
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	.LC6(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	.LC9(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L110
.L109:
	movq	-32(%rbp), %rax
	movl	$255, (%rax)
	movl	$1, %eax
	jmp	.L111
.L110:
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC10(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC11(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC12(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC13(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC14(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L114
.L112:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
	jmp	.L111
.L113:
	nop
	jmp	.L108
.L114:
	nop
.L108:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC16(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	movl	$0, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	X509V3_get_value_bool, .-X509V3_get_value_bool
	.globl	X509V3_get_value_int
	.type	X509V3_get_value_int, @function
X509V3_get_value_int:
.LFB710:
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
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L116
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC16(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	X509V3_get_value_int, .-X509V3_get_value_int
	.globl	X509V3_parse_list
	.type	X509V3_parse_list, @function
X509V3_parse_list:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	$0, -80(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$324, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L139
	movl	$1, -44(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L121
.L132:
	cmpl	$1, -44(%rbp)
	je	.L122
	cmpl	$2, -44(%rbp)
	je	.L123
	jmp	.L124
.L122:
	cmpb	$58, -57(%rbp)
	jne	.L125
	movl	$2, -44(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L126
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$340, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L120
.L126:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L140
.L125:
	cmpb	$44, -57(%rbp)
	jne	.L140
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L120
.L128:
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L140
	jmp	.L120
.L123:
	cmpb	$44, -57(%rbp)
	jne	.L124
	movl	$1, -44(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L120
.L129:
	leaq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	je	.L141
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L124
.L140:
	nop
.L124:
	addq	$1, -24(%rbp)
.L121:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -57(%rbp)
	cmpb	$0, -57(%rbp)
	je	.L131
	cmpb	$13, -57(%rbp)
	je	.L131
	cmpb	$10, -57(%rbp)
	jne	.L132
.L131:
	cmpl	$2, -44(%rbp)
	jne	.L133
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L134
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L120
.L134:
	leaq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L135
	jmp	.L120
.L133:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L120
.L136:
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	je	.L142
.L135:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$396, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	jmp	.L138
.L139:
	nop
	jmp	.L120
.L141:
	nop
	jmp	.L120
.L142:
	nop
.L120:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L138:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	X509V3_parse_list, .-X509V3_parse_list
	.type	strip_spaces, @function
strip_spaces:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L144
.L146:
	addq	$1, -8(%rbp)
.L144:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L145
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L146
.L145:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L149
.L151:
	subq	$1, -16(%rbp)
.L149:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L150
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L151
.L150:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L152
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
.L152:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L153
	movl	$0, %eax
	jmp	.L148
.L153:
	movq	-8(%rbp), %rax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	strip_spaces, .-strip_spaces
	.globl	ossl_v3_name_cmp
	.type	ossl_v3_name_cmp, @function
ossl_v3_name_cmp:
.LFB713:
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
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L155
	movl	-8(%rbp), %eax
	jmp	.L156
.L155:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	je	.L157
	cmpb	$46, -9(%rbp)
	jne	.L158
.L157:
	movl	$0, %eax
	jmp	.L156
.L158:
	movl	$1, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	ossl_v3_name_cmp, .-ossl_v3_name_cmp
	.type	sk_strcmp, @function
sk_strcmp:
.LFB714:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	sk_strcmp, .-sk_strcmp
	.globl	X509_get1_email
	.type	X509_get1_email, @function
X509_get1_email:
.LFB715:
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
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	get_email
	movq	%rax, -32(%rbp)
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	X509_get1_email, .-X509_get1_email
	.globl	X509_get1_ocsp
	.type	X509_get1_ocsp, @function
X509_get1_ocsp:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$177, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L164
	movl	$0, %eax
	jmp	.L170
.L164:
	movl	$0, -4(%rbp)
	jmp	.L166
.L169:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ACCESS_DESCRIPTION_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$178, %eax
	jne	.L167
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L167
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	append_ia5
	testl	%eax, %eax
	je	.L171
.L167:
	addl	$1, -4(%rbp)
.L166:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ACCESS_DESCRIPTION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L169
	jmp	.L168
.L171:
	nop
.L168:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	AUTHORITY_INFO_ACCESS_free@PLT
	movq	-32(%rbp), %rax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	X509_get1_ocsp, .-X509_get1_ocsp
	.globl	X509_REQ_get1_email
	.type	X509_REQ_get1_email, @function
X509_REQ_get1_email:
.LFB717:
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
	movq	%rax, %rdi
	call	X509_REQ_get_extensions@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	get_email
	movq	%rax, -40(%rbp)
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	X509_REQ_get1_email, .-X509_REQ_get1_email
	.type	get_email, @function
get_email:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -4(%rbp)
	jmp	.L175
.L177:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	append_ia5
	testl	%eax, %eax
	jne	.L175
	movl	$0, %eax
	jmp	.L182
.L175:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L177
	movl	$0, -4(%rbp)
	jmp	.L178
.L181:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L183
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	append_ia5
	testl	%eax, %eax
	jne	.L180
	movl	$0, %eax
	jmp	.L182
.L183:
	nop
.L180:
	addl	$1, -4(%rbp)
.L178:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L181
	movq	-40(%rbp), %rax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	get_email, .-get_email
	.type	str_free, @function
str_free:
.LFB719:
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
	movl	$529, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	str_free, .-str_free
	.type	append_ia5, @function
append_ia5:
.LFB720:
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
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	je	.L186
	movl	$1, %eax
	jmp	.L187
.L186:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L189
.L188:
	movl	$1, %eax
	jmp	.L187
.L189:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L190
	movl	$1, %eax
	jmp	.L187
.L190:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L191
	leaq	sk_strcmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L191:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L192
	movl	$0, %eax
	jmp	.L187
.L192:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$549, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L193
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_email_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L187
.L193:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	cmpl	$-1, %eax
	je	.L194
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$558, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L187
.L194:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L195
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$562, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_email_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L187
.L195:
	movl	$1, %eax
.L187:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	append_ia5, .-append_ia5
	.globl	X509_email_free
	.type	X509_email_free, @function
X509_email_free:
.LFB721:
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
	leaq	str_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	X509_email_free, .-X509_email_free
	.type	skip_prefix, @function
skip_prefix:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L204
	jmp	.L200
.L203:
	movl	-44(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L205
.L201:
	addq	$1, -8(%rbp)
	subq	$1, -16(%rbp)
.L200:
	movq	-16(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L202
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L203
	jmp	.L202
.L205:
	nop
.L202:
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L197
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L197
.L204:
	nop
.L197:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	skip_prefix, .-skip_prefix
	.type	equal_nocase, @function
equal_nocase:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	skip_prefix
	movq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	je	.L209
	movl	$0, %eax
	jmp	.L208
.L214:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	cmpb	$0, -1(%rbp)
	jne	.L210
	movl	$0, %eax
	jmp	.L208
.L210:
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	je	.L211
	cmpb	$64, -1(%rbp)
	jbe	.L212
	cmpb	$90, -1(%rbp)
	ja	.L212
	addb	$32, -1(%rbp)
.L212:
	cmpb	$64, -2(%rbp)
	jbe	.L213
	cmpb	$90, -2(%rbp)
	ja	.L213
	addb	$32, -2(%rbp)
.L213:
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	je	.L211
	movl	$0, %eax
	jmp	.L208
.L211:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	addq	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
.L209:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L214
	movl	$1, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	equal_nocase, .-equal_nocase
	.type	equal_case, @function
equal_case:
.LFB724:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	skip_prefix
	movq	-16(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L216
	movl	$0, %eax
	jmp	.L217
.L216:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	equal_case, .-equal_case
	.type	equal_email, @function
equal_email:
.LFB725:
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
	movl	%r8d, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L221
	movl	$0, %eax
	jmp	.L220
.L225:
	subq	$1, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	je	.L222
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L221
.L222:
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	equal_nocase
	testl	%eax, %eax
	jne	.L227
	movl	$0, %eax
	jmp	.L220
.L221:
	cmpq	$0, -8(%rbp)
	jne	.L225
	jmp	.L224
.L227:
	nop
.L224:
	cmpq	$0, -8(%rbp)
	jne	.L226
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L226:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	equal_case
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	equal_email, .-equal_email
	.section	.rodata
.LC17:
	.string	"xn--"
	.text
	.type	wildcard_match, @function
wildcard_match:
.LFB726:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L229
	movl	$0, %eax
	jmp	.L230
.L229:
	movl	16(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	equal_nocase
	testl	%eax, %eax
	jne	.L231
	movl	$0, %eax
	jmp	.L230
.L231:
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	16(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	equal_nocase
	testl	%eax, %eax
	jne	.L232
	movl	$0, %eax
	jmp	.L230
.L232:
	cmpq	$0, -48(%rbp)
	jne	.L233
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L233
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L234
	movl	$0, %eax
	jmp	.L230
.L234:
	movl	$1, -16(%rbp)
	movl	16(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L233
	movl	$1, -12(%rbp)
.L233:
	cmpl	$0, -16(%rbp)
	jne	.L235
	cmpq	$3, -80(%rbp)
	jbe	.L235
	leaq	.LC17(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L235
	movl	$0, %eax
	jmp	.L230
.L235:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -32(%rbp)
	jne	.L236
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L236
	movl	$1, %eax
	jmp	.L230
.L236:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L237
.L243:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jbe	.L238
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jbe	.L239
.L238:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jbe	.L240
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jbe	.L239
.L240:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jbe	.L241
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jbe	.L239
.L241:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L239
	cmpl	$0, -12(%rbp)
	je	.L242
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L239
.L242:
	movl	$0, %eax
	jmp	.L230
.L239:
	addq	$1, -8(%rbp)
.L237:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L243
	movl	$1, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	wildcard_match, .-wildcard_match
	.type	valid_star, @function
valid_star:
.LFB727:
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
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L245
.L266:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L246
	movl	-20(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	je	.L247
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L248
.L247:
	movl	$1, %eax
	jmp	.L249
.L248:
	movl	$0, %eax
.L249:
	movl	%eax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L250
	movl	-20(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L250
	cmpl	$0, -24(%rbp)
	je	.L251
.L250:
	movl	$0, %eax
	jmp	.L252
.L251:
	movl	-52(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L253
	cmpl	$0, -28(%rbp)
	je	.L254
	cmpl	$0, -32(%rbp)
	jne	.L253
.L254:
	movl	$0, %eax
	jmp	.L252
.L253:
	cmpl	$0, -28(%rbp)
	jne	.L255
	cmpl	$0, -32(%rbp)
	jne	.L255
	movl	$0, %eax
	jmp	.L252
.L255:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	andl	$-2, -20(%rbp)
	jmp	.L256
.L246:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jbe	.L257
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jbe	.L258
.L257:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jbe	.L259
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jbe	.L258
.L259:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jbe	.L260
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	ja	.L260
.L258:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L261
	movq	-48(%rbp), %rax
	subq	-16(%rbp), %rax
	cmpq	$3, %rax
	jbe	.L261
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC17(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L261
	orl	$8, -20(%rbp)
.L261:
	andl	$-6, -20(%rbp)
	jmp	.L256
.L260:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L262
	movl	-20(%rbp), %eax
	andl	$5, %eax
	testl	%eax, %eax
	je	.L263
	movl	$0, %eax
	jmp	.L252
.L263:
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	jmp	.L256
.L262:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L264
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L265
	movl	$0, %eax
	jmp	.L252
.L265:
	orl	$4, -20(%rbp)
	jmp	.L256
.L264:
	movl	$0, %eax
	jmp	.L252
.L256:
	addq	$1, -16(%rbp)
.L245:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L266
	movl	-20(%rbp), %eax
	andl	$5, %eax
	testl	%eax, %eax
	jne	.L267
	cmpl	$1, -24(%rbp)
	jg	.L268
.L267:
	movl	$0, %eax
	jmp	.L252
.L268:
	movq	-8(%rbp), %rax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	valid_star, .-valid_star
	.type	equal_wildcard, @function
equal_wildcard:
.LFB728:
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
	movl	%r8d, -52(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$1, -48(%rbp)
	jbe	.L270
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L271
.L270:
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	valid_star
	movq	%rax, -8(%rbp)
.L271:
	cmpq	$0, -8(%rbp)
	jne	.L272
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	equal_nocase
	jmp	.L273
.L272:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	subq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %r11
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	-52(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%r11, %rcx
	movq	%r10, %rsi
	movq	%rax, %rdi
	call	wildcard_match
	addq	$16, %rsp
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	equal_wildcard, .-equal_wildcard
	.type	do_check_string, @function
do_check_string:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L275
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L276
.L275:
	movl	$0, %eax
	jmp	.L277
.L276:
	cmpl	$0, -28(%rbp)
	jle	.L278
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L279
	movl	$0, %eax
	jmp	.L277
.L279:
	cmpl	$22, -28(%rbp)
	jne	.L280
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -4(%rbp)
	jmp	.L281
.L280:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	cmpl	%edx, %eax
	jne	.L281
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L281
	movl	$1, -4(%rbp)
.L281:
	cmpl	$0, -4(%rbp)
	jle	.L282
	cmpq	$0, 16(%rbp)
	je	.L282
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$848, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L282
	movl	$-1, %eax
	jmp	.L277
.L278:
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_to_UTF8@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L283
	movl	$-1, %eax
	jmp	.L277
.L283:
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L285
	cmpq	$0, 16(%rbp)
	je	.L285
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$865, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L285
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$867, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
	jmp	.L277
.L285:
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$871, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L282:
	movl	-4(%rbp), %eax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	do_check_string, .-do_check_string
	.type	do_x509_check, @function
do_x509_check:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	%r8d, -112(%rbp)
	movq	%r9, -120(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	andl	$-32769, -108(%rbp)
	cmpl	$1, -112(%rbp)
	jne	.L287
	movl	$48, -8(%rbp)
	movl	$22, -12(%rbp)
	leaq	equal_email(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L288
.L287:
	cmpl	$2, -112(%rbp)
	jne	.L289
	movl	$13, -8(%rbp)
	cmpq	$1, -104(%rbp)
	jbe	.L290
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L290
	orl	$32768, -108(%rbp)
.L290:
	movl	$22, -12(%rbp)
	movl	-108(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L291
	leaq	equal_nocase(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L288
.L291:
	leaq	equal_wildcard(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L288
.L289:
	movl	$4, -12(%rbp)
	leaq	equal_case(%rip), %rax
	movq	%rax, -32(%rbp)
.L288:
	cmpq	$0, -104(%rbp)
	jne	.L292
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -104(%rbp)
.L292:
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L293
	movl	$0, -4(%rbp)
	jmp	.L294
.L309:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	je	.L295
	cmpl	$7, %eax
	jg	.L316
	cmpl	$2, %eax
	je	.L297
	cmpl	$2, %eax
	jg	.L316
	testl	%eax, %eax
	je	.L298
	cmpl	$1, %eax
	je	.L299
	jmp	.L316
.L298:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1208, %eax
	jne	.L317
	cmpl	$1, -112(%rbp)
	jne	.L318
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L318
	movl	$0, -12(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	nop
	jmp	.L304
.L299:
	cmpl	$1, -112(%rbp)
	jne	.L319
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L304
.L297:
	cmpl	$2, -112(%rbp)
	jne	.L320
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L304
.L295:
	cmpl	$7, -112(%rbp)
	jne	.L321
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	nop
.L304:
	movl	$1, -16(%rbp)
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rdi
	movl	-108(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-120(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_check_string
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L322
	jmp	.L300
.L316:
	nop
	jmp	.L300
.L317:
	nop
	jmp	.L300
.L318:
	nop
	jmp	.L300
.L319:
	nop
	jmp	.L300
.L320:
	nop
	jmp	.L300
.L321:
	nop
.L300:
	addl	$1, -4(%rbp)
.L294:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L309
	jmp	.L308
.L322:
	nop
.L308:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	cmpl	$0, -20(%rbp)
	je	.L310
	movl	-20(%rbp), %eax
	jmp	.L311
.L310:
	cmpl	$0, -16(%rbp)
	je	.L293
	movl	-108(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L293
	movl	$0, %eax
	jmp	.L311
.L293:
	cmpl	$0, -8(%rbp)
	je	.L312
	movl	-108(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L313
.L312:
	movl	$0, %eax
	jmp	.L311
.L313:
	movl	$-1, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -56(%rbp)
	jmp	.L314
.L315:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	-120(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$-1, %esi
	movq	%rax, %rdi
	call	do_check_string
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L314
	movl	-20(%rbp), %eax
	jmp	.L311
.L314:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L315
	movl	$0, %eax
.L311:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	do_x509_check, .-do_x509_check
	.globl	X509_check_host
	.type	X509_check_host, @function
X509_check_host:
.LFB731:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L324
	movl	$-2, %eax
	jmp	.L325
.L324:
	cmpq	$0, -24(%rbp)
	jne	.L326
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	jmp	.L327
.L326:
	cmpq	$1, -24(%rbp)
	jbe	.L328
	movq	-24(%rbp), %rax
	subq	$1, %rax
	jmp	.L329
.L328:
	movq	-24(%rbp), %rax
.L329:
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L327
	movl	$-2, %eax
	jmp	.L325
.L327:
	cmpq	$1, -24(%rbp)
	jbe	.L330
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L330
	subq	$1, -24(%rbp)
.L330:
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movl	$2, %r8d
	movq	%rax, %rdi
	call	do_x509_check
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	X509_check_host, .-X509_check_host
	.globl	X509_check_email
	.type	X509_check_email, @function
X509_check_email:
.LFB732:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L332
	movl	$-2, %eax
	jmp	.L333
.L332:
	cmpq	$0, -24(%rbp)
	jne	.L334
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	jmp	.L335
.L334:
	cmpq	$1, -24(%rbp)
	jbe	.L336
	movq	-24(%rbp), %rax
	subq	$1, %rax
	jmp	.L337
.L336:
	movq	-24(%rbp), %rax
.L337:
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L335
	movl	$-2, %eax
	jmp	.L333
.L335:
	cmpq	$1, -24(%rbp)
	jbe	.L338
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L338
	subq	$1, -24(%rbp)
.L338:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	do_x509_check
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	X509_check_email, .-X509_check_email
	.globl	X509_check_ip
	.type	X509_check_ip, @function
X509_check_ip:
.LFB733:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L340
	movl	$-2, %eax
	jmp	.L341
.L340:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$7, %r8d
	movq	%rax, %rdi
	call	do_x509_check
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	X509_check_ip, .-X509_check_ip
	.globl	X509_check_ip_asc
	.type	X509_check_ip_asc, @function
X509_check_ip_asc:
.LFB734:
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
	cmpq	$0, -48(%rbp)
	jne	.L343
	movl	$-2, %eax
	jmp	.L346
.L343:
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_a2i_ipadd@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L345
	movl	$-2, %eax
	jmp	.L346
.L345:
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$7, %r8d
	movq	%rax, %rdi
	call	do_x509_check
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	X509_check_ip_asc, .-X509_check_ip_asc
	.section	.rodata
.LC18:
	.string	"%d.%d.%d.%d"
.LC19:
	.string	"%X:"
.LC20:
	.string	"%X"
.LC21:
	.string	"<invalid length=%d>"
	.text
	.globl	ossl_ipaddr_to_asc
	.type	ossl_ipaddr_to_asc, @function
ossl_ipaddr_to_asc:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$4, -92(%rbp)
	je	.L348
	cmpl	$16, -92(%rbp)
	je	.L349
	jmp	.L358
.L348:
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r8d
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edi
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC18(%rip), %rsi
	leaq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	jmp	.L351
.L349:
	leaq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$8, -12(%rbp)
	movl	$40, -16(%rbp)
	jmp	.L352
.L356:
	cmpl	$0, -12(%rbp)
	jle	.L353
	leaq	.LC19(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L354
.L353:
	leaq	.LC20(%rip), %rax
	movq	%rax, -32(%rbp)
.L354:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-16(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -20(%rbp)
	addq	$2, -88(%rbp)
	movl	-20(%rbp), %eax
	subl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
.L352:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	jle	.L359
	cmpl	$0, -20(%rbp)
	jns	.L356
	jmp	.L359
.L358:
	movl	-92(%rbp), %edx
	leaq	.LC21(%rip), %rsi
	leaq	-80(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L351
.L359:
	nop
.L351:
	leaq	.LC0(%rip), %rcx
	leaq	-80(%rbp), %rax
	movl	$1093, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ossl_ipaddr_to_asc, .-ossl_ipaddr_to_asc
	.globl	a2i_IPADDRESS
	.type	a2i_IPADDRESS, @function
a2i_IPADDRESS:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_a2i_ipadd@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L361
	movl	$0, %eax
	jmp	.L365
.L361:
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L363
	movl	$0, %eax
	jmp	.L365
.L363:
	movl	-4(%rbp), %edx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L364
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
	jmp	.L365
.L364:
	movq	-16(%rbp), %rax
.L365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	a2i_IPADDRESS, .-a2i_IPADDRESS
	.globl	a2i_IPADDRESS_NC
	.type	a2i_IPADDRESS_NC, @function
a2i_IPADDRESS_NC:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L367
	movl	$0, %eax
	jmp	.L376
.L367:
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$1134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L369
	movl	$0, %eax
	jmp	.L376
.L369:
	movq	-24(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_a2i_ipadd@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L377
	movl	-28(%rbp), %eax
	cltq
	leaq	-64(%rbp), %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_a2i_ipadd@PLT
	movl	%eax, -32(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -16(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L378
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L378
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L379
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	leaq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L380
	movq	-8(%rbp), %rax
	jmp	.L376
.L377:
	nop
	jmp	.L371
.L378:
	nop
	jmp	.L371
.L379:
	nop
	jmp	.L371
.L380:
	nop
.L371:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
.L376:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	a2i_IPADDRESS_NC, .-a2i_IPADDRESS_NC
	.globl	ossl_a2i_ipadd
	.type	ossl_a2i_ipadd, @function
ossl_a2i_ipadd:
.LFB738:
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
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L382
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ipv6_from_asc
	testl	%eax, %eax
	jne	.L383
	movl	$0, %eax
	jmp	.L384
.L383:
	movl	$16, %eax
	jmp	.L384
.L382:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ipv4_from_asc
	testl	%eax, %eax
	jne	.L385
	movl	$0, %eax
	jmp	.L384
.L385:
	movl	$4, %eax
.L384:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_a2i_ipadd, .-ossl_a2i_ipadd
	.section	.rodata
.LC22:
	.string	"%d.%d.%d.%d%n"
	.text
	.type	ipv4_from_asc, @function
ipv4_from_asc:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-24(%rbp), %r9
	leaq	-20(%rbp), %r8
	leaq	-16(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	.LC22(%rip), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	leaq	-28(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	addq	$16, %rsp
	cmpl	$4, %eax
	je	.L387
	movl	$0, %eax
	jmp	.L392
.L387:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	js	.L389
	movl	-12(%rbp), %eax
	cmpl	$255, %eax
	jg	.L389
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	js	.L389
	movl	-16(%rbp), %eax
	cmpl	$255, %eax
	jg	.L389
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	js	.L389
	movl	-20(%rbp), %eax
	cmpl	$255, %eax
	jg	.L389
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	js	.L389
	movl	-24(%rbp), %eax
	cmpl	$255, %eax
	jle	.L390
.L389:
	movl	$0, %eax
	jmp	.L392
.L390:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L391
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L391
	movl	$0, %eax
	jmp	.L392
.L391:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movl	$1, %eax
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ipv4_from_asc, .-ipv4_from_asc
	.type	ipv6_from_asc, @function
ipv6_from_asc:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -16(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -8(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	ipv6_cb(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$58, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	jne	.L394
	movl	$0, %eax
	jmp	.L405
.L394:
	movl	-12(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L396
	movl	-16(%rbp), %eax
	cmpl	$16, %eax
	je	.L397
	movl	$0, %eax
	jmp	.L405
.L396:
	movl	-16(%rbp), %eax
	cmpl	$16, %eax
	jne	.L398
	movl	$0, %eax
	jmp	.L405
.L398:
	movl	-8(%rbp), %eax
	cmpl	$3, %eax
	jle	.L399
	movl	$0, %eax
	jmp	.L405
.L399:
	movl	-8(%rbp), %eax
	cmpl	$3, %eax
	jne	.L400
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jle	.L397
	movl	$0, %eax
	jmp	.L405
.L400:
	movl	-8(%rbp), %eax
	cmpl	$2, %eax
	jne	.L401
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L397
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	je	.L397
	movl	$0, %eax
	jmp	.L405
.L401:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L402
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L397
.L402:
	movl	$0, %eax
	jmp	.L405
.L397:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	js	.L403
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-16(%rbp), %eax
	movl	$16, %edx
	subl	%eax, %edx
	movslq	%edx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	cmpl	%eax, %edx
	je	.L404
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-32(%rbp), %rcx
	leaq	(%rcx,%rdx), %rsi
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rcx
	addq	$16, %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	jmp	.L404
.L403:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L404:
	movl	$1, %eax
.L405:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ipv6_from_asc, .-ipv6_from_asc
	.type	ipv6_cb, @function
ipv6_cb:
.LFB741:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$16, %eax
	jne	.L407
	movl	$0, %eax
	jmp	.L408
.L407:
	cmpl	$0, -28(%rbp)
	jne	.L409
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$-1, %eax
	jne	.L410
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L411
.L410:
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	je	.L411
	movl	$0, %eax
	jmp	.L408
.L411:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L412
.L409:
	cmpl	$4, -28(%rbp)
	jle	.L413
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$12, %eax
	jle	.L414
	movl	$0, %eax
	jmp	.L408
.L414:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L415
	movl	$0, %eax
	jmp	.L408
.L415:
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ipv4_from_asc
	testl	%eax, %eax
	jne	.L416
	movl	$0, %eax
	jmp	.L408
.L416:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L412
.L413:
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ipv6_hex
	testl	%eax, %eax
	jne	.L417
	movl	$0, %eax
	jmp	.L408
.L417:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	2(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
.L412:
	movl	$1, %eax
.L408:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ipv6_cb, .-ipv6_cb
	.type	ipv6_hex, @function
ipv6_hex:
.LFB742:
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
	movl	$0, -4(%rbp)
	cmpl	$4, -36(%rbp)
	jle	.L421
	movl	$0, %eax
	jmp	.L420
.L423:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	sall	$4, -4(%rbp)
	movzbl	-5(%rbp), %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L422
	movl	$0, %eax
	jmp	.L420
.L422:
	movl	-12(%rbp), %eax
	movsbl	%al, %eax
	orl	%eax, -4(%rbp)
.L421:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -36(%rbp)
	testl	%eax, %eax
	jne	.L423
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	movl	$1, %eax
.L420:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ipv6_hex, .-ipv6_hex
	.globl	X509V3_NAME_from_section
	.type	X509V3_NAME_from_section, @function
X509V3_NAME_from_section:
.LFB743:
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
	cmpq	$0, -56(%rbp)
	jne	.L425
	movl	$0, %eax
	jmp	.L426
.L425:
	movl	$0, -4(%rbp)
	jmp	.L427
.L439:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L428
.L435:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L429
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L429
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L430
.L429:
	movl	$1, %eax
	jmp	.L431
.L430:
	movl	$0, %eax
.L431:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L432
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L440
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L440
.L432:
	addq	$1, -16(%rbp)
.L428:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L435
	jmp	.L434
.L440:
	nop
.L434:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L436
	movl	$-1, -8(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L437
.L436:
	movl	$0, -8(%rbp)
.L437:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	movl	-8(%rbp), %ecx
	pushq	%rcx
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L438
	movl	$0, %eax
	jmp	.L426
.L438:
	addl	$1, -4(%rbp)
.L427:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L439
	movl	$1, %eax
.L426:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	X509V3_NAME_from_section, .-X509V3_NAME_from_section
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 21
__func__.5:
	.string	"x509v3_add_len_value"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 20
__func__.4:
	.string	"i2s_ASN1_ENUMERATED"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"i2s_ASN1_INTEGER"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"s2i_ASN1_INTEGER"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"X509V3_get_value_bool"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"X509V3_parse_list"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

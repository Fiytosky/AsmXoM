	.file	"p12_kiss.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.type	ossl_check_const_PKCS7_sk_type, @function
ossl_check_const_PKCS7_sk_type:
.LFB487:
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
.LFE487:
	.size	ossl_check_const_PKCS7_sk_type, .-ossl_check_const_PKCS7_sk_type
	.type	ossl_check_PKCS7_sk_type, @function
ossl_check_PKCS7_sk_type:
.LFB488:
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
.LFE488:
	.size	ossl_check_PKCS7_sk_type, .-ossl_check_PKCS7_sk_type
	.type	ossl_check_PKCS7_freefunc_type, @function
ossl_check_PKCS7_freefunc_type:
.LFB491:
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
.LFE491:
	.size	ossl_check_PKCS7_freefunc_type, .-ossl_check_PKCS7_freefunc_type
	.type	ossl_check_const_PKCS12_SAFEBAG_sk_type, @function
ossl_check_const_PKCS12_SAFEBAG_sk_type:
.LFB510:
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
.LFE510:
	.size	ossl_check_const_PKCS12_SAFEBAG_sk_type, .-ossl_check_const_PKCS12_SAFEBAG_sk_type
	.type	ossl_check_PKCS12_SAFEBAG_sk_type, @function
ossl_check_PKCS12_SAFEBAG_sk_type:
.LFB511:
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
.LFE511:
	.size	ossl_check_PKCS12_SAFEBAG_sk_type, .-ossl_check_PKCS12_SAFEBAG_sk_type
	.type	ossl_check_PKCS12_SAFEBAG_freefunc_type, @function
ossl_check_PKCS12_SAFEBAG_freefunc_type:
.LFB514:
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
.LFE514:
	.size	ossl_check_PKCS12_SAFEBAG_freefunc_type, .-ossl_check_PKCS12_SAFEBAG_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_kiss.c"
.LC1:
	.string	""
	.text
	.globl	PKCS12_parse
	.type	PKCS12_parse, @function
PKCS12_parse:
.LFB520:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L28
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L28:
	cmpq	$0, -64(%rbp)
	je	.L29
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L29:
	cmpq	$0, -40(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_mac_present@PLT
	testl	%eax, %eax
	je	.L32
	cmpq	$0, -48(%rbp)
	je	.L33
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L34
.L33:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	je	.L35
	movq	$0, -48(%rbp)
	jmp	.L40
.L35:
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC1(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L40
.L37:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L34:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$71, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L32:
	cmpq	$0, -48(%rbp)
	je	.L41
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
.L41:
	movq	$0, -48(%rbp)
.L40:
	cmpq	$0, -64(%rbp)
	jne	.L42
	cmpq	$0, -72(%rbp)
	je	.L43
.L42:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L43:
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	parse_pk12
	testl	%eax, %eax
	jne	.L46
	call	ERR_peek_last_error@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$6, %eax
	je	.L53
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$156, %eax
	je	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L53
.L50:
	cmpq	$0, -56(%rbp)
	je	.L47
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	cmpq	$0, -64(%rbp)
	je	.L47
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	call	ERR_set_mark@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	movl	%eax, -20(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -20(%rbp)
	je	.L47
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L46
.L47:
	cmpq	$0, -72(%rbp)
	je	.L48
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	je	.L54
	jmp	.L46
.L48:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L50
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$1, %eax
	jmp	.L31
.L53:
	nop
	jmp	.L38
.L54:
	nop
.L38:
	cmpq	$0, -56(%rbp)
	je	.L51
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L51:
	cmpq	$0, -64(%rbp)
	je	.L52
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L52:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_parse, .-PKCS12_parse
	.type	parse_pk12, @function
parse_pk12:
.LFB521:
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
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_authsafes@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	$0, -28(%rbp)
	jmp	.L58
.L65:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -52(%rbp)
	cmpl	$21, -52(%rbp)
	jne	.L59
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_p7data@PLT
	movq	%rax, -24(%rbp)
	jmp	.L60
.L59:
	cmpl	$26, -52(%rbp)
	jne	.L66
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_unpack_p7encdata@PLT
	movq	%rax, -24(%rbp)
.L60:
	cmpq	$0, -24(%rbp)
	jne	.L63
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L57
.L63:
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	40(%rax), %r9
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	parse_bags
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L64
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L57
.L64:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L62
.L66:
	nop
.L62:
	addl	$1, -28(%rbp)
.L58:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L65
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$1, %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	parse_pk12, .-parse_pk12
	.type	parse_bags, @function
parse_bags:
.LFB522:
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
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L68
.L71:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	parse_bag
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	addl	$1, -4(%rbp)
.L68:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L71
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	parse_bags, .-parse_bags
	.type	parse_bag, @function
parse_bag:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L73
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L73:
	movq	-88(%rbp), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L74
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L74:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$155, %eax
	je	.L75
	cmpl	$155, %eax
	jg	.L76
	cmpl	$152, %eax
	je	.L77
	cmpl	$152, %eax
	jg	.L76
	cmpl	$150, %eax
	je	.L78
	cmpl	$151, %eax
	je	.L79
	jmp	.L76
.L78:
	cmpq	$0, -112(%rbp)
	je	.L80
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L81
.L80:
	movl	$1, %eax
	jmp	.L82
.L81:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_p8inf@PLT
	movq	%rax, %rcx
	movq	16(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKCS82PKEY_ex@PLT
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L96
	movl	$0, %eax
	jmp	.L82
.L79:
	cmpq	$0, -112(%rbp)
	je	.L85
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L86
.L85:
	movl	$1, %eax
	jmp	.L82
.L86:
	movq	16(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_decrypt_skey_ex@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L82
.L87:
	movq	16(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY_ex@PLT
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movl	$0, %eax
	jmp	.L82
.L77:
	cmpq	$0, -120(%rbp)
	je	.L89
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_bag_nid@PLT
	cmpl	$158, %eax
	je	.L90
.L89:
	movl	$1, %eax
	jmp	.L82
.L90:
	movq	16(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get1_cert_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L82
.L91:
	cmpq	$0, -32(%rbp)
	je	.L92
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_keyid_set1@PLT
	testl	%eax, %eax
	jne	.L92
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L82
.L92:
	cmpq	$0, -24(%rbp)
	je	.L93
	movq	-24(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_to_UTF8@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L93
	movq	-72(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_alias_set1@PLT
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$245, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -56(%rbp)
	jne	.L93
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L82
.L93:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L98
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L82
.L75:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_safes@PLT
	movq	%rax, %rdi
	movq	-128(%rbp), %r8
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rcx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	parse_bags
	addq	$16, %rsp
	jmp	.L82
.L76:
	movl	$1, %eax
	jmp	.L82
.L96:
	nop
	jmp	.L84
.L97:
	nop
	jmp	.L84
.L98:
	nop
.L84:
	movl	$1, %eax
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	parse_bag, .-parse_bag
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"PKCS12_parse"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

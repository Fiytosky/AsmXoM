	.file	"ameth_lib.c"
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
	.type	sk_EVP_PKEY_ASN1_METHOD_num, @function
sk_EVP_PKEY_ASN1_METHOD_num:
.LFB521:
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
.LFE521:
	.size	sk_EVP_PKEY_ASN1_METHOD_num, .-sk_EVP_PKEY_ASN1_METHOD_num
	.type	sk_EVP_PKEY_ASN1_METHOD_value, @function
sk_EVP_PKEY_ASN1_METHOD_value:
.LFB522:
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
.LFE522:
	.size	sk_EVP_PKEY_ASN1_METHOD_value, .-sk_EVP_PKEY_ASN1_METHOD_value
	.type	sk_EVP_PKEY_ASN1_METHOD_new, @function
sk_EVP_PKEY_ASN1_METHOD_new:
.LFB523:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	sk_EVP_PKEY_ASN1_METHOD_new, .-sk_EVP_PKEY_ASN1_METHOD_new
	.type	sk_EVP_PKEY_ASN1_METHOD_push, @function
sk_EVP_PKEY_ASN1_METHOD_push:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	sk_EVP_PKEY_ASN1_METHOD_push, .-sk_EVP_PKEY_ASN1_METHOD_push
	.type	sk_EVP_PKEY_ASN1_METHOD_find, @function
sk_EVP_PKEY_ASN1_METHOD_find:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	sk_EVP_PKEY_ASN1_METHOD_find, .-sk_EVP_PKEY_ASN1_METHOD_find
	.type	sk_EVP_PKEY_ASN1_METHOD_sort, @function
sk_EVP_PKEY_ASN1_METHOD_sort:
.LFB541:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	sk_EVP_PKEY_ASN1_METHOD_sort, .-sk_EVP_PKEY_ASN1_METHOD_sort
	.section	.data.rel,"aw"
	.align 32
	.type	standard_methods, @object
	.size	standard_methods, 128
standard_methods:
	.quad	ossl_rsa_asn1_meths
	.quad	ossl_rsa_asn1_meths+320
	.quad	ossl_dh_asn1_meth
	.quad	ossl_dsa_asn1_meths
	.quad	ossl_dsa_asn1_meths+320
	.quad	ossl_dsa_asn1_meths+640
	.quad	ossl_dsa_asn1_meths+960
	.quad	ossl_dsa_asn1_meths+1280
	.quad	ossl_eckey_asn1_meth
	.quad	ossl_rsa_pss_asn1_meth
	.quad	ossl_dhx_asn1_meth
	.quad	ossl_ecx25519_asn1_meth
	.quad	ossl_ecx448_asn1_meth
	.quad	ossl_ed25519_asn1_meth
	.quad	ossl_ed448_asn1_meth
	.quad	ossl_sm2_asn1_meth
	.local	app_methods
	.comm	app_methods,8,8
	.text
	.type	ameth_cmp, @function
ameth_cmp:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ameth_cmp, .-ameth_cmp
	.type	ameth_cmp_BSEARCH_CMP_FN, @function
ameth_cmp_BSEARCH_CMP_FN:
.LFB602:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ameth_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ameth_cmp_BSEARCH_CMP_FN, .-ameth_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_ameth, @function
OBJ_bsearch_ameth:
.LFB603:
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
	leaq	ameth_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	OBJ_bsearch_ameth, .-OBJ_bsearch_ameth
	.globl	EVP_PKEY_asn1_get_count
	.type	EVP_PKEY_asn1_get_count, @function
EVP_PKEY_asn1_get_count:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$16, -4(%rbp)
	movq	app_methods(%rip), %rax
	testq	%rax, %rax
	je	.L23
	movq	app_methods(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_num
	addl	%eax, -4(%rbp)
.L23:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	EVP_PKEY_asn1_get_count, .-EVP_PKEY_asn1_get_count
	.globl	EVP_PKEY_asn1_get0
	.type	EVP_PKEY_asn1_get0, @function
EVP_PKEY_asn1_get0:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$16, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L28
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	standard_methods(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L27
.L28:
	movl	-4(%rbp), %eax
	subl	%eax, -20(%rbp)
	movq	app_methods(%rip), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_value
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	EVP_PKEY_asn1_get0, .-EVP_PKEY_asn1_get0
	.type	pkey_asn1_find, @function
pkey_asn1_find:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movl	%edi, -356(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movl	-356(%rbp), %eax
	movl	%eax, -336(%rbp)
	movq	app_methods(%rip), %rax
	testq	%rax, %rax
	je	.L30
	movq	app_methods(%rip), %rax
	leaq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_find
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L30
	movq	app_methods(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_value
	jmp	.L34
.L30:
	leaq	standard_methods(%rip), %rcx
	leaq	-344(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_ameth
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L32
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	pkey_asn1_find, .-pkey_asn1_find
	.globl	EVP_PKEY_asn1_find
	.type	EVP_PKEY_asn1_find, @function
EVP_PKEY_asn1_find:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
.L37:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	pkey_asn1_find
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -28(%rbp)
	jmp	.L37
.L36:
	cmpq	$0, -24(%rbp)
	je	.L38
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ENGINE_get_pkey_asn1_meth_engine@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_get_pkey_asn1_meth@PLT
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L38:
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	EVP_PKEY_asn1_find, .-EVP_PKEY_asn1_find
	.globl	EVP_PKEY_asn1_find_str
	.type	EVP_PKEY_asn1_find_str, @function
EVP_PKEY_asn1_find_str:
.LFB608:
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
	movq	$0, -16(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.L42
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -52(%rbp)
.L42:
	cmpq	$0, -40(%rbp)
	je	.L43
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ENGINE_pkey_asn1_find_str@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L45
	movq	$0, -16(%rbp)
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L46
.L44:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L43:
	call	EVP_PKEY_asn1_get_count@PLT
	movl	%eax, -4(%rbp)
	jmp	.L47
.L49:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_asn1_get0@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L48
	jmp	.L47
.L48:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	%eax, -52(%rbp)
	jne	.L47
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-16(%rbp), %rax
	jmp	.L46
.L47:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jg	.L49
	movl	$0, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	EVP_PKEY_asn1_find_str, .-EVP_PKEY_asn1_find_str
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/ameth_lib.c"
	.text
	.globl	EVP_PKEY_asn1_add0
	.type	EVP_PKEY_asn1_add0, @function
EVP_PKEY_asn1_add0:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	leaq	-320(%rbp), %rdx
	movl	$0, %eax
	movl	$40, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-328(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L52
.L51:
	movq	-328(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L52
.L53:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$158, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L52:
	movq	app_methods(%rip), %rax
	testq	%rax, %rax
	jne	.L55
	leaq	ameth_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_new
	movq	%rax, app_methods(%rip)
	movq	app_methods(%rip), %rax
	testq	%rax, %rax
	jne	.L55
	movl	$0, %eax
	jmp	.L58
.L55:
	movq	-328(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -320(%rbp)
	movq	app_methods(%rip), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_find
	testl	%eax, %eax
	js	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L56:
	movq	app_methods(%rip), %rax
	movq	-328(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_push
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	app_methods(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PKEY_ASN1_METHOD_sort
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	EVP_PKEY_asn1_add0, .-EVP_PKEY_asn1_add0
	.globl	EVP_PKEY_asn1_add_alias
	.type	EVP_PKEY_asn1_add_alias, @function
EVP_PKEY_asn1_add_alias:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	EVP_PKEY_asn1_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_add0@PLT
	testl	%eax, %eax
	jne	.L62
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_free@PLT
	movl	$0, %eax
	jmp	.L61
.L62:
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	EVP_PKEY_asn1_add_alias, .-EVP_PKEY_asn1_add_alias
	.globl	EVP_PKEY_asn1_get0_info
	.type	EVP_PKEY_asn1_get0_info, @function
EVP_PKEY_asn1_get0_info:
.LFB611:
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
	movq	%r9, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	cmpq	$0, -8(%rbp)
	je	.L66
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L66:
	cmpq	$0, -16(%rbp)
	je	.L67
	movq	-48(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L67:
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L68:
	cmpq	$0, -32(%rbp)
	je	.L69
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L69:
	cmpq	$0, -40(%rbp)
	je	.L70
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L70:
	movl	$1, %eax
.L65:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	EVP_PKEY_asn1_get0_info, .-EVP_PKEY_asn1_get0_info
	.globl	EVP_PKEY_get0_asn1
	.type	EVP_PKEY_get0_asn1, @function
EVP_PKEY_get0_asn1:
.LFB612:
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
.LFE612:
	.size	EVP_PKEY_get0_asn1, .-EVP_PKEY_get0_asn1
	.globl	EVP_PKEY_asn1_new
	.type	EVP_PKEY_asn1_new, @function
EVP_PKEY_asn1_new:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$223, %edx
	movq	%rax, %rsi
	movl	$320, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	-24(%rbp), %eax
	orl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	cmpq	$0, -40(%rbp)
	je	.L76
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$233, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L79
.L76:
	cmpq	$0, -32(%rbp)
	je	.L78
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$239, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L80
.L78:
	movq	-8(%rbp), %rax
	jmp	.L75
.L79:
	nop
	jmp	.L77
.L80:
	nop
.L77:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_free@PLT
	movl	$0, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	EVP_PKEY_asn1_new, .-EVP_PKEY_asn1_new
	.globl	EVP_PKEY_asn1_copy
	.type	EVP_PKEY_asn1_copy, @function
EVP_PKEY_asn1_copy:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$40, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	EVP_PKEY_asn1_copy, .-EVP_PKEY_asn1_copy
	.globl	EVP_PKEY_asn1_free
	.type	EVP_PKEY_asn1_free, @function
EVP_PKEY_asn1_free:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L84
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$273, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$275, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L84:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	EVP_PKEY_asn1_free, .-EVP_PKEY_asn1_free
	.globl	EVP_PKEY_asn1_set_public
	.type	EVP_PKEY_asn1_set_public, @function
EVP_PKEY_asn1_set_public:
.LFB616:
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
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	EVP_PKEY_asn1_set_public, .-EVP_PKEY_asn1_set_public
	.globl	EVP_PKEY_asn1_set_private
	.type	EVP_PKEY_asn1_set_private, @function
EVP_PKEY_asn1_set_private:
.LFB617:
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
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	EVP_PKEY_asn1_set_private, .-EVP_PKEY_asn1_set_private
	.globl	EVP_PKEY_asn1_set_param
	.type	EVP_PKEY_asn1_set_param, @function
EVP_PKEY_asn1_set_param:
.LFB618:
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
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 152(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	EVP_PKEY_asn1_set_param, .-EVP_PKEY_asn1_set_param
	.globl	EVP_PKEY_asn1_set_free
	.type	EVP_PKEY_asn1_set_free, @function
EVP_PKEY_asn1_set_free:
.LFB619:
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
	movq	%rdx, 168(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	EVP_PKEY_asn1_set_free, .-EVP_PKEY_asn1_set_free
	.globl	EVP_PKEY_asn1_set_ctrl
	.type	EVP_PKEY_asn1_set_ctrl, @function
EVP_PKEY_asn1_set_ctrl:
.LFB620:
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
	movq	%rdx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	EVP_PKEY_asn1_set_ctrl, .-EVP_PKEY_asn1_set_ctrl
	.globl	EVP_PKEY_asn1_set_security_bits
	.type	EVP_PKEY_asn1_set_security_bits, @function
EVP_PKEY_asn1_set_security_bits:
.LFB621:
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
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	EVP_PKEY_asn1_set_security_bits, .-EVP_PKEY_asn1_set_security_bits
	.globl	EVP_PKEY_asn1_set_item
	.type	EVP_PKEY_asn1_set_item, @function
EVP_PKEY_asn1_set_item:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 200(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	EVP_PKEY_asn1_set_item, .-EVP_PKEY_asn1_set_item
	.globl	EVP_PKEY_asn1_set_siginf
	.type	EVP_PKEY_asn1_set_siginf, @function
EVP_PKEY_asn1_set_siginf:
.LFB623:
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
	movq	%rdx, 216(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	EVP_PKEY_asn1_set_siginf, .-EVP_PKEY_asn1_set_siginf
	.globl	EVP_PKEY_asn1_set_check
	.type	EVP_PKEY_asn1_set_check, @function
EVP_PKEY_asn1_set_check:
.LFB624:
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
	movq	%rdx, 224(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	EVP_PKEY_asn1_set_check, .-EVP_PKEY_asn1_set_check
	.globl	EVP_PKEY_asn1_set_public_check
	.type	EVP_PKEY_asn1_set_public_check, @function
EVP_PKEY_asn1_set_public_check:
.LFB625:
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
	movq	%rdx, 232(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	EVP_PKEY_asn1_set_public_check, .-EVP_PKEY_asn1_set_public_check
	.globl	EVP_PKEY_asn1_set_param_check
	.type	EVP_PKEY_asn1_set_param_check, @function
EVP_PKEY_asn1_set_param_check:
.LFB626:
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
.LFE626:
	.size	EVP_PKEY_asn1_set_param_check, .-EVP_PKEY_asn1_set_param_check
	.globl	EVP_PKEY_asn1_set_set_priv_key
	.type	EVP_PKEY_asn1_set_set_priv_key, @function
EVP_PKEY_asn1_set_set_priv_key:
.LFB627:
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
	movq	%rdx, 248(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	EVP_PKEY_asn1_set_set_priv_key, .-EVP_PKEY_asn1_set_set_priv_key
	.globl	EVP_PKEY_asn1_set_set_pub_key
	.type	EVP_PKEY_asn1_set_set_pub_key, @function
EVP_PKEY_asn1_set_set_pub_key:
.LFB628:
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
.LFE628:
	.size	EVP_PKEY_asn1_set_set_pub_key, .-EVP_PKEY_asn1_set_set_pub_key
	.globl	EVP_PKEY_asn1_set_get_priv_key
	.type	EVP_PKEY_asn1_set_get_priv_key, @function
EVP_PKEY_asn1_set_get_priv_key:
.LFB629:
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
	movq	%rdx, 264(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	EVP_PKEY_asn1_set_get_priv_key, .-EVP_PKEY_asn1_set_get_priv_key
	.globl	EVP_PKEY_asn1_set_get_pub_key
	.type	EVP_PKEY_asn1_set_get_pub_key, @function
EVP_PKEY_asn1_set_get_pub_key:
.LFB630:
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
	movq	%rdx, 272(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	EVP_PKEY_asn1_set_get_pub_key, .-EVP_PKEY_asn1_set_get_pub_key
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"EVP_PKEY_asn1_add0"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

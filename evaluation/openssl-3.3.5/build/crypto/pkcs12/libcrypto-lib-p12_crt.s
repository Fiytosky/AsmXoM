	.file	"p12_crt.c"
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
	.type	ossl_check_PKCS7_type, @function
ossl_check_PKCS7_type:
.LFB486:
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
.LFE486:
	.size	ossl_check_PKCS7_type, .-ossl_check_PKCS7_type
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
	.type	ossl_check_PKCS12_SAFEBAG_type, @function
ossl_check_PKCS12_SAFEBAG_type:
.LFB509:
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
.LFE509:
	.size	ossl_check_PKCS12_SAFEBAG_type, .-ossl_check_PKCS12_SAFEBAG_type
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
	.type	copy_bag_attr, @function
copy_bag_attr:
.LFB515:
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
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_get_attr_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_get_attr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509at_add1_attr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	copy_bag_attr, .-copy_bag_attr
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_crt.c"
	.text
	.globl	PKCS12_create_ex2
	.type	PKCS12_create_ex2, @function
PKCS12_create_ex2:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movl	%r9d, -204(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -148(%rbp)
	movl	$-1, -152(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -156(%rbp)
	cmpl	$0, 16(%rbp)
	jne	.L23
	movl	$427, 16(%rbp)
.L23:
	cmpl	$0, -204(%rbp)
	jne	.L24
	movl	$427, -204(%rbp)
.L24:
	cmpl	$0, 24(%rbp)
	jne	.L25
	movl	$2048, 24(%rbp)
.L25:
	cmpl	$0, 32(%rbp)
	jne	.L26
	movl	$2048, 32(%rbp)
.L26:
	cmpq	$0, -184(%rbp)
	jne	.L27
	cmpq	$0, -192(%rbp)
	jne	.L27
	cmpq	$0, -200(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L27:
	cmpq	$0, -184(%rbp)
	je	.L29
	cmpq	$0, -192(%rbp)
	je	.L29
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L53
.L30:
	call	EVP_sha1@PLT
	movq	%rax, %rsi
	leaq	-148(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_digest@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L53
.L29:
	cmpq	$0, -192(%rbp)
	je	.L31
	cmpq	$0, -176(%rbp)
	jne	.L32
	leaq	-152(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_alias_get0@PLT
	movq	%rax, -176(%rbp)
.L32:
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	je	.L33
	leaq	-144(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -156(%rbp)
	jmp	.L34
.L33:
	leaq	-156(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_keyid_get0@PLT
	movq	%rax, -40(%rbp)
.L34:
	movl	-156(%rbp), %r8d
	movl	-152(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movq	-176(%rbp), %rdx
	movq	-192(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs12_add_cert_bag
	movq	%rax, -48(%rbp)
	cmpq	$0, 64(%rbp)
	je	.L31
	movq	72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L35:
	cmpl	$0, -52(%rbp)
	jne	.L31
	movq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs12_remove_bag
.L31:
	movl	$0, -28(%rbp)
	jmp	.L37
.L41:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_cert@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L54
	cmpq	$0, 64(%rbp)
	je	.L39
	movq	72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L40:
	cmpl	$0, -52(%rbp)
	jne	.L39
	movq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs12_remove_bag
.L39:
	addl	$1, -28(%rbp)
.L37:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L41
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L42
	movq	-72(%rbp), %rsi
	movq	48(%rbp), %r8
	movq	-168(%rbp), %rdi
	movl	24(%rbp), %ecx
	movl	16(%rbp), %edx
	leaq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_add_safe_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L55
.L42:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -72(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L43
	movq	-168(%rbp), %r8
	movl	-204(%rbp), %edi
	movl	24(%rbp), %ecx
	movl	40(%rbp), %edx
	movq	-184(%rbp), %rsi
	leaq	-72(%rbp), %rax
	pushq	56(%rbp)
	pushq	48(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS12_add_key_ex@PLT
	addq	$16, %rsp
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L56
	movq	-184(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$417, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_bag_attr
	testl	%eax, %eax
	je	.L57
	movq	-184(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$856, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_bag_attr
	testl	%eax, %eax
	je	.L58
	cmpq	$0, -176(%rbp)
	je	.L47
	movq	-176(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_friendlyname_utf8@PLT
	testl	%eax, %eax
	je	.L59
.L47:
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	je	.L48
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_localkeyid@PLT
	testl	%eax, %eax
	je	.L60
.L48:
	cmpq	$0, 64(%rbp)
	je	.L43
	movq	72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L49:
	cmpl	$0, -52(%rbp)
	jne	.L43
	movq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs12_remove_bag
.L43:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L50
	movq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	PKCS12_add_safe@PLT
	testl	%eax, %eax
	je	.L61
.L50:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	56(%rbp), %rcx
	movq	48(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS12_add_safes_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L62
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -64(%rbp)
	cmpl	$-1, 32(%rbp)
	je	.L52
	movl	32(%rbp), %edx
	movq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	PKCS12_set_mac@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L63
.L52:
	movq	-24(%rbp), %rax
	jmp	.L53
.L54:
	nop
	jmp	.L36
.L55:
	nop
	jmp	.L36
.L56:
	nop
	jmp	.L36
.L57:
	nop
	jmp	.L36
.L58:
	nop
	jmp	.L36
.L59:
	nop
	jmp	.L36
.L60:
	nop
	jmp	.L36
.L61:
	nop
	jmp	.L36
.L62:
	nop
	jmp	.L36
.L63:
	nop
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L53:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PKCS12_create_ex2, .-PKCS12_create_ex2
	.globl	PKCS12_create_ex
	.type	PKCS12_create_ex, @function
PKCS12_create_ex:
.LFB517:
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
	movl	%r9d, -44(%rbp)
	movl	-44(%rbp), %r9d
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	56(%rbp)
	pushq	48(%rbp)
	movl	40(%rbp), %edi
	pushq	%rdi
	movl	32(%rbp), %edi
	pushq	%rdi
	movl	24(%rbp), %edi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_create_ex2@PLT
	addq	$64, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PKCS12_create_ex, .-PKCS12_create_ex
	.globl	PKCS12_create
	.type	PKCS12_create, @function
PKCS12_create:
.LFB518:
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
	movl	%r9d, -44(%rbp)
	movl	-44(%rbp), %r9d
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	40(%rbp), %edi
	pushq	%rdi
	movl	32(%rbp), %edi
	pushq	%rdi
	movl	24(%rbp), %edi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_create_ex@PLT
	addq	$48, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PKCS12_create, .-PKCS12_create
	.type	pkcs12_add_cert_bag, @function
pkcs12_add_cert_bag:
.LFB519:
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
	movl	%r9d, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_create_cert@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
	cmpq	$0, -40(%rbp)
	je	.L71
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_friendlyname_utf8@PLT
	testl	%eax, %eax
	je	.L76
.L71:
	cmpq	$0, -56(%rbp)
	je	.L72
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_add_localkeyid@PLT
	testl	%eax, %eax
	je	.L77
.L72:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs12_add_bag
	testl	%eax, %eax
	je	.L78
	movq	-8(%rbp), %rax
	jmp	.L74
.L75:
	nop
	jmp	.L70
.L76:
	nop
	jmp	.L70
.L77:
	nop
	jmp	.L70
.L78:
	nop
.L70:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_free@PLT
	movl	$0, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	pkcs12_add_cert_bag, .-pkcs12_add_cert_bag
	.globl	PKCS12_add_cert
	.type	PKCS12_add_cert, @function
PKCS12_add_cert:
.LFB520:
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
	movl	$-1, -20(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -24(%rbp)
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_alias_get0@PLT
	movq	%rax, -8(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_keyid_get0@PLT
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %r8d
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs12_add_cert_bag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_add_cert, .-PKCS12_add_cert
	.globl	PKCS12_add_key_ex
	.type	PKCS12_add_key_ex, @function
PKCS12_add_key_ex:
.LFB521:
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
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY2PKCS8@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L91
	cmpl	$0, -36(%rbp)
	je	.L84
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PKCS8_add_keyusage@PLT
	testl	%eax, %eax
	jne	.L84
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	jmp	.L83
.L84:
	cmpl	$-1, -44(%rbp)
	je	.L85
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %eax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-16(%rbp)
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	%eax, %edi
	call	PKCS12_SAFEBAG_create_pkcs8_encrypt_ex@PLT
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	jmp	.L86
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_create0_p8inf@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L86
	movq	$0, -16(%rbp)
.L86:
	cmpq	$0, -16(%rbp)
	je	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
.L87:
	cmpq	$0, -8(%rbp)
	je	.L92
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs12_add_bag
	testl	%eax, %eax
	je	.L92
	movq	-8(%rbp), %rax
	jmp	.L90
.L91:
	nop
	jmp	.L83
.L92:
	nop
.L83:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_free@PLT
	movl	$0, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS12_add_key_ex, .-PKCS12_add_key_ex
	.globl	PKCS12_add_key
	.type	PKCS12_add_key, @function
PKCS12_add_key:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %r8
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS12_add_key_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS12_add_key, .-PKCS12_add_key
	.globl	PKCS12_add_secret
	.type	PKCS12_add_secret, @function
PKCS12_add_secret:
.LFB523:
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
	movl	%ecx, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	PKCS12_SAFEBAG_create_secret@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L100
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs12_add_bag
	testl	%eax, %eax
	je	.L101
	movq	-8(%rbp), %rax
	jmp	.L99
.L100:
	nop
	jmp	.L97
.L101:
	nop
.L97:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_free@PLT
	movl	$0, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PKCS12_add_secret, .-PKCS12_add_secret
	.globl	PKCS12_add_safe_ex
	.type	PKCS12_add_safe_ex, @function
PKCS12_add_safe_ex:
.LFB524:
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
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	movl	$0, %eax
	jmp	.L105
.L104:
	movl	$1, -28(%rbp)
.L103:
	cmpl	$0, -52(%rbp)
	jne	.L106
	movl	$149, -52(%rbp)
.L106:
	cmpl	$-1, -52(%rbp)
	jne	.L107
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_pack_p7data@PLT
	movq	%rax, -24(%rbp)
	jmp	.L108
.L107:
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-72(%rbp)
	pushq	-48(%rbp)
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	%eax, %edi
	call	PKCS12_pack_p7encdata_ex@PLT
	addq	$32, %rsp
	movq	%rax, -24(%rbp)
.L108:
	cmpq	$0, -24(%rbp)
	je	.L113
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L114
	movl	$1, %eax
	jmp	.L105
.L113:
	nop
	jmp	.L110
.L114:
	nop
.L110:
	cmpl	$0, -28(%rbp)
	je	.L112
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L112:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	$0, %eax
.L105:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS12_add_safe_ex, .-PKCS12_add_safe_ex
	.globl	PKCS12_add_safe
	.type	PKCS12_add_safe, @function
PKCS12_add_safe:
.LFB525:
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
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_add_safe_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PKCS12_add_safe, .-PKCS12_add_safe
	.type	pkcs12_remove_bag, @function
pkcs12_remove_bag:
.LFB526:
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
	cmpq	$0, -40(%rbp)
	je	.L118
	cmpq	$0, -48(%rbp)
	jne	.L119
.L118:
	movl	$1, %eax
	jmp	.L120
.L119:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_delete_ptr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L121
	movl	$0, %eax
	jmp	.L120
.L121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_free@PLT
	movl	$1, %eax
.L120:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	pkcs12_remove_bag, .-pkcs12_remove_bag
	.type	pkcs12_add_bag, @function
pkcs12_add_bag:
.LFB527:
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
	movl	$0, -20(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L123
	movl	$1, %eax
	jmp	.L124
.L123:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L126
	movl	$0, %eax
	jmp	.L124
.L126:
	movl	$1, -20(%rbp)
.L125:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L127
	cmpl	$0, -20(%rbp)
	je	.L128
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L128:
	movl	$0, %eax
	jmp	.L124
.L127:
	movl	$1, %eax
.L124:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	pkcs12_add_bag, .-pkcs12_add_bag
	.globl	PKCS12_add_safes_ex
	.type	PKCS12_add_safes_ex, @function
PKCS12_add_safes_ex:
.LFB528:
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
	cmpl	$0, -28(%rbp)
	jg	.L130
	movl	$21, -28(%rbp)
.L130:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	PKCS12_init_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS12_pack_authsafes@PLT
	testl	%eax, %eax
	jne	.L133
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movl	$0, %eax
	jmp	.L132
.L133:
	movq	-8(%rbp), %rax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	PKCS12_add_safes_ex, .-PKCS12_add_safes_ex
	.globl	PKCS12_add_safes
	.type	PKCS12_add_safes, @function
PKCS12_add_safes:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS12_add_safes_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PKCS12_add_safes, .-PKCS12_add_safes
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"PKCS12_create_ex2"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

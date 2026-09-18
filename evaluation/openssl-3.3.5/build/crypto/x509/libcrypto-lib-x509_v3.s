	.file	"x509_v3.c"
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
	.type	ossl_check_X509_EXTENSION_type, @function
ossl_check_X509_EXTENSION_type:
.LFB432:
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
.LFE432:
	.size	ossl_check_X509_EXTENSION_type, .-ossl_check_X509_EXTENSION_type
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
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB434:
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
.LFE434:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.globl	X509v3_get_ext_count
	.type	X509v3_get_ext_count, @function
X509v3_get_ext_count:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	X509v3_get_ext_count, .-X509v3_get_ext_count
	.globl	X509v3_get_ext_by_NID
	.type	X509v3_get_ext_by_NID, @function
X509v3_get_ext_by_NID:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$-2, %eax
	jmp	.L16
.L15:
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	X509v3_get_ext_by_NID, .-X509v3_get_ext_by_NID
	.globl	X509v3_get_ext_by_OBJ
	.type	X509v3_get_ext_by_OBJ, @function
X509v3_get_ext_by_OBJ:
.LFB699:
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
	cmpq	$0, -24(%rbp)
	jne	.L18
	movl	$-1, %eax
	jmp	.L19
.L18:
	addl	$1, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L20
	movl	$0, -36(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	jmp	.L21
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L22
	movl	-36(%rbp), %eax
	jmp	.L19
.L22:
	addl	$1, -36(%rbp)
.L21:
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L23
	movl	$-1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	X509v3_get_ext_by_OBJ, .-X509v3_get_ext_by_OBJ
	.globl	X509v3_get_ext_by_critical
	.type	X509v3_get_ext_by_critical, @function
X509v3_get_ext_by_critical:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L25
	movl	$-1, %eax
	jmp	.L26
.L25:
	addl	$1, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jns	.L27
	movl	$0, -32(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	jmp	.L28
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L29
	cmpl	$0, -28(%rbp)
	jne	.L30
.L29:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jg	.L31
	cmpl	$0, -28(%rbp)
	jne	.L31
.L30:
	movl	-32(%rbp), %eax
	jmp	.L26
.L31:
	addl	$1, -32(%rbp)
.L28:
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L32
	movl	$-1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	X509v3_get_ext_by_critical, .-X509v3_get_ext_by_critical
	.globl	X509v3_get_ext
	.type	X509v3_get_ext, @function
X509v3_get_ext:
.LFB701:
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
	je	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jge	.L34
	cmpl	$0, -12(%rbp)
	jns	.L35
.L34:
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	X509v3_get_ext, .-X509v3_get_ext
	.globl	X509v3_delete_ext
	.type	X509v3_delete_ext, @function
X509v3_delete_ext:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jge	.L38
	cmpl	$0, -28(%rbp)
	jns	.L39
.L38:
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_delete@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	X509v3_delete_ext, .-X509v3_delete_ext
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509_v3.c"
	.text
	.globl	X509v3_add_ext
	.type	X509v3_add_ext, @function
X509v3_add_ext:
.LFB703:
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
	movl	%edx, -68(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L43
.L42:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L43
.L44:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L45:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -36(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L46
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.L47
.L46:
	cmpl	$0, -68(%rbp)
	jns	.L47
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
.L47:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L43
.L48:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rcx
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$130, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L43
.L49:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L50:
	movq	-32(%rbp), %rax
	jmp	.L51
.L43:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	cmpq	$0, -56(%rbp)
	je	.L52
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L52:
	movl	$0, %eax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	X509v3_add_ext, .-X509v3_add_ext
	.globl	X509_EXTENSION_create_by_NID
	.type	X509_EXTENSION_create_by_NID, @function
X509_EXTENSION_create_by_NID:
.LFB704:
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
	movq	%rcx, -40(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_create_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L56
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
.L56:
	movq	-16(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	X509_EXTENSION_create_by_NID, .-X509_EXTENSION_create_by_NID
	.globl	X509_EXTENSION_create_by_OBJ
	.type	X509_EXTENSION_create_by_OBJ, @function
X509_EXTENSION_create_by_OBJ:
.LFB705:
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
	cmpq	$0, -24(%rbp)
	je	.L58
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L59
.L58:
	call	X509_EXTENSION_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L59:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L62:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_object@PLT
	testl	%eax, %eax
	je	.L70
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_critical@PLT
	testl	%eax, %eax
	je	.L71
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_EXTENSION_set_data@PLT
	testl	%eax, %eax
	je	.L72
	cmpq	$0, -24(%rbp)
	je	.L67
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L67:
	movq	-8(%rbp), %rax
	jmp	.L61
.L70:
	nop
	jmp	.L64
.L71:
	nop
	jmp	.L64
.L72:
	nop
.L64:
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L69
.L68:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
.L69:
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	X509_EXTENSION_create_by_OBJ, .-X509_EXTENSION_create_by_OBJ
	.globl	X509_EXTENSION_set_object
	.type	X509_EXTENSION_set_object, @function
X509_EXTENSION_set_object:
.LFB706:
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
	je	.L74
	cmpq	$0, -16(%rbp)
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	X509_EXTENSION_set_object, .-X509_EXTENSION_set_object
	.globl	X509_EXTENSION_set_critical
	.type	X509_EXTENSION_set_critical, @function
X509_EXTENSION_set_critical:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	cmpl	$0, -12(%rbp)
	je	.L80
	movl	$255, %edx
	jmp	.L81
.L80:
	movl	$-1, %edx
.L81:
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L79:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	X509_EXTENSION_set_critical, .-X509_EXTENSION_set_critical
	.globl	X509_EXTENSION_set_data
	.type	X509_EXTENSION_set_data, @function
X509_EXTENSION_set_data:
.LFB708:
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
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L84
.L85:
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	X509_EXTENSION_set_data, .-X509_EXTENSION_set_data
	.globl	X509_EXTENSION_get_object
	.type	X509_EXTENSION_get_object, @function
X509_EXTENSION_get_object:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L88:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	X509_EXTENSION_get_object, .-X509_EXTENSION_get_object
	.globl	X509_EXTENSION_get_data
	.type	X509_EXTENSION_get_data, @function
X509_EXTENSION_get_data:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	addq	$16, %rax
.L91:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	X509_EXTENSION_get_data, .-X509_EXTENSION_get_data
	.globl	X509_EXTENSION_get_critical
	.type	X509_EXTENSION_get_critical, @function
X509_EXTENSION_get_critical:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L95
	movl	$1, %eax
	jmp	.L94
.L95:
	movl	$0, %eax
.L94:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	X509_EXTENSION_get_critical, .-X509_EXTENSION_get_critical
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"X509v3_add_ext"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"X509_EXTENSION_create_by_NID"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"X509_EXTENSION_create_by_OBJ"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"pcy_map.c"
	.text
	.type	ossl_check_ASN1_OBJECT_type, @function
ossl_check_ASN1_OBJECT_type:
.LFB57:
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
.LFE57:
	.size	ossl_check_ASN1_OBJECT_type, .-ossl_check_ASN1_OBJECT_type
	.type	ossl_check_ASN1_OBJECT_sk_type, @function
ossl_check_ASN1_OBJECT_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_ASN1_OBJECT_sk_type, .-ossl_check_ASN1_OBJECT_sk_type
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
	.type	ossl_check_const_POLICY_MAPPING_sk_type, @function
ossl_check_const_POLICY_MAPPING_sk_type:
.LFB558:
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
.LFE558:
	.size	ossl_check_const_POLICY_MAPPING_sk_type, .-ossl_check_const_POLICY_MAPPING_sk_type
	.type	ossl_check_POLICY_MAPPING_sk_type, @function
ossl_check_POLICY_MAPPING_sk_type:
.LFB559:
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
.LFE559:
	.size	ossl_check_POLICY_MAPPING_sk_type, .-ossl_check_POLICY_MAPPING_sk_type
	.type	ossl_check_POLICY_MAPPING_freefunc_type, @function
ossl_check_POLICY_MAPPING_freefunc_type:
.LFB562:
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
.LFE562:
	.size	ossl_check_POLICY_MAPPING_freefunc_type, .-ossl_check_POLICY_MAPPING_freefunc_type
	.type	sk_X509_POLICY_DATA_push, @function
sk_X509_POLICY_DATA_push:
.LFB632:
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
.LFE632:
	.size	sk_X509_POLICY_DATA_push, .-sk_X509_POLICY_DATA_push
	.globl	ossl_policy_cache_set_mapping
	.type	ossl_policy_cache_set_mapping, @function
ossl_policy_cache_set_mapping:
.LFB647:
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
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICY_MAPPING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$-1, -32(%rbp)
	jmp	.L19
.L18:
	movl	$0, -28(%rbp)
	jmp	.L20
.L29:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICY_MAPPING_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$746, %eax
	je	.L21
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$746, %eax
	jne	.L22
.L21:
	movl	$-1, -32(%rbp)
	jmp	.L19
.L22:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_policy_cache_find_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L31
.L23:
	cmpq	$0, -24(%rbp)
	jne	.L25
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_policy_data_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_X509_POLICY_DATA_push
	testl	%eax, %eax
	jne	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_policy_data_free@PLT
	jmp	.L19
.L25:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L27:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L33
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L24
.L31:
	nop
.L24:
	addl	$1, -28(%rbp)
.L20:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICY_MAPPING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L29
	movl	$1, -32(%rbp)
	jmp	.L19
.L32:
	nop
	jmp	.L19
.L33:
	nop
.L19:
	movq	POLICY_MAPPING_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICY_MAPPING_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICY_MAPPING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_policy_cache_set_mapping, .-ossl_policy_cache_set_mapping
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

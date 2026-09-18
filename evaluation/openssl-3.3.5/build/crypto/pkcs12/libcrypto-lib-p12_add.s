	.file	"p12_add.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_add.c"
	.text
	.globl	PKCS12_item_pack_safebag
	.type	PKCS12_item_pack_safebag, @function
PKCS12_item_pack_safebag:
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
	movl	%ecx, -40(%rbp)
	call	PKCS12_BAGS_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L12:
	call	PKCS12_SAFEBAG_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L14:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	jmp	.L11
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_BAGS_free@PLT
	movl	$0, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PKCS12_item_pack_safebag, .-PKCS12_item_pack_safebag
	.globl	PKCS12_pack_p7data
	.type	PKCS12_pack_p7data, @function
PKCS12_pack_p7data:
.LFB516:
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
	call	PKCS7_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$21, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	call	ASN1_OCTET_STRING_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rbx
	call	PKCS12_SAFEBAGS_it@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L20:
	movq	-24(%rbp), %rax
	jmp	.L17
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	$0, %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PKCS12_pack_p7data, .-PKCS12_pack_p7data
	.globl	PKCS12_unpack_p7data
	.type	PKCS12_unpack_p7data, @function
PKCS12_unpack_p7data:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	je	.L22
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L24:
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	call	PKCS12_SAFEBAGS_it@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	ASN1_item_unpack_ex@PLT
.L23:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PKCS12_unpack_p7data, .-PKCS12_unpack_p7data
	.globl	PKCS12_pack_p7encdata_ex
	.type	PKCS12_pack_p7encdata_ex, @function
PKCS12_pack_p7encdata_ex:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_new_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-48(%rbp), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	PKCS7_set_type@PLT
	testl	%eax, %eax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L28:
	call	ERR_set_mark@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L30
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -32(%rbp)
.L30:
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	je	.L31
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	-80(%rbp), %esi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_iv_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	jmp	.L32
.L31:
	movq	24(%rbp), %rdi
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	-80(%rbp), %esi
	movl	-52(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	PKCS5_pbe_set_ex@PLT
	movq	%rax, -24(%rbp)
.L32:
	cmpq	$0, -24(%rbp)
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L33:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	call	PKCS12_SAFEBAGS_it@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rbx
	movq	16(%rbp), %rdi
	movl	-56(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_item_i2d_encrypt_ex@PLT
	addq	$16, %rsp
	movq	%rax, 16(%rbx)
	movq	16(%rbx), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L34:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-48(%rbp), %rax
	jmp	.L27
.L29:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$0, %eax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PKCS12_pack_p7encdata_ex, .-PKCS12_pack_p7encdata_ex
	.globl	PKCS12_pack_p7encdata
	.type	PKCS12_pack_p7encdata, @function
PKCS12_pack_p7encdata:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	PKCS12_pack_p7encdata_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PKCS12_pack_p7encdata, .-PKCS12_pack_p7encdata
	.globl	PKCS12_unpack_p7encdata
	.type	PKCS12_unpack_p7encdata, @function
PKCS12_unpack_p7encdata:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$26, %eax
	je	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L40:
	movq	-40(%rbp), %rax
	movq	48(%rax), %r12
	movq	-40(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %r13
	call	PKCS12_SAFEBAGS_it@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	pushq	%r12
	pushq	%rbx
	movl	$1, %r9d
	movq	%r13, %r8
	movq	%rax, %rdi
	call	PKCS12_item_decrypt_d2i_ex@PLT
	addq	$16, %rsp
.L39:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_unpack_p7encdata, .-PKCS12_unpack_p7encdata
	.globl	PKCS12_decrypt_skey_ex
	.type	PKCS12_decrypt_skey_ex, @function
PKCS12_decrypt_skey_ex:
.LFB521:
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS8_decrypt_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS12_decrypt_skey_ex, .-PKCS12_decrypt_skey_ex
	.globl	PKCS12_decrypt_skey
	.type	PKCS12_decrypt_skey, @function
PKCS12_decrypt_skey:
.LFB522:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PKCS12_decrypt_skey_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS12_decrypt_skey, .-PKCS12_decrypt_skey
	.globl	PKCS12_pack_authsafes
	.type	PKCS12_pack_authsafes, @function
PKCS12_pack_authsafes:
.LFB523:
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
	movq	16(%rax), %rax
	leaq	32(%rax), %rbx
	call	PKCS12_AUTHSAFES_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	je	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PKCS12_pack_authsafes, .-PKCS12_pack_authsafes
	.globl	PKCS12_unpack_authsafes
	.type	PKCS12_unpack_authsafes, @function
PKCS12_unpack_authsafes:
.LFB524:
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
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	je	.L49
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	call	PKCS12_AUTHSAFES_it@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	ASN1_item_unpack_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L52
	movl	$0, -20(%rbp)
	jmp	.L53
.L56:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_propagate@PLT
	testl	%eax, %eax
	je	.L58
	addl	$1, -20(%rbp)
.L53:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L56
.L52:
	movq	-40(%rbp), %rax
	jmp	.L50
.L58:
	nop
.L55:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
.L50:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS12_unpack_authsafes, .-PKCS12_unpack_authsafes
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"PKCS12_item_pack_safebag"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"PKCS12_pack_p7data"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"PKCS12_unpack_p7data"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"PKCS12_pack_p7encdata_ex"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"PKCS12_unpack_p7encdata"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"PKCS12_unpack_authsafes"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

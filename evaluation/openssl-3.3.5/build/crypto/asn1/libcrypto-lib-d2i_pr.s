	.file	"d2i_pr.c"
	.text
	.type	ossl_check_const_ASN1_TYPE_sk_type, @function
ossl_check_const_ASN1_TYPE_sk_type:
.LFB52:
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
.LFE52:
	.size	ossl_check_const_ASN1_TYPE_sk_type, .-ossl_check_const_ASN1_TYPE_sk_type
	.type	ossl_check_ASN1_TYPE_sk_type, @function
ossl_check_ASN1_TYPE_sk_type:
.LFB53:
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
.LFE53:
	.size	ossl_check_ASN1_TYPE_sk_type, .-ossl_check_ASN1_TYPE_sk_type
	.type	ossl_check_ASN1_TYPE_freefunc_type, @function
ossl_check_ASN1_TYPE_freefunc_type:
.LFB56:
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
.LFE56:
	.size	ossl_check_ASN1_TYPE_freefunc_type, .-ossl_check_ASN1_TYPE_freefunc_type
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
	.section	.rodata
.LC0:
	.string	"PrivateKeyInfo"
.LC1:
	.string	"type-specific"
.LC2:
	.string	"DER"
	.text
	.type	d2i_PrivateKey_decoder, @function
d2i_PrivateKey_decoder:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movq	$0, -40(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -8(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -164(%rbp)
	je	.L12
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	evp_pkey_type2name@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L23
.L12:
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -56(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -56(%rbp)
	je	.L14
	cmpq	$0, -24(%rbp)
	jne	.L15
	movq	-56(%rbp), %rdx
	leaq	-152(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	je	.L15
	movq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	je	.L15
	leaq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
.L15:
	leaq	.LC0(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	jmp	.L16
.L14:
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
.L16:
	movq	-184(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -176(%rbp)
	je	.L17
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-176(%rbp), %rax
	movq	%rax, -16(%rbp)
.L17:
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-208(%rbp)
	movq	%rdi, %r9
	movl	$135, %r8d
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -40(%rbp)
	cmpq	$0, -176(%rbp)
	je	.L18
	movq	-176(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L18:
	cmpq	$0, -40(%rbp)
	je	.L24
	leaq	-72(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	cmpl	$0, -60(%rbp)
	je	.L25
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	je	.L25
	cmpq	$0, -176(%rbp)
	je	.L21
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
.L21:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L23
.L24:
	nop
	jmp	.L20
.L25:
	nop
.L20:
	movq	-16(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L22
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L22:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	d2i_PrivateKey_decoder, .-d2i_PrivateKey_decoder
	.section	.rodata
.LC3:
	.string	"../crypto/asn1/d2i_pr.c"
	.text
	.globl	ossl_d2i_PrivateKey_legacy
	.type	ossl_d2i_PrivateKey_legacy, @function
ossl_d2i_PrivateKey_legacy:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L28
.L27:
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L28:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L31:
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L32:
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	184(%rax), %r8
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L35
.L34:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	je	.L37
.L36:
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L38
	call	ERR_clear_last_mark@PLT
	jmp	.L33
.L38:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkcs82pkey_legacy@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	cmpq	$0, -40(%rbp)
	jne	.L39
	call	ERR_clear_last_mark@PLT
	jmp	.L33
.L39:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ERR_pop_to_mark@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	%eax, %ebx
	je	.L47
	jmp	.L33
.L37:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L47:
	nop
	jmp	.L42
.L35:
	call	ERR_clear_last_mark@PLT
.L42:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -64(%rbp)
	je	.L43
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L43:
	movq	-24(%rbp), %rax
	jmp	.L46
.L33:
	cmpq	$0, -64(%rbp)
	je	.L44
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L45
.L44:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L45:
	movl	$0, %eax
.L46:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ossl_d2i_PrivateKey_legacy, .-ossl_d2i_PrivateKey_legacy
	.globl	d2i_PrivateKey_ex
	.type	d2i_PrivateKey_ex, @function
d2i_PrivateKey_ex:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	d2i_PrivateKey_decoder
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ossl_d2i_PrivateKey_legacy@PLT
	movq	%rax, -8(%rbp)
.L49:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	d2i_PrivateKey_ex, .-d2i_PrivateKey_ex
	.globl	d2i_PrivateKey
	.type	d2i_PrivateKey, @function
d2i_PrivateKey:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %edi
	call	d2i_PrivateKey_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	d2i_PrivateKey, .-d2i_PrivateKey
	.type	d2i_AutoPrivateKey_legacy, @function
d2i_AutoPrivateKey_legacy:
.LFB599:
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
	movq	%r8, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_SEQUENCE_ANY@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_TYPE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$6, %eax
	jne	.L54
	movl	$116, -20(%rbp)
	jmp	.L55
.L54:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_TYPE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$4, %eax
	jne	.L56
	movl	$408, -20(%rbp)
	jmp	.L55
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_TYPE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$3, %eax
	jne	.L57
	movq	-88(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -40(%rbp)
	movq	ASN1_TYPE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	cmpq	$0, -40(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L58:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkcs82pkey_legacy@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	cmpq	$0, -48(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L62
.L60:
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -72(%rbp)
	je	.L61
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
.L61:
	movq	-48(%rbp), %rax
	jmp	.L62
.L57:
	movl	$6, -20(%rbp)
.L55:
	movq	ASN1_TYPE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %eax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ossl_d2i_PrivateKey_legacy@PLT
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	d2i_AutoPrivateKey_legacy, .-d2i_AutoPrivateKey_legacy
	.globl	d2i_AutoPrivateKey_ex
	.type	d2i_AutoPrivateKey_ex, @function
d2i_AutoPrivateKey_ex:
.LFB600:
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
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PrivateKey_decoder
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L64
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	d2i_AutoPrivateKey_legacy
	movq	%rax, -8(%rbp)
.L64:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	d2i_AutoPrivateKey_ex, .-d2i_AutoPrivateKey_ex
	.globl	d2i_AutoPrivateKey
	.type	d2i_AutoPrivateKey, @function
d2i_AutoPrivateKey:
.LFB601:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	d2i_AutoPrivateKey_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	d2i_AutoPrivateKey, .-d2i_AutoPrivateKey
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"ossl_d2i_PrivateKey_legacy"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"d2i_AutoPrivateKey_legacy"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

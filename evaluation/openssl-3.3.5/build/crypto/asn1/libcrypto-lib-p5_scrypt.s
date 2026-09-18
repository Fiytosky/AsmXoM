	.file	"p5_scrypt.c"
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
	.section	.rodata
.LC0:
	.string	"salt"
.LC1:
	.string	"costParameter"
.LC2:
	.string	"blockSize"
.LC3:
	.string	"parallelizationParameter"
.LC4:
	.string	"keyLength"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	SCRYPT_PARAMS_seq_tt, @object
	.size	SCRYPT_PARAMS_seq_tt, 200
SCRYPT_PARAMS_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	ASN1_INTEGER_it
	.quad	1
	.quad	0
	.quad	32
	.quad	.LC4
	.quad	ASN1_INTEGER_it
	.text
	.globl	SCRYPT_PARAMS_it
	.type	SCRYPT_PARAMS_it, @function
SCRYPT_PARAMS_it:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	SCRYPT_PARAMS_it, .-SCRYPT_PARAMS_it
	.globl	d2i_SCRYPT_PARAMS
	.type	d2i_SCRYPT_PARAMS, @function
d2i_SCRYPT_PARAMS:
.LFB571:
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
	call	SCRYPT_PARAMS_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	d2i_SCRYPT_PARAMS, .-d2i_SCRYPT_PARAMS
	.globl	i2d_SCRYPT_PARAMS
	.type	i2d_SCRYPT_PARAMS, @function
i2d_SCRYPT_PARAMS:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	SCRYPT_PARAMS_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	i2d_SCRYPT_PARAMS, .-i2d_SCRYPT_PARAMS
	.globl	SCRYPT_PARAMS_new
	.type	SCRYPT_PARAMS_new, @function
SCRYPT_PARAMS_new:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	SCRYPT_PARAMS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	SCRYPT_PARAMS_new, .-SCRYPT_PARAMS_new
	.globl	SCRYPT_PARAMS_free
	.type	SCRYPT_PARAMS_free, @function
SCRYPT_PARAMS_free:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	SCRYPT_PARAMS_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	SCRYPT_PARAMS_free, .-SCRYPT_PARAMS_free
	.section	.rodata
.LC5:
	.string	"../crypto/asn1/p5_scrypt.c"
	.text
	.globl	PKCS5_pbe2_set_scrypt
	.type	PKCS5_pbe2_set_scrypt, @function
PKCS5_pbe2_set_scrypt:
.LFB575:
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
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L15:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PBE_scrypt@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$227, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L17:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L18:
	call	PBE2PARAM_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$71, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L19:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	call	ASN1_TYPE_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L20:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	je	.L21
	cmpq	$0, -112(%rbp)
	je	.L22
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movslq	%eax, %rdx
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L21
.L22:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L32
.L21:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L23:
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_param_to_asn1@PLT
	testl	%eax, %eax
	jg	.L25
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L25:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -40(%rbp)
	cmpl	$37, -60(%rbp)
	jne	.L26
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -32(%rbp)
.L26:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-100(%rbp), %eax
	movslq	%eax, %rsi
	movq	16(%rbp), %r8
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs5_scrypt_set
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L27:
	call	X509_ALGOR_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L28:
	movl	$161, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	call	PBE2PARAM_it@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_TYPE_pack_sequence@PLT
	testq	%rax, %rax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L29:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PBE2PARAM_free@PLT
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	jmp	.L31
.L32:
	nop
	jmp	.L16
.L33:
	nop
.L16:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PBE2PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	$0, %eax
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	PKCS5_pbe2_set_scrypt, .-PKCS5_pbe2_set_scrypt
	.type	pkcs5_scrypt_set, @function
pkcs5_scrypt_set:
.LFB576:
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
	movq	%r9, -80(%rbp)
	movq	$0, -24(%rbp)
	call	SCRYPT_PARAMS_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L35:
	cmpq	$0, -48(%rbp)
	jne	.L37
	movq	$16, -48(%rbp)
.L37:
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L38:
	cmpq	$0, -40(%rbp)
	jne	.L39
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L48
.L39:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_uint64@PLT
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L40:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_uint64@PLT
	testl	%eax, %eax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L41:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_uint64@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L42:
	cmpq	$0, -56(%rbp)
	je	.L43
	call	ASN1_INTEGER_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L44:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L43:
	call	X509_ALGOR_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L45:
	movl	$973, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	call	SCRYPT_PARAMS_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_TYPE_pack_sequence@PLT
	testq	%rax, %rax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L46:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SCRYPT_PARAMS_free@PLT
	movq	-24(%rbp), %rax
	jmp	.L47
.L48:
	nop
.L36:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SCRYPT_PARAMS_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	pkcs5_scrypt_set, .-pkcs5_scrypt_set
	.globl	PKCS5_v2_scrypt_keyivgen_ex
	.type	PKCS5_v2_scrypt_keyivgen_ex, @function
PKCS5_v2_scrypt_keyivgen_ex:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	testq	%rax, %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L50:
	call	SCRYPT_PARAMS_it@PLT
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L52:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L53:
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_uint64@PLT
	testl	%eax, %eax
	je	.L55
	movq	-144(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L54
.L55:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L54:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_uint64@PLT
	testl	%eax, %eax
	je	.L57
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_uint64@PLT
	testl	%eax, %eax
	je	.L57
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_uint64@PLT
	testl	%eax, %eax
	je	.L57
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-136(%rbp), %rdx
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	%rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PBE_scrypt_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L58
.L57:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$285, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L58:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %r9
	movq	-136(%rbp), %r10
	movl	-164(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-160(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	-8(%rbp)
	leaq	-112(%rbp), %r8
	pushq	%r8
	pushq	$0
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	EVP_PBE_scrypt_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L62
	movl	16(%rbp), %ecx
	leaq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	movl	%eax, -12(%rbp)
	jmp	.L51
.L62:
	nop
.L51:
	cmpq	$0, -8(%rbp)
	je	.L60
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L60:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SCRYPT_PARAMS_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	PKCS5_v2_scrypt_keyivgen_ex, .-PKCS5_v2_scrypt_keyivgen_ex
	.globl	PKCS5_v2_scrypt_keyivgen
	.type	PKCS5_v2_scrypt_keyivgen, @function
PKCS5_v2_scrypt_keyivgen:
.LFB578:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS5_v2_scrypt_keyivgen_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	PKCS5_v2_scrypt_keyivgen, .-PKCS5_v2_scrypt_keyivgen
	.section	.rodata
.LC6:
	.string	"SCRYPT_PARAMS"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	SCRYPT_PARAMS_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC6
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"PKCS5_pbe2_set_scrypt"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"pkcs5_scrypt_set"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"PKCS5_v2_scrypt_keyivgen_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

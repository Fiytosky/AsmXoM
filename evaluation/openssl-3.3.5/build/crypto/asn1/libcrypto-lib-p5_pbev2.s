	.file	"p5_pbev2.c"
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
	.string	"keyfunc"
.LC1:
	.string	"encryption"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	PBE2PARAM_seq_tt, @object
	.size	PBE2PARAM_seq_tt, 80
PBE2PARAM_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	X509_ALGOR_it
	.text
	.globl	PBE2PARAM_it
	.type	PBE2PARAM_it, @function
PBE2PARAM_it:
.LFB595:
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
.LFE595:
	.size	PBE2PARAM_it, .-PBE2PARAM_it
	.globl	d2i_PBE2PARAM
	.type	d2i_PBE2PARAM, @function
d2i_PBE2PARAM:
.LFB596:
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
	call	PBE2PARAM_it@PLT
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
.LFE596:
	.size	d2i_PBE2PARAM, .-d2i_PBE2PARAM
	.globl	i2d_PBE2PARAM
	.type	i2d_PBE2PARAM, @function
i2d_PBE2PARAM:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PBE2PARAM_it@PLT
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
.LFE597:
	.size	i2d_PBE2PARAM, .-i2d_PBE2PARAM
	.globl	PBE2PARAM_new
	.type	PBE2PARAM_new, @function
PBE2PARAM_new:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PBE2PARAM_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	PBE2PARAM_new, .-PBE2PARAM_new
	.globl	PBE2PARAM_free
	.type	PBE2PARAM_free, @function
PBE2PARAM_free:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PBE2PARAM_it@PLT
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
.LFE599:
	.size	PBE2PARAM_free, .-PBE2PARAM_free
	.section	.rodata
.LC2:
	.string	"salt"
.LC3:
	.string	"iter"
.LC4:
	.string	"keylength"
.LC5:
	.string	"prf"
	.section	.data.rel.ro
	.align 32
	.type	PBKDF2PARAM_seq_tt, @object
	.size	PBKDF2PARAM_seq_tt, 160
PBKDF2PARAM_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_ANY_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	ASN1_INTEGER_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC4
	.quad	ASN1_INTEGER_it
	.quad	1
	.quad	0
	.quad	24
	.quad	.LC5
	.quad	X509_ALGOR_it
	.text
	.globl	PBKDF2PARAM_it
	.type	PBKDF2PARAM_it, @function
PBKDF2PARAM_it:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	PBKDF2PARAM_it, .-PBKDF2PARAM_it
	.globl	d2i_PBKDF2PARAM
	.type	d2i_PBKDF2PARAM, @function
d2i_PBKDF2PARAM:
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
	call	PBKDF2PARAM_it@PLT
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
.LFE601:
	.size	d2i_PBKDF2PARAM, .-d2i_PBKDF2PARAM
	.globl	i2d_PBKDF2PARAM
	.type	i2d_PBKDF2PARAM, @function
i2d_PBKDF2PARAM:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PBKDF2PARAM_it@PLT
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
.LFE602:
	.size	i2d_PBKDF2PARAM, .-i2d_PBKDF2PARAM
	.globl	PBKDF2PARAM_new
	.type	PBKDF2PARAM_new, @function
PBKDF2PARAM_new:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PBKDF2PARAM_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	PBKDF2PARAM_new, .-PBKDF2PARAM_new
	.globl	PBKDF2PARAM_free
	.type	PBKDF2PARAM_free, @function
PBKDF2PARAM_free:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PBKDF2PARAM_it@PLT
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
.LFE604:
	.size	PBKDF2PARAM_free, .-PBKDF2PARAM_free
	.section	.rodata
.LC6:
	.string	"../crypto/asn1/p5_pbev2.c"
	.text
	.globl	PKCS5_pbe2_set_iv_ex
	.type	PKCS5_pbe2_set_iv_ex, @function
PKCS5_pbe2_set_iv_ex:
.LFB605:
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
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -96(%rbp)
	movq	%r8, -112(%rbp)
	movl	%r9d, -116(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L24:
	call	PBE2PARAM_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L26:
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
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L27:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L28
	cmpq	$0, -112(%rbp)
	je	.L29
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L28
.L29:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L41
.L28:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L30:
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
	je	.L42
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_param_to_asn1@PLT
	testl	%eax, %eax
	jg	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L32:
	call	ERR_set_mark@PLT
	movl	-116(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L33
	leaq	-116(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L33
	movl	$799, -116(%rbp)
.L33:
	call	ERR_pop_to_mark@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -40(%rbp)
	cmpl	$37, -60(%rbp)
	jne	.L34
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -28(%rbp)
	jmp	.L35
.L34:
	movl	$-1, -28(%rbp)
.L35:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-116(%rbp), %ecx
	movq	16(%rbp), %r8
	movl	-28(%rbp), %edi
	movl	-96(%rbp), %edx
	movq	-104(%rbp), %rsi
	movl	-92(%rbp), %eax
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%eax, %edi
	call	PKCS5_pbkdf2_set_ex@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L36:
	call	X509_ALGOR_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L37:
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
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L38:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PBE2PARAM_free@PLT
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	jmp	.L40
.L41:
	nop
	jmp	.L25
.L42:
	nop
.L25:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PBE2PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
.L40:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	PKCS5_pbe2_set_iv_ex, .-PKCS5_pbe2_set_iv_ex
	.globl	PKCS5_pbe2_set_iv
	.type	PKCS5_pbe2_set_iv, @function
PKCS5_pbe2_set_iv:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-36(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_iv_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	PKCS5_pbe2_set_iv, .-PKCS5_pbe2_set_iv
	.globl	PKCS5_pbe2_set
	.type	PKCS5_pbe2_set, @function
PKCS5_pbe2_set:
.LFB607:
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
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_iv_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	PKCS5_pbe2_set, .-PKCS5_pbe2_set
	.globl	PKCS5_pbkdf2_set_ex
	.type	PKCS5_pbkdf2_set_ex, @function
PKCS5_pbkdf2_set_ex:
.LFB608:
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
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	PBKDF2PARAM_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L48:
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L50:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, (%rax)
	cmpl	$0, -56(%rbp)
	jns	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L51:
	cmpl	$0, -56(%rbp)
	jne	.L52
	movl	$16, -56(%rbp)
.L52:
	movl	-56(%rbp), %eax
	cltq
	leaq	.LC6(%rip), %rcx
	movl	$201, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax)
	cmpq	$0, -64(%rbp)
	je	.L54
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L55
.L54:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L55
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L55:
	cmpl	$0, -52(%rbp)
	jg	.L56
	movl	$2048, -52(%rbp)
.L56:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L57:
	cmpl	$0, -72(%rbp)
	jle	.L58
	call	ASN1_INTEGER_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$226, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L59:
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L58:
	cmpl	$0, -68(%rbp)
	jle	.L60
	cmpl	$163, -68(%rbp)
	je	.L60
	movl	-68(%rbp), %eax
	movl	$0, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	ossl_X509_ALGOR_from_nid@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L60:
	call	X509_ALGOR_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L61:
	movl	$69, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	call	PBKDF2PARAM_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_TYPE_pack_sequence@PLT
	testq	%rax, %rax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L62:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PBKDF2PARAM_free@PLT
	movq	-24(%rbp), %rax
	jmp	.L63
.L64:
	nop
.L49:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PBKDF2PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	PKCS5_pbkdf2_set_ex, .-PKCS5_pbkdf2_set_ex
	.globl	PKCS5_pbkdf2_set
	.type	PKCS5_pbkdf2_set, @function
PKCS5_pbkdf2_set:
.LFB609:
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
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %ecx
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$0, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	PKCS5_pbkdf2_set_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	PKCS5_pbkdf2_set, .-PKCS5_pbkdf2_set
	.section	.rodata
.LC7:
	.string	"PBE2PARAM"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	PBE2PARAM_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"PBKDF2PARAM"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	PBKDF2PARAM_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC8
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"PKCS5_pbe2_set_iv_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"PKCS5_pbkdf2_set_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

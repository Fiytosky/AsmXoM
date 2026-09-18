	.file	"p12_mutl.c"
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
	.globl	PKCS12_mac_present
	.type	PKCS12_mac_present, @function
PKCS12_mac_present:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PKCS12_mac_present, .-PKCS12_mac_present
	.globl	PKCS12_get0_mac
	.type	PKCS12_get0_mac, @function
PKCS12_get0_mac:
.LFB516:
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_SIG_get0@PLT
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L9:
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L14
.L8:
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L11:
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.L12:
	cmpq	$0, -24(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L13:
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PKCS12_get0_mac, .-PKCS12_get0_mac
	.type	pkcs12_gen_gost_mac_key, @function
pkcs12_gen_gost_mac_key:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -112(%rbp)
	movl	%r8d, -124(%rbp)
	movl	%r9d, -128(%rbp)
	cmpl	$32, -128(%rbp)
	je	.L16
	movl	$0, %eax
	jmp	.L19
.L16:
	movq	24(%rbp), %r9
	movl	-124(%rbp), %r8d
	movl	-112(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movl	-108(%rbp), %esi
	movq	-104(%rbp), %rax
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	pushq	$96
	movq	%rax, %rdi
	call	PKCS5_PBKDF2_HMAC@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	leaq	-96(%rbp), %rax
	addq	$64, %rax
	movq	16(%rbp), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	-96(%rbp), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	pkcs12_gen_gost_mac_key, .-pkcs12_gen_gost_mac_key
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_mutl.c"
.LC1:
	.string	"LEGACY_GOST_PKCS12"
	.text
	.type	pkcs12_gen_mac, @function
pkcs12_gen_mac:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$21, %eax
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L21:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L23:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movl	$1, -28(%rbp)
	jmp	.L25
.L24:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, -28(%rbp)
.L25:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-216(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_SIG_get0@PLT
	movq	-216(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jns	.L26
	movl	$0, %eax
	jmp	.L38
.L26:
	call	ERR_set_mark@PLT
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	leaq	-208(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L27
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -16(%rbp)
.L27:
	cmpq	$0, -16(%rbp)
	jne	.L28
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L28:
	call	ERR_pop_to_mark@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -32(%rbp)
	js	.L39
	cmpl	$809, -60(%rbp)
	je	.L31
	cmpl	$982, -60(%rbp)
	je	.L31
	cmpl	$983, -60(%rbp)
	jne	.L32
.L31:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	testq	%rax, %rax
	jne	.L32
	movl	$32, -32(%rbp)
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r8d
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	pushq	-16(%rbp)
	leaq	-128(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	pkcs12_gen_gost_mac_key
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L30
.L32:
	cmpq	$0, -272(%rbp)
	je	.L35
	movl	-28(%rbp), %r8d
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	leaq	-128(%rbp), %rdi
	pushq	%rdi
	movl	-32(%rbp), %edi
	pushq	%rdi
	movq	-272(%rbp), %r10
	movl	%r8d, %r9d
	movl	$3, %r8d
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L30
.L35:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %r8
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rdi
	movl	-28(%rbp), %r9d
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	-16(%rbp)
	leaq	-128(%rbp), %rdi
	pushq	%rdi
	movl	-32(%rbp), %edi
	pushq	%rdi
	movl	$3, %r8d
	movq	%rax, %rdi
	call	PKCS12_key_gen_utf8_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L30
.L34:
	call	HMAC_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-16(%rbp), %rcx
	movl	-32(%rbp), %edx
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	je	.L40
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	je	.L40
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	je	.L40
	movl	$1, -4(%rbp)
	jmp	.L30
.L39:
	nop
	jmp	.L30
.L40:
	nop
.L30:
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	pkcs12_gen_mac, .-pkcs12_gen_mac
	.globl	PKCS12_gen_mac
	.type	PKCS12_gen_mac, @function
PKCS12_gen_mac:
.LFB519:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs12_gen_mac
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PKCS12_gen_mac, .-PKCS12_gen_mac
	.globl	PKCS12_verify_mac
	.type	PKCS12_verify_mac, @function
PKCS12_verify_mac:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L44:
	leaq	-84(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs12_gen_mac
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L46:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_SIG_get0@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L47
	movl	-84(%rbp), %eax
	movl	%eax, %ebx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L48
.L47:
	movl	$0, %eax
	jmp	.L49
.L48:
	movl	$1, %eax
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_verify_mac, .-PKCS12_verify_mac
	.globl	PKCS12_set_mac
	.type	PKCS12_set_mac, @function
PKCS12_set_mac:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -104(%rbp)
	movl	%r9d, -116(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L51
	call	EVP_sha256@PLT
	movq	%rax, 16(%rbp)
.L51:
	cmpl	$0, -116(%rbp)
	jne	.L52
	movl	$2048, -116(%rbp)
.L52:
	movq	16(%rbp), %rdi
	movl	-104(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movl	-116(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_setup_mac@PLT
	testl	%eax, %eax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L53:
	leaq	-68(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pkcs12_gen_mac
	testl	%eax, %eax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L55:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_SIG_getm@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS12_set_mac, .-PKCS12_set_mac
	.globl	PKCS12_setup_mac
	.type	PKCS12_setup_mac, @function
PKCS12_setup_mac:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	PKCS12_MAC_DATA_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	call	PKCS12_MAC_DATA_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L69
.L59:
	cmpl	$1, -44(%rbp)
	jle	.L61
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	ASN1_INTEGER_new@PLT
	movq	%rax, 16(%rbx)
	movq	16(%rbx), %rax
	testq	%rax, %rax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L62:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L61:
	cmpl	$0, -48(%rbp)
	jne	.L63
	movl	$8, -48(%rbp)
	jmp	.L64
.L63:
	cmpl	$0, -48(%rbp)
	jns	.L64
	movl	$0, %eax
	jmp	.L69
.L64:
	movl	-48(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rbx
	leaq	.LC0(%rip), %rcx
	movl	$266, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L65
	movl	$0, %eax
	jmp	.L69
.L65:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	cmpq	$0, -56(%rbp)
	jne	.L66
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L67
	movl	$0, %eax
	jmp	.L69
.L66:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L67:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_SIG_getm@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L68:
	movl	$1, %eax
.L69:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS12_setup_mac, .-PKCS12_setup_mac
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"pkcs12_gen_mac"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"PKCS12_verify_mac"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"PKCS12_set_mac"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"PKCS12_setup_mac"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

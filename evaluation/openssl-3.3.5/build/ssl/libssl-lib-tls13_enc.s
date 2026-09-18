	.file	"tls13_enc.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.type	label_prefix, @object
	.size	label_prefix, 7
label_prefix:
	.string	"tls13 "
.LC0:
	.string	"TLS13-KDF"
.LC1:
	.string	"../ssl/tls13_enc.c"
.LC2:
	.string	"mode"
.LC3:
	.string	"digest"
.LC4:
	.string	"key"
.LC5:
	.string	"prefix"
.LC6:
	.string	"label"
.LC7:
	.string	"data"
	.text
	.globl	tls13_hkdf_expand_ex
	.type	tls13_hkdf_expand_ex, @function
tls13_hkdf_expand_ex:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	%r8, -408(%rbp)
	movq	%r9, -416(%rbp)
	movq	-384(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -32(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$2, -356(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -48(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L22
.L14:
	cmpq	$249, -416(%rbp)
	jbe	.L16
	cmpl	$0, 48(%rbp)
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$367, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L17:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	$0, %eax
	jmp	.L22
.L16:
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L18
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	cmpl	$0, 48(%rbp)
	je	.L19
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L19:
	movl	$0, %eax
	jmp	.L22
.L18:
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	leaq	-356(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-400(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	leaq	label_prefix(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$6, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	movq	-416(%rbp), %rcx
	movq	-408(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, 16(%rbp)
	je	.L20
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
.L20:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-352(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	cmpl	$0, -52(%rbp)
	je	.L21
	cmpl	$0, 48(%rbp)
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L21:
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	tls13_hkdf_expand_ex, .-tls13_hkdf_expand_ex
	.globl	tls13_hkdf_expand
	.type	tls13_hkdf_expand, @function
tls13_hkdf_expand:
.LFB730:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, 40(%rbp)
	sete	%al
	movzbl	%al, %edi
	movq	-8(%rbp), %rax
	movq	1096(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %r9
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-64(%rbp)
	movq	%rax, %rdi
	call	tls13_hkdf_expand_ex@PLT
	addq	$48, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L24
	cmpl	$0, 40(%rbp)
	je	.L24
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L24:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	tls13_hkdf_expand, .-tls13_hkdf_expand
	.globl	tls13_derive_key
	.type	tls13_derive_key, @function
tls13_derive_key:
.LFB731:
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
	leaq	keylabel.19(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$1
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$3, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls13_derive_key, .-tls13_derive_key
	.globl	tls13_derive_iv
	.type	tls13_derive_iv, @function
tls13_derive_iv:
.LFB732:
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
	leaq	ivlabel.18(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$1
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$2, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tls13_derive_iv, .-tls13_derive_iv
	.globl	tls13_derive_finishedkey
	.type	tls13_derive_finishedkey, @function
tls13_derive_finishedkey:
.LFB733:
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
	leaq	finishedlabel.17(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$1
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$8, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	tls13_derive_finishedkey, .-tls13_derive_finishedkey
	.section	.rodata
.LC8:
	.string	"salt"
	.text
	.globl	tls13_generate_secret
	.type	tls13_generate_secret, @function
tls13_generate_secret:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	%r8, -424(%rbp)
	movq	%r9, -432(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -372(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -32(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -56(%rbp)
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-392(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L39
.L33:
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-392(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	$0, %eax
	jmp	.L39
.L35:
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	-372(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -416(%rbp)
	je	.L36
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	-416(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
.L36:
	cmpq	$0, -408(%rbp)
	je	.L37
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-408(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
.L37:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	label_prefix(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$6, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	leaq	derived_secret_label.15(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$7, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-480(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-368(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-432(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L38
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-392(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L38:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	cmpl	$0, -76(%rbp)
	sete	%al
	movzbl	%al, %eax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	tls13_generate_secret, .-tls13_generate_secret
	.globl	tls13_generate_handshake_secret
	.type	tls13_generate_handshake_secret, @function
tls13_generate_handshake_secret:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	1348(%rax), %r12
	movq	-24(%rbp), %rax
	leaq	1284(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%r12, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	tls13_generate_secret@PLT
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	tls13_generate_handshake_secret, .-tls13_generate_handshake_secret
	.globl	tls13_generate_master_secret
	.type	tls13_generate_master_secret, @function
tls13_generate_master_secret:
.LFB736:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	tls13_generate_secret@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	tls13_generate_master_secret, .-tls13_generate_master_secret
	.section	.rodata
.LC9:
	.string	"properties"
.LC10:
	.string	"HMAC"
	.text
	.globl	tls13_final_finish_mac
	.type	tls13_final_finish_mac, @function
tls13_final_finish_mac:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -200(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-296(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L55
.L45:
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-368(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rbx)
.L47:
	movq	-32(%rbp), %rbx
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-208(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	je	.L56
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -304(%rbp)
	jne	.L50
	movq	-296(%rbp), %rax
	addq	$1604, %rax
	movq	%rax, -24(%rbp)
	jmp	.L51
.L50:
	movq	-296(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-296(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L53
.L52:
	movq	-296(%rbp), %rax
	addq	$1540, %rax
	movq	%rax, -24(%rbp)
	jmp	.L51
.L53:
	movq	-208(%rbp), %rcx
	movq	-296(%rbp), %rax
	leaq	1796(%rax), %rdi
	leaq	-192(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	tls13_derive_finishedkey@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-192(%rbp), %rax
	movq	%rax, -24(%rbp)
.L51:
	movq	-208(%rbp), %r8
	movq	-208(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %r11
	leaq	-288(%rbp), %r10
	movq	-48(%rbp), %rcx
	leaq	.LC10(%rip), %rsi
	leaq	-200(%rbp), %r9
	pushq	%r9
	pushq	$128
	pushq	-320(%rbp)
	pushq	%r8
	leaq	-128(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L49
.L56:
	nop
	jmp	.L49
.L57:
	nop
	jmp	.L49
.L58:
	nop
.L49:
	leaq	-192(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-200(%rbp), %rax
.L55:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	tls13_final_finish_mac, .-tls13_final_finish_mac
	.globl	tls13_setup_key_block
	.type	tls13_setup_key_block, @function
tls13_setup_key_block:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	704(%rdx), %rdx
	movq	%rdx, 760(%rax)
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ssl_cipher_get_evp@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L60
	movq	-24(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	movl	$0, %eax
	jmp	.L62
.L60:
	movq	-24(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_cipher_free@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 768(%rax)
	movq	-24(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 776(%rax)
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	tls13_setup_key_block, .-tls13_setup_key_block
	.type	derive_secret_key_and_iv, @function
derive_secret_key_and_iv:
.LFB739:
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
	movq	%r9, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L65
.L64:
	movl	-8(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %r8
	movq	16(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$1
	pushq	-16(%rbp)
	pushq	24(%rbp)
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L65
.L66:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -20(%rbp)
	cmpl	$7, -20(%rbp)
	jne	.L67
	movq	56(%rbp), %rax
	movq	$12, (%rax)
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L69
.L68:
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	movl	36(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L69
.L70:
	movq	-40(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-40(%rbp), %rax
	movq	2192(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-40(%rbp), %rax
	movq	2192(%rax), %rax
	movq	760(%rax), %rax
	movl	36(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L69
.L71:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L65
.L69:
	movl	-4(%rbp), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L72
	movq	64(%rbp), %rax
	movq	$8, (%rax)
	jmp	.L73
.L72:
	movq	64(%rbp), %rax
	movq	$16, (%rax)
	jmp	.L73
.L67:
	cmpl	$6, -20(%rbp)
	jne	.L74
	movq	64(%rbp), %rax
	movq	$16, (%rax)
	jmp	.L75
.L74:
	movq	64(%rbp), %rax
	movq	$16, (%rax)
.L75:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L76
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L65
.L76:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	56(%rbp), %rax
	movq	%rdx, (%rax)
.L73:
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls13_derive_key@PLT
	testl	%eax, %eax
	je	.L77
	movq	56(%rbp), %rax
	movq	(%rax), %rdi
	movq	48(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls13_derive_iv@PLT
	testl	%eax, %eax
	jne	.L78
.L77:
	movl	$0, %eax
	jmp	.L65
.L78:
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	derive_secret_key_and_iv, .-derive_secret_key_and_iv
	.section	.rodata
.LC11:
	.string	"CLIENT_EARLY_TRAFFIC_SECRET"
.LC12:
	.string	"EARLY_EXPORTER_SECRET"
	.align 8
.LC13:
	.string	"CLIENT_HANDSHAKE_TRAFFIC_SECRET"
.LC14:
	.string	"CLIENT_TRAFFIC_SECRET_0"
	.align 8
.LC15:
	.string	"SERVER_HANDSHAKE_TRAFFIC_SECRET"
.LC16:
	.string	"SERVER_TRAFFIC_SECRET_0"
.LC17:
	.string	"EXPORTER_SECRET"
	.text
	.globl	tls13_change_cipher_state
	.type	tls13_change_cipher_state, @function
tls13_change_cipher_state:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -440(%rbp)
	movl	%esi, -444(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -376(%rbp)
	movl	$0, -92(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -384(%rbp)
	movq	-440(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-444(%rbp), %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-444(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L80
	movl	-444(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L81
.L80:
	movl	-444(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L82
	movl	-444(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L82
.L81:
	movl	-444(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L83
	movq	$0, -144(%rbp)
	movq	-440(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_cipher@PLT
	movq	%rax, -120(%rbp)
	movq	-440(%rbp), %rax
	addq	$1284, %rax
	movq	%rax, -48(%rbp)
	leaq	client_early_traffic.12(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$11, -88(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-440(%rbp), %rax
	movq	360(%rax), %rax
	leaq	-416(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jg	.L84
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$467, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-440(%rbp), %rax
	movl	$0, %ecx
	movl	$332, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L98
.L84:
	movq	-440(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L86
	movq	-440(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L86
	movq	-440(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L86
	movq	-440(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-440(%rbp), %rax
	movl	5280(%rax), %edx
	movq	-440(%rbp), %rax
	movq	2192(%rax), %rax
	movl	836(%rax), %eax
	cmpl	%eax, %edx
	jne	.L87
	movl	$1, %eax
	jmp	.L88
.L87:
	movl	$0, %eax
.L88:
	cltq
	testq	%rax, %rax
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-440(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L98
.L89:
	movq	-440(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_cipher@PLT
	movq	%rax, -120(%rbp)
.L86:
	cmpq	$0, -120(%rbp)
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-440(%rbp), %rax
	movl	$0, %ecx
	movl	$219, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L98
.L90:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$499, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-440(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L98
.L91:
	leaq	-384(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cipher_get_evp_cipher@PLT
	testl	%eax, %eax
	jne	.L92
	movq	-440(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	jmp	.L98
.L92:
	movq	-120(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L93
	movq	-104(%rbp), %rcx
	movq	-144(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L93
	movq	-152(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L93
	leaq	-420(%rbp), %rdx
	leaq	-368(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L94
.L93:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$518, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-440(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	jmp	.L98
.L94:
	movl	-420(%rbp), %eax
	movl	%eax, %eax
	movq	%rax, -376(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-376(%rbp), %r8
	movq	-440(%rbp), %rax
	leaq	1988(%rax), %r9
	movq	-376(%rbp), %rdi
	leaq	-368(%rbp), %r10
	leaq	early_exporter_master_secret.10(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-440(%rbp), %rax
	pushq	$1
	pushq	%r8
	pushq	%r9
	pushq	%rdi
	movq	%r10, %r9
	movl	$12, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$531, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-440(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L98
.L95:
	movq	-376(%rbp), %rdx
	movq	-440(%rbp), %rax
	leaq	1988(%rax), %rdi
	leaq	.LC12(%rip), %rsi
	movq	-440(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_log_secret@PLT
	testl	%eax, %eax
	jne	.L122
	jmp	.L98
.L83:
	movl	-444(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L99
	movq	-440(%rbp), %rax
	addq	$1348, %rax
	movq	%rax, -48(%rbp)
	movq	-440(%rbp), %rax
	addq	$1540, %rax
	movq	%rax, -56(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	movq	%rax, -72(%rbp)
	leaq	client_handshake_traffic.9(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$12, -88(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-440(%rbp), %rax
	addq	$1732, %rax
	movq	%rax, -40(%rbp)
	jmp	.L122
.L99:
	movq	-440(%rbp), %rax
	addq	$1412, %rax
	movq	%rax, -48(%rbp)
	leaq	client_application_traffic.8(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$12, -88(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-440(%rbp), %rax
	addq	$1668, %rax
	movq	%rax, -40(%rbp)
	jmp	.L122
.L82:
	movl	-444(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L101
	movq	-440(%rbp), %rax
	addq	$1348, %rax
	movq	%rax, -48(%rbp)
	movq	-440(%rbp), %rax
	addq	$1604, %rax
	movq	%rax, -56(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	movq	%rax, -72(%rbp)
	leaq	server_handshake_traffic.7(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$12, -88(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L100
.L101:
	movq	-440(%rbp), %rax
	addq	$1412, %rax
	movq	%rax, -48(%rbp)
	leaq	server_application_traffic.6(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$12, -88(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L100
.L122:
	nop
.L100:
	movl	-444(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L102
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -104(%rbp)
	movq	-440(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-440(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L123
	leaq	-376(%rbp), %rdx
	leaq	-368(%rbp), %rsi
	movq	-440(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	je	.L123
.L102:
	leaq	server_application_traffic.6(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L104
	movq	-376(%rbp), %rdx
	movq	-440(%rbp), %rax
	leaq	1668(%rax), %rcx
	leaq	-368(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L104:
	leaq	server_handshake_traffic.7(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L105
	movq	-376(%rbp), %rdx
	movq	-440(%rbp), %rax
	leaq	1732(%rax), %rcx
	leaq	-368(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L105:
	leaq	client_application_traffic.8(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L106
	movq	-376(%rbp), %r12
	movq	-440(%rbp), %rax
	leaq	1476(%rax), %r13
	movq	-376(%rbp), %rbx
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, %rsi
	leaq	-368(%rbp), %rdi
	leaq	resumption_master_secret.5(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-440(%rbp), %rax
	pushq	$1
	pushq	%r12
	pushq	%r13
	pushq	%rbx
	movq	%rdi, %r9
	movl	$10, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L124
.L106:
	movq	-384(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L125
	movq	-384(%rbp), %rdx
	movq	-80(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rsi
	movq	-440(%rbp), %rax
	subq	$8, %rsp
	leaq	-408(%rbp), %rdi
	pushq	%rdi
	leaq	-400(%rbp), %rdi
	pushq	%rdi
	leaq	-176(%rbp), %rdi
	pushq	%rdi
	leaq	-392(%rbp), %rdi
	pushq	%rdi
	leaq	-240(%rbp), %rdi
	pushq	%rdi
	leaq	-304(%rbp), %rdi
	pushq	%rdi
	pushq	-88(%rbp)
	movq	%rax, %rdi
	call	derive_secret_key_and_iv
	addq	$64, %rsp
	testl	%eax, %eax
	je	.L126
	leaq	server_application_traffic.6(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L109
	movq	-376(%rbp), %rdx
	movq	-440(%rbp), %rax
	leaq	1860(%rax), %rcx
	leaq	-304(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-376(%rbp), %r12
	movq	-440(%rbp), %rax
	leaq	1924(%rax), %r13
	movq	-376(%rbp), %rbx
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	leaq	exporter_master_secret.4(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-440(%rbp), %rax
	pushq	$1
	pushq	%r12
	pushq	%r13
	pushq	%rbx
	movq	%rdi, %r9
	movl	$10, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L127
	movq	-376(%rbp), %rdx
	movq	-440(%rbp), %rax
	leaq	1924(%rax), %rdi
	leaq	.LC17(%rip), %rsi
	movq	-440(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_log_secret@PLT
	testl	%eax, %eax
	jne	.L111
	jmp	.L98
.L109:
	leaq	client_application_traffic.8(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L111
	movq	-376(%rbp), %rdx
	movq	-440(%rbp), %rax
	leaq	1796(%rax), %rcx
	leaq	-304(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L111:
	movq	-376(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_log_secret@PLT
	testl	%eax, %eax
	je	.L128
	cmpq	$0, -56(%rbp)
	je	.L113
	movq	-440(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, %rsi
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-440(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls13_derive_finishedkey@PLT
	testl	%eax, %eax
	je	.L129
.L113:
	movl	-444(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L114
	movq	-440(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L115
	leaq	client_early_traffic.12(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jne	.L115
	movq	-440(%rbp), %rax
	movq	3040(%rax), %rax
	movq	104(%rax), %rdx
	movq	-440(%rbp), %rax
	movq	3056(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L114
.L115:
	movq	-440(%rbp), %rax
	movq	3040(%rax), %rax
	movq	104(%rax), %rdx
	movq	-440(%rbp), %rax
	movq	3056(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
.L114:
	movl	-444(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L116
	movl	-444(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L117
	movl	$2, -108(%rbp)
	jmp	.L118
.L117:
	movl	$3, -108(%rbp)
	jmp	.L118
.L116:
	movl	$1, -108(%rbp)
.L118:
	movq	-408(%rbp), %r10
	movq	-384(%rbp), %r9
	movq	-400(%rbp), %r8
	movq	-392(%rbp), %rdi
	movq	-376(%rbp), %rbx
	movq	-440(%rbp), %rax
	movl	72(%rax), %esi
	leaq	-304(%rbp), %r11
	movl	-108(%rbp), %ecx
	movl	-132(%rbp), %edx
	movq	-440(%rbp), %rax
	pushq	-104(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	%r10
	pushq	%r9
	pushq	$0
	pushq	$0
	pushq	%r8
	leaq	-176(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	leaq	-240(%rbp), %rdi
	pushq	%rdi
	movq	%rbx, %r9
	movq	%r11, %r8
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L130
	movl	$1, -92(%rbp)
	jmp	.L98
.L123:
	nop
	jmp	.L98
.L124:
	nop
	jmp	.L98
.L125:
	nop
	jmp	.L98
.L126:
	nop
	jmp	.L98
.L127:
	nop
	jmp	.L98
.L128:
	nop
	jmp	.L98
.L129:
	nop
	jmp	.L98
.L130:
	nop
.L98:
	movl	-444(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L120
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_evp_cipher_free@PLT
.L120:
	leaq	-240(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-304(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-92(%rbp), %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	tls13_change_cipher_state, .-tls13_change_cipher_state
	.section	.rodata
.LC18:
	.string	"SERVER_TRAFFIC_SECRET_N"
.LC19:
	.string	"CLIENT_TRAFFIC_SECRET_N"
	.text
	.globl	tls13_update_key
	.type	tls13_update_key, @function
tls13_update_key:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$0, -236(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.L132
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$715, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L142
.L132:
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-232(%rbp), %rax
	movl	120(%rax), %eax
	cmpl	%eax, -236(%rbp)
	jne	.L134
	movq	-232(%rbp), %rax
	addq	$1860, %rax
	movq	%rax, -8(%rbp)
	jmp	.L135
.L134:
	movq	-232(%rbp), %rax
	addq	$1796, %rax
	movq	%rax, -8(%rbp)
.L135:
	movq	-232(%rbp), %rax
	movq	768(%rax), %rdx
	leaq	application_traffic.2(%rip), %r8
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-232(%rbp), %rax
	subq	$8, %rsp
	leaq	-200(%rbp), %rdi
	pushq	%rdi
	leaq	-192(%rbp), %rdi
	pushq	%rdi
	leaq	-224(%rbp), %rdi
	pushq	%rdi
	leaq	-184(%rbp), %rdi
	pushq	%rdi
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	leaq	-176(%rbp), %rdi
	pushq	%rdi
	pushq	$11
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	derive_secret_key_and_iv
	addq	$64, %rsp
	testl	%eax, %eax
	je	.L143
	movq	-48(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-200(%rbp), %r9
	movq	-232(%rbp), %rax
	movq	768(%rax), %r8
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rcx
	movq	-232(%rbp), %rax
	movl	72(%rax), %esi
	movq	-48(%rbp), %r11
	movq	-8(%rbp), %r10
	movl	-36(%rbp), %edx
	movq	-232(%rbp), %rax
	pushq	-32(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	%r9
	pushq	%r8
	pushq	$0
	pushq	$0
	pushq	%rdi
	leaq	-224(%rbp), %rdi
	pushq	%rdi
	pushq	%rcx
	leaq	-112(%rbp), %rcx
	pushq	%rcx
	movq	%r11, %r9
	movq	%r10, %r8
	movl	$3, %ecx
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L144
	movq	-232(%rbp), %rax
	movl	120(%rax), %eax
	cmpl	%eax, -236(%rbp)
	jne	.L139
	leaq	.LC18(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L140
.L139:
	leaq	.LC19(%rip), %rax
	movq	%rax, -16(%rbp)
.L140:
	movq	-48(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_log_secret@PLT
	testl	%eax, %eax
	je	.L145
	movl	$1, -20(%rbp)
	jmp	.L137
.L143:
	nop
	jmp	.L137
.L144:
	nop
	jmp	.L137
.L145:
	nop
.L137:
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-176(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	tls13_update_key, .-tls13_update_key
	.globl	tls13_alert_code
	.type	tls13_alert_code, @function
tls13_alert_code:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$109, -4(%rbp)
	je	.L147
	cmpl	$116, -4(%rbp)
	jne	.L148
.L147:
	movl	-4(%rbp), %eax
	jmp	.L149
.L148:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	tls1_alert_code@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	tls13_alert_code, .-tls13_alert_code
	.globl	tls13_export_keying_material
	.type	tls13_export_keying_material, @function
tls13_export_keying_material:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -16(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L158
	cmpq	$0, -16(%rbp)
	je	.L158
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_export_allowed@PLT
	testl	%eax, %eax
	je	.L158
	cmpl	$0, 24(%rbp)
	jne	.L154
	movq	$0, 16(%rbp)
.L154:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L159
	movq	16(%rbp), %rdx
	movq	-288(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L159
	leaq	-228(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L159
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L159
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L159
	movl	-228(%rbp), %eax
	movl	%eax, %ecx
	movl	-232(%rbp), %eax
	movl	%eax, %r10d
	movq	-248(%rbp), %rax
	leaq	1924(%rax), %rdi
	leaq	-224(%rbp), %r9
	movq	-280(%rbp), %r8
	movq	-272(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	$0
	pushq	%rcx
	leaq	-96(%rbp), %rcx
	pushq	%rcx
	pushq	%r10
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L159
	movl	-228(%rbp), %eax
	movl	%eax, %r8d
	leaq	-160(%rbp), %rdi
	leaq	exporterlabel.1(%rip), %rcx
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	$0
	pushq	-264(%rbp)
	pushq	-256(%rbp)
	pushq	%r8
	movq	%rdi, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L159
	movl	$1, -4(%rbp)
	jmp	.L153
.L158:
	nop
	jmp	.L153
.L159:
	nop
.L153:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	tls13_export_keying_material, .-tls13_export_keying_material
	.globl	tls13_export_keying_material_early
	.type	tls13_export_keying_material_early, @function
tls13_export_keying_material_early:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L169
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_export_early_allowed@PLT
	testl	%eax, %eax
	je	.L169
	movq	-248(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L164
	movq	-248(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L164
	movq	-248(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L164
	movq	-248(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_cipher@PLT
	movq	%rax, -16(%rbp)
	jmp	.L165
.L164:
	movq	-248(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get0_cipher@PLT
	movq	%rax, -16(%rbp)
.L165:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L170
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L170
	movq	16(%rbp), %rdx
	movq	-288(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L170
	leaq	-228(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L170
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L170
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L170
	movl	-228(%rbp), %eax
	movl	%eax, %ecx
	movl	-232(%rbp), %eax
	movl	%eax, %r10d
	movq	-248(%rbp), %rax
	leaq	1988(%rax), %rdi
	leaq	-224(%rbp), %r9
	movq	-280(%rbp), %r8
	movq	-272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	$0
	pushq	%rcx
	leaq	-96(%rbp), %rcx
	pushq	%rcx
	pushq	%r10
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L170
	movl	-228(%rbp), %eax
	movl	%eax, %r8d
	leaq	-160(%rbp), %rdi
	leaq	exporterlabel.0(%rip), %rcx
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	$0
	pushq	-264(%rbp)
	pushq	-256(%rbp)
	pushq	%r8
	movq	%rdi, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L170
	movl	$1, -4(%rbp)
	jmp	.L163
.L169:
	nop
	jmp	.L163
.L170:
	nop
.L163:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	tls13_export_keying_material_early, .-tls13_export_keying_material_early
	.section	.rodata
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 21
__func__.21:
	.string	"tls13_hkdf_expand_ex"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 18
__func__.20:
	.string	"tls13_hkdf_expand"
	.type	keylabel.19, @object
	.size	keylabel.19, 4
keylabel.19:
	.string	"key"
	.type	ivlabel.18, @object
	.size	ivlabel.18, 3
ivlabel.18:
	.string	"iv"
	.align 8
	.type	finishedlabel.17, @object
	.size	finishedlabel.17, 9
finishedlabel.17:
	.string	"finished"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 22
__func__.16:
	.string	"tls13_generate_secret"
	.align 8
	.type	derived_secret_label.15, @object
	.size	derived_secret_label.15, 8
derived_secret_label.15:
	.string	"derived"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 23
__func__.14:
	.string	"tls13_final_finish_mac"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 25
__func__.13:
	.string	"derive_secret_key_and_iv"
	.align 8
	.type	client_early_traffic.12, @object
	.size	client_early_traffic.12, 12
client_early_traffic.12:
	.string	"c e traffic"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 26
__func__.11:
	.string	"tls13_change_cipher_state"
	.align 8
	.type	early_exporter_master_secret.10, @object
	.size	early_exporter_master_secret.10, 13
early_exporter_master_secret.10:
	.string	"e exp master"
	.align 8
	.type	client_handshake_traffic.9, @object
	.size	client_handshake_traffic.9, 13
client_handshake_traffic.9:
	.string	"c hs traffic"
	.align 8
	.type	client_application_traffic.8, @object
	.size	client_application_traffic.8, 13
client_application_traffic.8:
	.string	"c ap traffic"
	.align 8
	.type	server_handshake_traffic.7, @object
	.size	server_handshake_traffic.7, 13
server_handshake_traffic.7:
	.string	"s hs traffic"
	.align 8
	.type	server_application_traffic.6, @object
	.size	server_application_traffic.6, 13
server_application_traffic.6:
	.string	"s ap traffic"
	.align 8
	.type	resumption_master_secret.5, @object
	.size	resumption_master_secret.5, 11
resumption_master_secret.5:
	.string	"res master"
	.align 8
	.type	exporter_master_secret.4, @object
	.size	exporter_master_secret.4, 11
exporter_master_secret.4:
	.string	"exp master"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"tls13_update_key"
	.align 8
	.type	application_traffic.2, @object
	.size	application_traffic.2, 12
application_traffic.2:
	.string	"traffic upd"
	.align 8
	.type	exporterlabel.1, @object
	.size	exporterlabel.1, 9
exporterlabel.1:
	.string	"exporter"
	.align 8
	.type	exporterlabel.0, @object
	.size	exporterlabel.0, 9
exporterlabel.0:
	.string	"exporter"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

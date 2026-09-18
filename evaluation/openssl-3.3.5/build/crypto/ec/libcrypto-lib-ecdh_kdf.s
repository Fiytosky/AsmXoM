	.file	"ecdh_kdf.c"
	.text
	.section	.rodata
.LC0:
	.string	"X963KDF"
.LC1:
	.string	"digest"
.LC2:
	.string	"key"
.LC3:
	.string	"info"
	.text
	.globl	ossl_ecdh_kdf_X9_63
	.type	ossl_ecdh_kdf_X9_63, @function
ossl_ecdh_kdf_X9_63:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L2
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-224(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
.L2:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ecdh_kdf_X9_63, .-ossl_ecdh_kdf_X9_63
	.globl	ECDH_KDF_X9_62
	.type	ECDH_KDF_X9_62, @function
ECDH_KDF_X9_62:
.LFB368:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ecdh_kdf_X9_63@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ECDH_KDF_X9_62, .-ECDH_KDF_X9_62
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"p12_key.c"
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
	.string	"../crypto/pkcs12/p12_key.c"
	.text
	.globl	PKCS12_key_gen_asc_ex
	.type	PKCS12_key_gen_asc_ex, @function
PKCS12_key_gen_asc_ex:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L6
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L7
.L6:
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_asc2uni@PLT
	testq	%rax, %rax
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524323, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L7:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	-64(%rbp), %r9d
	movl	-60(%rbp), %r8d
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_key_gen_uni_ex@PLT
	addq	$48, %rsp
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$37, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PKCS12_key_gen_asc_ex, .-PKCS12_key_gen_asc_ex
	.globl	PKCS12_key_gen_asc
	.type	PKCS12_key_gen_asc, @function
PKCS12_key_gen_asc:
.LFB516:
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
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r8d
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_key_gen_asc_ex@PLT
	addq	$48, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PKCS12_key_gen_asc, .-PKCS12_key_gen_asc
	.globl	PKCS12_key_gen_utf8_ex
	.type	PKCS12_key_gen_utf8_ex, @function
PKCS12_key_gen_utf8_ex:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L13
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L14
.L13:
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_utf82uni@PLT
	testq	%rax, %rax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524323, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L14:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	-64(%rbp), %r9d
	movl	-60(%rbp), %r8d
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_key_gen_uni_ex@PLT
	addq	$48, %rsp
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$67, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PKCS12_key_gen_utf8_ex, .-PKCS12_key_gen_utf8_ex
	.globl	PKCS12_key_gen_utf8
	.type	PKCS12_key_gen_utf8, @function
PKCS12_key_gen_utf8:
.LFB518:
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
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r8d
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_key_gen_utf8_ex@PLT
	addq	$48, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PKCS12_key_gen_utf8, .-PKCS12_key_gen_utf8
	.section	.rodata
.LC1:
	.string	"PKCS12KDF"
.LC2:
	.string	"digest"
.LC3:
	.string	"pass"
.LC4:
	.string	"salt"
.LC5:
	.string	"id"
.LC6:
	.string	"iter"
	.text
	.globl	PKCS12_key_gen_uni_ex
	.type	PKCS12_key_gen_uni_ex, @function
PKCS12_key_gen_uni_ex:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movl	%ecx, -320(%rbp)
	movl	%r8d, -332(%rbp)
	movl	%r9d, -336(%rbp)
	movl	$0, -20(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, 16(%rbp)
	jg	.L20
	movl	$0, %eax
	jmp	.L25
.L20:
	movq	48(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L25
.L22:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -48(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L25
.L23:
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-384(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-316(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-384(%rbp), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-320(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-384(%rbp), %rax
	movq	-328(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-384(%rbp), %rax
	leaq	-332(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-384(%rbp), %rax
	leaq	-336(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	$0, -56(%rbp)
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-304(%rbp), %rcx
	movq	24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, -20(%rbp)
	movq	$0, -64(%rbp)
.L24:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-20(%rbp), %eax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PKCS12_key_gen_uni_ex, .-PKCS12_key_gen_uni_ex
	.globl	PKCS12_key_gen_uni
	.type	PKCS12_key_gen_uni, @function
PKCS12_key_gen_uni:
.LFB520:
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
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r8d
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS12_key_gen_uni_ex@PLT
	addq	$48, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_key_gen_uni, .-PKCS12_key_gen_uni
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"PKCS12_key_gen_asc_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"PKCS12_key_gen_utf8_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

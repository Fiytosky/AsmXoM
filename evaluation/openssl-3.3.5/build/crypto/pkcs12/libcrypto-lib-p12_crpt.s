	.file	"p12_crpt.c"
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
	.globl	PKCS12_PBE_add
	.type	PKCS12_PBE_add, @function
PKCS12_PBE_add:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	PKCS12_PBE_add, .-PKCS12_PBE_add
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_crpt.c"
	.text
	.globl	PKCS12_PBE_keyivgen_ex
	.type	PKCS12_PBE_keyivgen_ex, @function
PKCS12_PBE_keyivgen_ex:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L15
.L7:
	call	PBEPARAM_it@PLT
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L15
.L9:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movl	$1, -4(%rbp)
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, -4(%rbp)
.L11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, %edi
	movl	-4(%rbp), %r9d
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-148(%rbp), %esi
	movq	-144(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	-176(%rbp)
	leaq	-112(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movl	$1, %r8d
	movq	%rax, %rdi
	call	PKCS12_key_gen_utf8_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
	movl	$0, %eax
	jmp	.L15
.L12:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	jle	.L13
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edi
	movl	-4(%rbp), %r9d
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-148(%rbp), %esi
	movq	-144(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	-176(%rbp)
	leaq	-128(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movl	$2, %r8d
	movq	%rax, %rdi
	call	PKCS12_key_gen_utf8_ex@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
	movl	$0, %eax
	jmp	.L15
.L13:
	movq	$0, -16(%rbp)
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
	movl	16(%rbp), %edi
	movq	-16(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	movl	%eax, -40(%rbp)
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-128(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-40(%rbp), %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	PKCS12_PBE_keyivgen_ex, .-PKCS12_PBE_keyivgen_ex
	.globl	PKCS12_PBE_keyivgen
	.type	PKCS12_PBE_keyivgen, @function
PKCS12_PBE_keyivgen:
.LFB572:
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
	call	PKCS12_PBE_keyivgen_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	PKCS12_PBE_keyivgen, .-PKCS12_PBE_keyivgen
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"PKCS12_PBE_keyivgen_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"cipher_aria_ccm_hw.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ccm_aria_initkey, @function
ccm_aria_initkey:
.LFB402:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rcx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	CRYPTO_ccm128_init@PLT
	movq	-24(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$2, %edx
	movb	%dl, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ccm_aria_initkey, .-ccm_aria_initkey
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ccm_aria, @object
	.size	ccm_aria, 48
ccm_aria:
	.quad	ccm_aria_initkey
	.quad	ossl_ccm_generic_setiv
	.quad	ossl_ccm_generic_setaad
	.quad	ossl_ccm_generic_auth_encrypt
	.quad	ossl_ccm_generic_auth_decrypt
	.quad	ossl_ccm_generic_gettag
	.text
	.globl	ossl_prov_aria_hw_ccm
	.type	ossl_prov_aria_hw_ccm, @function
ossl_prov_aria_hw_ccm:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ccm_aria(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_prov_aria_hw_ccm, .-ossl_prov_aria_hw_ccm
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

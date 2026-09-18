	.file	"cipher_aria_gcm_hw.c"
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
	.type	aria_gcm_initkey, @function
aria_gcm_initkey:
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
	addq	$704, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-24(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aria_gcm_initkey, .-aria_gcm_initkey
	.section	.data.rel.ro,"aw"
	.align 32
	.type	aria_gcm, @object
	.size	aria_gcm, 48
aria_gcm:
	.quad	aria_gcm_initkey
	.quad	ossl_gcm_setiv
	.quad	ossl_gcm_aad_update
	.quad	ossl_gcm_cipher_update
	.quad	ossl_gcm_cipher_final
	.quad	ossl_gcm_one_shot
	.text
	.globl	ossl_prov_aria_hw_gcm
	.type	ossl_prov_aria_hw_gcm, @function
ossl_prov_aria_hw_gcm:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_gcm(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_prov_aria_hw_gcm, .-ossl_prov_aria_hw_gcm
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
